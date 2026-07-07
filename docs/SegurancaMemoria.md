# Segurança de memória e alocação

[English](./en/MemorySafety.md) | **Português**

Este projeto usa C com alocação manual, portanto as implementações seguem um contrato simples:

- funções de criação retornam `0` ou `NULL` quando recebem parâmetros inválidos ou quando a alocação falha;
- funções de destruição aceitam ponteiros `NULL` e deixam estruturas reutilizáveis com ponteiros zerados, quando a estrutura é pública;
- operações que recebem uma estrutura já destruída recusam o uso quando `dados == NULL`, `matriz == NULL`, `adjacencias == NULL` ou `capacidade == 0`;
- tamanhos são validados antes de multiplicações como `capacidade * sizeof(int)` para evitar overflow de `size_t`;
- `realloc` sempre grava em um ponteiro temporário antes de atualizar a estrutura, preservando o buffer original em caso de falha;
- algoritmos com somas de pesos validam overflow de `int` antes de relaxar distâncias ou acumular peso total.

## Helper compartilhado

O arquivo [`include/memoria_segura.h`](../include/memoria_segura.h) concentra as checagens de tamanho usadas pelos módulos:

```c
memoria_multiplicacao_valida(quantidade, sizeof(Tipo))
memoria_dobro_valido(capacidade, &nova_capacidade)
```

Essas funções são `static inline` para poderem ser incluídas por qualquer módulo sem criar símbolos extras no link.

## Arquivos

Os módulos atuais não persistem dados em arquivos: não há uso de `fopen`, `fscanf`, `fprintf` para arquivos, nem buffers de caminho. As saídas existentes usam `printf` apenas para demonstração em `main.c`, testes e benchmarks.

Quando uma rotina de arquivo for adicionada, use este padrão mínimo:

- validar ponteiros de caminho e modo antes de chamar `fopen`;
- conferir retorno de `fopen`, `fread`, `fwrite`, `fprintf` e `fclose`;
- evitar `scanf`/`fscanf` sem largura máxima para strings;
- preferir `fgets` + conversão controlada para entrada textual;
- fechar o arquivo em todos os caminhos de erro.

## Como validar

Execute:

```sh
make test
make sanitize
```

`make test` compila todos os módulos com `-Wall -Wextra -Werror`. `make sanitize` executa os módulos configurados com AddressSanitizer e UndefinedBehaviorSanitizer.

Voltar para o [índice da documentação](./README.md).
