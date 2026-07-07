# Organização do repositório

[English](./en/RepositoryOrganization.md) | **Português**

O repositório segue uma organização modular: cada estrutura ou família de algoritmos tem seu próprio diretório, com header público, implementação, exemplo e testes quando aplicável. O código compartilhado fica fora dos módulos para evitar duplicação e deixar claro o que é infraestrutura comum.

## Estrutura principal

| Caminho | Papel |
|---------|-------|
| `Makefile` | Orquestra build, testes, sanitizers, cobertura, benchmarks e limpeza do projeto inteiro |
| `Fundamentos/` | Conceitos-base, como TAD |
| `Lineares/` | Lista, listas encadeadas, fila e pilha |
| `Arvores/` | Árvore Binária de Busca, alias ASCII e AVL |
| `Grafos/` | Representações de grafos e algoritmos clássicos |
| `Heaps/` | Heap máximo, fila de prioridade e Heap Sort relacionado ao módulo |
| `Hash/` | Tabela hash |
| `Ordenacao/` | Métodos de ordenação e alias ASCII |
| `Busca/` | Métodos de busca e alias ASCII |
| `Complexidade/` | Explicação introdutória dedicada a custo computacional e Big-O |
| `include/comum/` | Helpers compartilhados entre módulos, como validação de alocação e overflow de tamanho |
| `*/include/` | Interface pública de cada módulo |
| `*/src/` | Implementação do módulo e exemplo executável |
| `*/tests/` | Testes automatizados do módulo |
| `docs/` | Documentação em português |
| `docs/en/` | Documentação em inglês |
| `exercicios/` | Exercícios práticos separados por tema |
| `benchmarks/` | Benchmark consolidado e saída CSV |
| `scripts/` | Scripts auxiliares, como geração de cobertura |

## Regras de separação

- Coloque funções reutilizadas por mais de um módulo em `include/comum/`.
- Mantenha funções auxiliares específicas como `static` dentro do `.c` do próprio módulo.
- Exponha no header público apenas o contrato necessário para quem usa o módulo.
- Evite duplicar lógica de alocação, crescimento de vetor, criação de nó ou validação de índices.
- Agrupe novos módulos pela família conceitual antes de criar diretórios no nível raiz.
- Para novos módulos, use nomes ASCII, sem espaços e sem acentos, seguindo a [política de nomes](./PadraoNomes.md).

## Convenções atuais

- Módulos antigos com acentos ou espaços têm aliases ASCII documentados em [Aliases ASCII](./AliasesASCII.md).
- O padrão de build modular está documentado em [Makefiles](./Makefiles.md).
- As regras de alocação e destruição estão em [Segurança de memória](./SegurancaMemoria.md).

Voltar para o [índice da documentação](./README.md).
