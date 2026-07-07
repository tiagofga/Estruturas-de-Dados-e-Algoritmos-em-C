#ifndef COMUM_MEMORIA_SEGURA_H
#define COMUM_MEMORIA_SEGURA_H

#include <stdint.h>
#include <stddef.h>
#include <stdlib.h>

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

static inline void *memoria_alocar_vetor(size_t quantidade, size_t tamanho_elemento) {
    if (quantidade == 0U || tamanho_elemento == 0U ||
        !memoria_multiplicacao_valida(quantidade, tamanho_elemento)) {
        return NULL;
    }

    return malloc(quantidade * tamanho_elemento);
}

static inline void *memoria_alocar_vetor_zero(size_t quantidade, size_t tamanho_elemento) {
    if (quantidade == 0U || tamanho_elemento == 0U ||
        !memoria_multiplicacao_valida(quantidade, tamanho_elemento)) {
        return NULL;
    }

    return calloc(quantidade, tamanho_elemento);
}

static inline void *memoria_realocar_vetor(void *ponteiro, size_t quantidade, size_t tamanho_elemento) {
    if (quantidade == 0U || tamanho_elemento == 0U ||
        !memoria_multiplicacao_valida(quantidade, tamanho_elemento)) {
        return NULL;
    }

    return realloc(ponteiro, quantidade * tamanho_elemento);
}

#endif
