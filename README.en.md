# Data Structures and Algorithms in C

[Português](./README.md) | **English**

[![CI](https://github.com/tiagofga/Estruturas-de-Dados-e-Algoritmos-em-C/actions/workflows/ci.yml/badge.svg)](https://github.com/tiagofga/Estruturas-de-Dados-e-Algoritmos-em-C/actions/workflows/ci.yml)
![release](https://img.shields.io/badge/release-v0.5.0-orange)
[![license](https://img.shields.io/badge/license-Apache--2.0-blue.svg)](./LICENSE)
![C](https://img.shields.io/badge/C-language-brightgreen)
![gcc](https://img.shields.io/badge/GCC-7%2B-informational)
[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg)](../../issues)
<br>
[![issues welcome](https://img.shields.io/badge/issues-welcome-brightgreen.svg)](../../issues)

Educational repository with implementations of data structures and algorithms in C, including fundamental and advanced structures, executable examples, automated tests, module-level documentation, practical exercises, test coverage, and benchmarks.

> **Tip:** choosing the right data structure is as important as choosing the right algorithm.
> Each structure has its own operations, costs, and complexity trade-offs.

---

## Implemented structures and algorithms

| Module | Documentation | Description | Main complexity |
|--------|---------------|-------------|-----------------|
| [ADT](./TAD) | [docs/en/TAD.md](./docs/en/TAD.md) | Abstract Data Type — interface vs. implementation | — |
| [List](./Lista) | [docs/en/List.md](./docs/en/List.md) | Dynamic sequential list, static version, linear/binary search, and configurable sorting | O(1) end insertion, O(n) middle operations |
| [SinglyLinkedList](./ListaEncadeada) | [docs/en/LinkedLists.md](./docs/en/LinkedLists.md) | Singly linked list | O(1) front insertion, O(n) search/removal |
| [DoublyLinkedList](./ListaDuplamenteEncadeada) | [docs/en/LinkedLists.md](./docs/en/LinkedLists.md) | Doubly linked list | O(1) front/back insertion, O(n) search/removal |
| [Queue](./Fila) | [docs/en/Queue.md](./docs/en/Queue.md) | Dynamic circular queue (FIFO) and static version, both with fixed capacity | O(1) enqueue/dequeue |
| [Stack](./Pilha) | [docs/en/Stack.md](./docs/en/Stack.md) | Dynamic sequential stack (LIFO) and static version, both with fixed capacity | O(1) push/pop |
| [HashTable](./TabelaHash) | [docs/en/HashTable.md](./docs/en/HashTable.md) | Opaque hash table with separate chaining | O(1) average, O(n) worst case |
| [Heap](./Heap) | [docs/en/Heap.md](./docs/en/Heap.md) | Dynamic max heap, priority queue, and heap sort | O(1) peek, O(log n) insert/remove |
| [Tree](./Árvore) / [Arvore](./Arvore) | [docs/en/Tree.md](./docs/en/Tree.md) | Binary Search Tree (BST) + AVL/Red-Black concepts | O(log n) average, O(n) worst case |
| [AVL](./AVL) | [docs/en/AVL.md](./docs/en/AVL.md) | Opaque AVL tree with insertion, removal, rotations, and automatic balancing | O(log n) search/insert/remove |
| [Graph](./Grafo) | [docs/en/Graph.md](./docs/en/Graph.md) | Graph using an adjacency matrix, positive weights, BFS/DFS/Dijkstra, and topological sort | O(1) edge lookup |
| [AdjacencyListGraph](./GrafoListaAdjacencia) | [docs/en/AdjacencyListGraph.md](./docs/en/AdjacencyListGraph.md) | Graph using adjacency lists, positive weights, BFS/DFS, and Dijkstra | O(V + E) BFS/DFS |
| [GraphAlgorithms](./AlgoritmosGrafos) | [docs/en/AdvancedGraphAlgorithms.md](./docs/en/AdvancedGraphAlgorithms.md) | Classic algorithms: Union-Find, Kruskal, Prim, Bellman-Ford, and Floyd-Warshall | O(E log E), O(VE), O(V³) |
| [Sorting Methods](./Métodos%20de%20Ordenação) / [MetodosOrdenacao](./MetodosOrdenacao) | [docs/en/SortingMethods.md](./docs/en/SortingMethods.md) | Bubble, Insertion, Selection, Merge, Quick, and Heap Sort | O(n²) to O(n log n) |
| [Search Methods](./Métodos%20de%20Busca) / [MetodosBusca](./MetodosBusca) | [docs/en/SearchMethods.md](./docs/en/SearchMethods.md) | Linear, Binary, Jump, Interpolation, and Exponential Search | O(n) to O(log n) |
| [Computational Cost and Complexity](./Custo%20Computacional%20e%20Complexidade) | [docs/en/ComputationalCost.md](./docs/en/ComputationalCost.md) | Time/space cost, growth rates, and asymptotic analysis | O(1) to O(2ⁿ) |

---

## Module status

| Module | Build | Tests | Sanitizer | Coverage | Benchmark | PT/EN docs |
|--------|-------|-------|-----------|----------|-----------|------------|
| List/Queue/Stack | CI | CI | — | — | — | Yes |
| Heap | CI | CI | CI | CI | — | Yes |
| HashTable | CI | CI | CI | CI | CI | Yes |
| Singly/Doubly linked lists | CI | CI | CI | CI | — | Yes |
| Tree / AVL | CI | CI | AVL | AVL | AVL | Yes |
| Graph / AdjacencyListGraph | CI | CI | AdjacencyListGraph | AdjacencyListGraph | — | Yes |
| GraphAlgorithms | CI | CI | CI | CI | CI | Yes |
| Search / Sorting | CI | CI | — | — | — | Yes |

---

## Technical quality

- `AVL` uses an opaque node type in the public header.
- `TabelaHash` uses an opaque ADT in the public header.
- `UnionFind` uses an opaque ADT in the public header of `AlgoritmosGrafos`.
- Allocation-sensitive modules validate allocation sizes and destroyed states before use.
- `make coverage` generates a `gcov` report for new and advanced modules.
- `make benchmark` runs a CSV benchmark in `benchmarks/`.
- Legacy modules with accents/spaces have ASCII aliases: `Arvore`, `MetodosOrdenacao`, and `MetodosBusca`.

---

## Prerequisites

- GCC 7 or newer
- GNU Make
- `gcov`, for test coverage

```bash
gcc --version
make --version
gcov --version
```

---

## Repository layout

| Path | Contents |
|------|----------|
| `*/include/` | Public headers for each module |
| `*/src/` | Implementations and executable examples |
| `*/tests/` | Automated tests per module |
| `docs/` | Complete Portuguese documentation |
| `docs/en/` | English documentation |
| `exercicios/` | Practice exercises by topic |
| `benchmarks/` | Consolidated CSV benchmark |
| `scripts/` | Helper scripts for coverage |

---

## Usage

### Clone the repository

```bash
git clone https://github.com/tiagofga/Estruturas-de-Dados-e-Algoritmos-em-C.git
cd Estruturas-de-Dados-e-Algoritmos-em-C
```

### Build and test the whole project

```bash
make
make test
make sanitize
make coverage
make benchmark
make clean
```

### Build and run one module

```bash
cd AlgoritmosGrafos  # or TabelaHash, ListaEncadeada, GrafoListaAdjacencia, AVL etc.
make
make run
make test
make clean
```

---

## Documentation

The [`docs/`](./docs) folder contains the main Portuguese documentation. The English version is available in [`docs/en/`](./docs/en), with equivalent or summarized reference pages depending on the module.

- [ADT — Abstract Data Type](./docs/en/TAD.md)
- [Dynamic sequential list](./docs/en/List.md)
- [Linked lists](./docs/en/LinkedLists.md)
- [Circular queue](./docs/en/Queue.md)
- [Sequential stack](./docs/en/Stack.md)
- [Hash table](./docs/en/HashTable.md)
- [Max heap and priority queue](./docs/en/Heap.md)
- [Binary Search Tree](./docs/en/Tree.md)
- [AVL](./docs/en/AVL.md)
- [Graph with adjacency matrix](./docs/en/Graph.md)
- [Graph with adjacency list](./docs/en/AdjacencyListGraph.md)
- [Advanced graph algorithms](./docs/en/AdvancedGraphAlgorithms.md)
- [Benchmarks](./docs/Benchmarks.md)
- [Makefiles and build pattern](./docs/en/Makefiles.md)
- [ASCII aliases](./docs/AliasesASCII.md)
- [Complexity and Big-O](./docs/en/Algorithms.md)
- [Computational cost and complexity](./docs/en/ComputationalCost.md)
- [Search methods for arrays](./docs/en/SearchMethods.md)
- [Sorting methods for arrays](./docs/en/SortingMethods.md)
- [Static vs. dynamic list/queue/stack](./docs/en/StaticVsDynamic.md)
- [Memory safety and allocation](./docs/en/MemorySafety.md)
- [Module naming policy](./docs/PadraoNomes.md)

## Exercises and course plan

- [Exercises by module](./exercicios/README.md)
- [Suggested weekly course plan](./docs/RoteiroAulas.md)

---

## Automated tests

Automated tests are organized in each module's `tests/` directory. The CI builds and tests all implemented modules, runs sanitizer tests, generates coverage artifacts, and executes benchmarks.

---

## Contributing

1. Fork the repository.
2. Create a descriptive branch: `git checkout -b feat/my-structure`.
3. Follow the existing directory layout.
4. Use ASCII names, without accents and without spaces, for new modules.
5. Add tests in `tests/`.
6. Ensure `make`, `make test`, `make sanitize`, `make coverage`, and `make benchmark` pass when applicable.
7. Open a pull request describing the changes.

Found a bug or have a suggestion? [Open an issue.](../../issues/new/choose)

---

## License

Distributed under the **Apache 2.0** license. See [LICENSE](./LICENSE) for more information.
