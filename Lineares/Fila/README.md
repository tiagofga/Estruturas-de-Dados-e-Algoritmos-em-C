# Fila

Implementação de **fila circular** em C (FIFO: First In, First Out).

Também inclui versão estática em `src/fila_estatica.c` e exemplo em `src/main_estatica.c`.

## Operações implementadas

- criar e destruir fila
- verificar se está vazia ou cheia
- enfileirar
- desenfileirar
- consultar frente
- imprimir fila

## Documentação

- [Referência completa em português](../../docs/Fila.md)
- [English reference](../../docs/en/Queue.md)
- [Estática vs dinâmica](../../docs/EstaticoVsDinamico.md)
- [Segurança de memória](../../docs/SegurancaMemoria.md)

## Executar

```bash
cd Lineares/Fila
make
make run
make run_static
make test
make clean
```
