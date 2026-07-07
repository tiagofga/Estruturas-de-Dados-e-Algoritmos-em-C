# Grafo

Implementação de grafo com **matriz de adjacência** em C, com suporte a:

- **grafo não direcionado**
- **grafo direcionado**
- algoritmos clássicos: **BFS**, **DFS**, **Dijkstra** e **ordenação topológica** (DAG).

## Operações implementadas

- criar e destruir grafo
- criar grafo direcionado
- adicionar aresta
- remover aresta
- verificar existência de aresta
- BFS (busca em largura)
- DFS (busca em profundidade)
- Dijkstra (menor caminho com pesos não negativos)
- ordenação topológica
- imprimir matriz de adjacência

## Documentação

- [Referência completa em português](../docs/Grafo.md)
- [English reference](../docs/en/Graph.md)
- [Grafo com lista de adjacência](../docs/GrafoListaAdjacencia.md)
- [Segurança de memória](../docs/SegurancaMemoria.md)

## Executar

```bash
cd Grafo
make
make run
make test
make clean
```
