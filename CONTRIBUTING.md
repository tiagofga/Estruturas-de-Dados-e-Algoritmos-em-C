# Contribuindo

Este repositório adota um fluxo baseado em branches e Pull Requests (PRs).

## Regra principal

Alterações não devem ser feitas diretamente na branch principal. Todo desenvolvimento deve ocorrer em uma branch própria e ser integrado por Pull Request.

## Fluxo de trabalho

1. Atualize a branch principal local.
2. Crie uma branch descritiva a partir da branch principal.
3. Faça alterações pequenas e coesas.
4. Use Conventional Commits.
5. Execute os testes e verificações aplicáveis.
6. Envie a branch para o GitHub.
7. Abra um Pull Request.
8. Aguarde as verificações automáticas antes do merge.

Exemplo:

```bash
git checkout master
git pull
git checkout -b feat/minha-alteracao

# alterações

git add .
git commit -m "feat(modulo): descricao da alteracao"
git push -u origin feat/minha-alteracao
```

## Nomes de branches

Use nomes curtos e descritivos:

- `feat/<descricao>` - nova funcionalidade;
- `fix/<descricao>` - correção;
- `docs/<descricao>` - documentação;
- `content/<descricao>` - conteúdo didático;
- `refactor/<descricao>` - reorganização sem mudança funcional;
- `test/<descricao>` - testes;
- `chore/<descricao>` - manutenção e infraestrutura.

## Conventional Commits

Formato:

```text
<tipo>(<escopo>): <descrição>
```

Exemplos:

```text
feat(avl): add rotation visualizer
fix(hash): handle duplicate keys
docs(grafos): improve adjacency list explanation
test(heap): add removal edge cases
chore(ci): update validation workflow
```

## Antes de abrir o Pull Request

Quando aplicável, execute:

```bash
make
make test
make sanitize
make coverage
```

O Pull Request deve explicar o objetivo da alteração, indicar como ela foi validada e registrar impactos relevantes.

## Branch principal

A branch principal deve ser protegida no GitHub com exigência de Pull Request antes do merge. Pushes diretos e force pushes não fazem parte do fluxo normal de desenvolvimento.
