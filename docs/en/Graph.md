# Graph — Adjacency Matrix and Graph Algorithms

[Português](../Grafo.md) | **English**

## Overview

Implementation of a graph in C using an **adjacency matrix**. The module supports directed and undirected graphs, unweighted and positively weighted edges, and basic graph algorithms.

The adjacency matrix representation provides O(1) edge lookup, but uses O(V²) memory, where `V` is the number of vertices.

---

## Data structure

```c
/* include/grafo.h */
typedef struct {
    size_t vertices;
    int direcionado;
    int **matriz;
} Grafo;
```

The graph stores the number of vertices, whether it is directed, and an adjacency matrix. In the matrix, `0` means “no edge” and any positive value is the edge weight. For unweighted edges, the stored weight is `1`.

---

## Main operations

```c
int grafo_criar(Grafo *grafo, size_t vertices);
int grafo_criar_direcionado(Grafo *grafo, size_t vertices, int direcionado);
void grafo_destruir(Grafo *grafo);
int grafo_adicionar_aresta(Grafo *grafo, size_t origem, size_t destino);
int grafo_adicionar_aresta_ponderada(Grafo *grafo, size_t origem, size_t destino, int peso);
int grafo_remover_aresta(Grafo *grafo, size_t origem, size_t destino);
int grafo_tem_aresta(const Grafo *grafo, size_t origem, size_t destino);
int grafo_bfs(const Grafo *grafo, size_t inicio, size_t *ordem, size_t capacidade, size_t *visitados);
int grafo_dfs(const Grafo *grafo, size_t inicio, size_t *ordem, size_t capacidade, size_t *visitados);
int grafo_dijkstra(const Grafo *grafo, size_t origem, int *distancias, size_t capacidade);
int grafo_ordenacao_topologica(const Grafo *grafo, size_t *ordem, size_t capacidade, size_t *tamanho_ordem);
void grafo_imprimir(const Grafo *grafo);
```

---

## Edge operations

### `grafo_adicionar_aresta`

Adds an unweighted edge with weight `1`. It is a shortcut for `grafo_adicionar_aresta_ponderada(..., 1)`.

### `grafo_adicionar_aresta_ponderada`

Adds an edge with a positive integer weight.

- Weight must be greater than zero.
- In undirected graphs, both directions receive the same weight.
- This function is used by Dijkstra's algorithm.

### `grafo_tem_aresta`

Returns the stored edge weight, or `0` when the edge does not exist or the parameters are invalid.

---

## Algorithms

### Breadth-First Search (BFS)

Visits vertices level by level from a source vertex and writes the visit order to `ordem`.

- **Complexity with adjacency matrix**: O(V²)

### Depth-First Search (DFS)

Explores each branch as deeply as possible before backtracking and writes the visit order to `ordem`.

- **Complexity with adjacency matrix**: O(V²)

### Dijkstra

Computes shortest paths from a source vertex using positive edge weights.

- **Complexity with adjacency matrix**: O(V²)
- Does not support negative weights.

### Topological sort

Computes a valid topological ordering for directed acyclic graphs (DAGs).

- **Complexity with adjacency matrix**: O(V²)

---

## Complexity summary

| Operation | Complexity |
|-----------|------------|
| Edge lookup | O(1) |
| Add/remove edge | O(1) |
| BFS | O(V²) |
| DFS | O(V²) |
| Dijkstra | O(V²) |
| Topological sort | O(V²) |
| Memory usage | O(V²) |

---

## Matrix vs. Adjacency List

| Aspect | Matrix | List |
|--------|--------|------|
| Space | O(V²) | O(V + E) |
| Edge lookup | O(1) | O(degree) |
| Neighbor iteration | O(V) | O(degree) |
| Best fit | Dense graphs | Sparse graphs |

The repository also includes [AdjacencyListGraph](./AdjacencyListGraph.md) for sparse graphs.

---

Back to the [documentation index](./README.md).
