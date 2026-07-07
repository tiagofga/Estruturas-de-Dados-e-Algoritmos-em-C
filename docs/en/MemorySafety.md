# Memory Safety and Allocation

[Português](../SegurancaMemoria.md) | **English**

This project uses C with manual allocation, so implementations follow a small contract:

- creation functions return `0` or `NULL` for invalid parameters or allocation failures;
- destroy functions accept `NULL` pointers and reset public structures to a reusable empty state;
- operations on destroyed structures are rejected when `dados == NULL`, `matriz == NULL`, `adjacencias == NULL`, or `capacidade == 0`;
- sizes are checked before multiplications such as `capacidade * sizeof(int)` to avoid `size_t` overflow;
- `realloc` always writes to a temporary pointer before updating the structure, preserving the original buffer on failure;
- weighted graph algorithms check `int` overflow before relaxing distances or accumulating total weight.

## Shared Helper

[`include/comum/memoria_segura.h`](../../include/comum/memoria_segura.h) centralizes the size checks used by the modules:

```c
memoria_multiplicacao_valida(quantidade, sizeof(Tipo))
memoria_dobro_valido(capacidade, &nova_capacidade)
memoria_alocar_vetor(quantidade, sizeof(Tipo))
memoria_alocar_vetor_zero(quantidade, sizeof(Tipo))
memoria_realocar_vetor(ptr, quantidade, sizeof(Tipo))
```

These functions are `static inline`, so any module can include them without adding extra linker symbols.

## Files

The current modules do not persist data to files: there is no `fopen`, `fscanf`, file `fprintf`, or path buffer handling. Existing output uses `printf` only for demos in `main.c`, tests, and benchmarks.

When file routines are added, use this minimum pattern:

- validate path and mode pointers before calling `fopen`;
- check the return value of `fopen`, `fread`, `fwrite`, `fprintf`, and `fclose`;
- avoid `scanf`/`fscanf` without maximum string widths;
- prefer `fgets` plus controlled conversion for text input;
- close the file on every error path.

## Validation

Run:

```sh
make test
make sanitize
```

`make test` builds every module with `-Wall -Wextra -Werror`. `make sanitize` runs the configured modules with AddressSanitizer and UndefinedBehaviorSanitizer.

Back to the [documentation index](./README.md).
