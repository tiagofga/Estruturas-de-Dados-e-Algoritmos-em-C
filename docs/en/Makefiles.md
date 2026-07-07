# Project Makefiles

[Português](../Makefiles.md) | **English**

The Makefiles in this repository follow a modular pattern: each data structure or algorithm has its own `Makefile`, and the root `Makefile` orchestrates `make`, `make test`, `make sanitize`, `make coverage`, `make benchmark`, and `make clean` across modules.

## External References

These base Makefiles are used as historical and educational references for the module layout:

- [Base Makefile for C++](https://gist.github.com/tiagofga/ff3ff4bac6b6756ef4095bd221d56ce8): compiles sources in `src/*.cpp`, writes objects to `build/objects`, creates the executable in `build/app`, and defines targets such as `debug`, `release`, `clean`, and `run`.
- [Base Makefile for C](https://gist.github.com/tiagofga/1f5dd8a81fd5175d72d8d1d0b87f7442): uses the same `build/`, `objects`, `include/`, `src/`, and basic target layout, but targets `src/*.c` sources.

## Pattern Used Here

The current modules extend that base model with:

- `TEST_SRC` and `test_runner` for automated tests;
- separation between library objects and `main.c`;
- `sanitize`, `coverage`, and `benchmark` targets where applicable;
- ASCII aliases for legacy modules with accents or spaces;
- strict flags: `-pedantic-errors -Wall -Wextra -Werror`.

For new modules, prefer ASCII names without spaces, choose the appropriate conceptual category, and follow this structure:

```text
Category/
└── Module/
    ├── include/
    ├── src/
    ├── tests/
    └── Makefile
```

Back to the [documentation index](./README.md).
