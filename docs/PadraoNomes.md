# Política de nomes de módulos

## Objetivo

A partir desta versão, novos módulos devem usar nomes compatíveis com diferentes sistemas operacionais, terminais, scripts e ferramentas de CI.

## Padrão recomendado

Use nomes:

- em ASCII;
- sem acentos;
- sem espaços;
- em PascalCase para diretórios de módulos.

Exemplos recomendados:

- `TabelaHash`
- `ListaEncadeada`
- `ListaDuplamenteEncadeada`
- `GrafoListaAdjacencia`
- `AVL`
- `Complexidade`

## Módulos antigos

Alguns módulos antigos ainda usam acentos ou espaços, como:

- `Árvore`
- `Métodos de Ordenação`
- `Métodos de Busca`

Eles foram mantidos dentro de categorias com aliases ASCII quando necessário. Novos módulos devem entrar na categoria adequada, por exemplo `Lineares/`, `Arvores/`, `Grafos/`, `Ordenacao/`, `Busca/` ou `Complexidade/`.

## Justificativa

Nomes sem acentos e sem espaços reduzem problemas com:

- shells diferentes;
- scripts de build;
- GitHub Actions;
- Windows/Linux/macOS;
- ferramentas que não lidam bem com codificação UTF-8.
