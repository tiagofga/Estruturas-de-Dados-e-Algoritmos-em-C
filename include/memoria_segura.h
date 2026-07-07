#ifndef MEMORIA_SEGURA_H
#define MEMORIA_SEGURA_H

#include <stdint.h>
#include <stddef.h>

static inline int memoria_multiplicacao_valida(size_t quantidade, size_t tamanho_elemento) {
    return tamanho_elemento == 0U || quantidade <= SIZE_MAX / tamanho_elemento;
}

static inline int memoria_dobro_valido(size_t valor, size_t *resultado) {
    if (resultado == NULL || valor == 0U || valor > SIZE_MAX / 2U) {
        return 0;
    }

    *resultado = valor * 2U;
    return 1;
}

#endif
