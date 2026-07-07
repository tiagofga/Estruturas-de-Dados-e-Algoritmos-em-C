.RECIPEPREFIX := >
CC      := gcc
CCFLAGS := -pedantic-errors -Wall -Wextra -Werror -O2
INCLUDE := -I../Arvores/AVL/include -I../Hash/TabelaHash/include -I../Grafos/AlgoritmosGrafos/include -I../include
LDFLAGS := -lm
BUILD   := ./build
TARGET  := benchmark
SRC     := benchmark.c ../Arvores/AVL/src/avl.c ../Hash/TabelaHash/src/tabela_hash.c ../Grafos/AlgoritmosGrafos/src/algoritmos_grafos.c

.PHONY: all run clean

all:
>@mkdir -p $(BUILD)
>$(CC) $(CCFLAGS) $(INCLUDE) -o $(BUILD)/$(TARGET) $(SRC) $(LDFLAGS)

run: all
>$(BUILD)/$(TARGET)

clean:
>-@rm -rvf $(BUILD)
