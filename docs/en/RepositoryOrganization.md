# Repository Organization

[Português](../OrganizacaoRepositorio.md) | **English**

The repository uses a modular layout: each data structure or algorithm family has its own directory, with a public header, implementation, executable example, and tests when applicable. Shared code lives outside the modules to avoid duplication and make common infrastructure explicit.

## Main layout

| Path | Role |
|------|------|
| `Makefile` | Orchestrates build, tests, sanitizers, coverage, benchmarks, and cleanup for the whole project |
| `Fundamentos/` | Base concepts, such as ADT |
| `Lineares/` | List, linked lists, queue, and stack |
| `Arvores/` | Binary Search Tree, ASCII alias, and AVL |
| `Grafos/` | Graph representations and classic algorithms |
| `Heaps/` | Max heap, priority queue, and module-level Heap Sort |
| `Hash/` | Hash table |
| `Ordenacao/` | Sorting methods and ASCII alias |
| `Busca/` | Search methods and ASCII alias |
| `Complexidade/` | Introductory explanation dedicated to computational cost and Big-O |
| `include/comum/` | Shared helpers between modules, such as allocation and size-overflow validation |
| `*/include/` | Public interface for each module |
| `*/src/` | Module implementation and executable example |
| `*/tests/` | Automated tests for the module |
| `docs/` | Portuguese documentation |
| `docs/en/` | English documentation |
| `exercicios/` | Practical exercises by topic |
| `benchmarks/` | Consolidated benchmark and CSV output |
| `scripts/` | Helper scripts, such as coverage generation |

## Separation rules

- Put functions reused by more than one module in `include/comum/`.
- Keep module-specific helper functions as `static` functions inside the module `.c` file.
- Expose only the contract required by module users in public headers.
- Avoid duplicating allocation, vector-growth, node-creation, or index-validation logic.
- Group new modules by conceptual family before creating root-level directories.
- For new modules, use ASCII names without spaces or accents, following the [module naming policy](../PadraoNomes.md).

## Current conventions

- Legacy modules with accents or spaces have ASCII aliases documented in [ASCII aliases](../AliasesASCII.md).
- The modular build pattern is documented in [Makefiles](./Makefiles.md).
- Allocation and destruction rules are documented in [Memory safety](./MemorySafety.md).

Back to the [documentation index](./README.md).
