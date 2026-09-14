#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

# A documentação atual ainda contém links legados que apontam para arquivos
# fora de docs/. O build inicial mantém esses avisos visíveis sem tratá-los
# como falhas. Um PR posterior fará a normalização dos links e poderá
# reativar o modo estrito.
mkdocs build

echo "Site gerado em: $ROOT_DIR/site"
