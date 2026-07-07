# Makefiles do projeto

[English](./en/Makefiles.md) | **Português**

Os Makefiles deste repositório seguem um padrão modular: cada estrutura ou algoritmo possui seu próprio `Makefile`, e o `Makefile` da raiz orquestra `make`, `make test`, `make sanitize`, `make coverage`, `make benchmark` e `make clean` entre os módulos.

## Referências externas

Estes Makefiles-base servem como referência histórica e didática para a organização dos módulos:

- [Makefile-base para C++](https://gist.github.com/tiagofga/ff3ff4bac6b6756ef4095bd221d56ce8): compila fontes em `src/*.cpp`, gera objetos em `build/objects`, cria o executável em `build/app` e define alvos como `debug`, `release`, `clean` e `run`.
- [Makefile-base para C](https://gist.github.com/tiagofga/1f5dd8a81fd5175d72d8d1d0b87f7442): usa a mesma organização de `build/`, `objects`, `include/`, `src/` e alvos básicos, mas voltada para fontes `src/*.c`.

## Padrão usado aqui

Os módulos atuais evoluem esse modelo base com:

- `TEST_SRC` e `test_runner` para testes automatizados;
- separação entre objetos de biblioteca e `main.c`;
- alvos `sanitize`, `coverage` e `benchmark` nos módulos aplicáveis;
- aliases ASCII para módulos antigos com acentos ou espaços;
- flags rigorosas: `-pedantic-errors -Wall -Wextra -Werror`.

Para novos módulos, prefira nomes ASCII sem espaços e siga a estrutura:

```text
Modulo/
├── include/
├── src/
├── tests/
└── Makefile
```

Voltar para o [índice da documentação](./README.md).
