#!/usr/bin/env bash
set -euo pipefail

modules=(
  "Heaps/Heap"
  "Hash/TabelaHash"
  "Lineares/ListaEncadeada"
  "Lineares/ListaDuplamenteEncadeada"
  "Grafos/GrafoListaAdjacencia"
  "Arvores/AVL"
  "Grafos/AlgoritmosGrafos"
)

coverage_flags="-pedantic-errors -Wall -Wextra -Werror -g -O0 --coverage"
coverage_ldflags="-lm --coverage"

rm -rf coverage
mkdir -p coverage/gcov

echo "== Coverage report ==" | tee coverage/summary.txt
for module in "${modules[@]}"; do
  echo "-- ${module} --" | tee -a coverage/summary.txt
  make -C "${module}" clean >/dev/null
  log_name=${module//\//-}
  make -C "${module}" test CCFLAGS="${coverage_flags}" LDFLAGS="${coverage_ldflags}" >/tmp/coverage-${log_name}.log 2>&1

  if command -v gcov >/dev/null 2>&1; then
    (
      cd "${module}"
      find build/objects/src -name '*.gcda' -print0 \
        | xargs -0 -r gcov -o build/objects/src
    ) | tee -a coverage/summary.txt >/dev/null || true

    find "${module}" -maxdepth 1 -name '*.gcov' -exec mv {} coverage/gcov/ \; 2>/dev/null || true
  fi

  make -C "${module}" clean >/dev/null
  echo "coverage: completed" | tee -a coverage/summary.txt
done

echo "Coverage artifacts written to coverage/" | tee -a coverage/summary.txt
