.RECIPEPREFIX := >

MODULES := Lineares/Lista Lineares/Fila Lineares/Pilha Arvores/Arvore Grafos/Grafo Heaps/Heap Hash/TabelaHash Lineares/ListaEncadeada Lineares/ListaDuplamenteEncadeada Grafos/GrafoListaAdjacencia Arvores/AVL Grafos/AlgoritmosGrafos Ordenacao/MetodosOrdenacao Busca/MetodosBusca
SANITIZE_MODULES := Hash/TabelaHash Lineares/ListaEncadeada Lineares/ListaDuplamenteEncadeada Grafos/GrafoListaAdjacencia Arvores/AVL Heaps/Heap Grafos/AlgoritmosGrafos

.PHONY: all test sanitize coverage benchmark clean \
        run-lista run-fila run-pilha run-arvore run-grafo run-heap \
        run-tabela-hash run-lista-encadeada run-lista-dupla run-grafo-lista run-avl run-algoritmos-grafos \
        run-ordenacao run-busca

all:
>@for module in $(MODULES); do $(MAKE) -C "$$module" || exit 1; done

test:
>@for module in $(MODULES); do $(MAKE) -C "$$module" test || exit 1; done

sanitize:
>@for module in $(SANITIZE_MODULES); do $(MAKE) -C "$$module" sanitize || exit 1; done

coverage:
>bash scripts/coverage.sh

benchmark:
>$(MAKE) -C benchmarks run

clean:
>@for module in $(MODULES); do $(MAKE) -C "$$module" clean || exit 1; done
>-@$(MAKE) -C benchmarks clean
>-@rm -rf coverage

run-lista:
>$(MAKE) -C Lineares/Lista run

run-fila:
>$(MAKE) -C Lineares/Fila run

run-pilha:
>$(MAKE) -C Lineares/Pilha run

run-arvore:
>$(MAKE) -C Arvores/Arvore run

run-grafo:
>$(MAKE) -C Grafos/Grafo run

run-heap:
>$(MAKE) -C Heaps/Heap run

run-tabela-hash:
>$(MAKE) -C Hash/TabelaHash run

run-lista-encadeada:
>$(MAKE) -C Lineares/ListaEncadeada run

run-lista-dupla:
>$(MAKE) -C Lineares/ListaDuplamenteEncadeada run

run-grafo-lista:
>$(MAKE) -C Grafos/GrafoListaAdjacencia run

run-avl:
>$(MAKE) -C Arvores/AVL run

run-algoritmos-grafos:
>$(MAKE) -C Grafos/AlgoritmosGrafos run

run-ordenacao:
>$(MAKE) -C Ordenacao/MetodosOrdenacao run

run-busca:
>$(MAKE) -C Busca/MetodosBusca run
