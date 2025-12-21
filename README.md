# premake-common-registry

A centralized registry for **common Premake libraries and SDK integrations**.

This repository hosts reusable Premake definitions for widely‑used native libraries (for example Vulkan, GLFW, and similar dependencies). The goal is to make consuming third‑party libraries in Premake projects **consistent, discoverable, and easy to automate**.

---

## Purpose

Managing third‑party libraries in Premake often leads to duplicated logic, inconsistent naming, and custom one‑off scripts per project. This registry solves that by:

* Providing **standardized Premake scripts** for popular libraries
* Keeping dependency metadata in a **machine‑readable format**
* Enabling **tooling and automation** around dependency discovery and setup
* Encouraging **reuse instead of copy‑paste** across projects

---

## Repository Structure

All libraries are stored under the `libraries/` directory and grouped by repository owner and repository name (lowercase):

```text
libraries/
└─ <repo_owner>/
   └─ <repo_name>/
      ├─ premake5.lua
      └─ premakeLib.yml
```

### Example

```text
libraries/
└─ glfw/
   └─ glfw/
      ├─ premake5.lua
      └─ premakeLib.yml
```

---

## File Descriptions

### `premake5.lua`

Contains the **Premake logic** required to integrate the library into a workspace or project. This typically includes:

* Include directories
* Library directories
* Platform‑specific configuration
* Link options
* Build options (static/shared where applicable)

The script should be **self‑contained** and designed to be included or required by consumer projects or tooling.

---

### `premakeDependency.yml`

Provides **metadata describing the dependency**. This file is intended for tooling and automation, not direct execution.

Typical use cases:

* Dependency discovery
* Versioning and source information
* Download or fetch logic handled by external tools
* Registry indexing and search

The exact schema may evolve, but the intent is to keep it **simple, declarative, and tool‑friendly**.

---

## Intended Usage

This repository is not meant to be consumed directly by end users via Git submodules. Instead, it is designed to be used by:

* Premake‑based tooling
* Dependency managers
* CLI utilities
* Custom scripts that fetch and apply Premake dependencies automatically

Projects can then reference these definitions to configure libraries without rewriting boilerplate.

---

## Adding a New Library

To add a new library:

use premake-manager-cli and use the following command:
> index add library

---

## Contribution Guidelines

Contributions are welcome.

When submitting a new library or updating an existing one:

Pull requests should be small, focused, and easy to review.

Try to stick with the existing tools in premake-manager-cli.

---


## Integration

This repository is designed to integrate seamlessly with higher-level Premake manager tooling.

### Premake Manager

Libraries in this registry are consumable by **Premake Manager tooling** :

* Discover available libraries
* Read `premakeLib.yml` metadata
* Fetch sources and dependencies.
* Inject the corresponding `premake5.lua` logic into a workspace automatically

This enables declarative dependency configuration without manual Premake boilerplate.

---

### premake-registry

The contents of this repository are indexed by the **Premake Registry**, a community-hosted service available at:

* [https://premake-registry-ywxg.onrender.com/](https://premake-registry-ywxg.onrender.com/)

The registry provides:

* Search by repository owner, repository name, or tags
* Discovery of newly added community Premake libraries
* A public API for tooling and automation

`premake-common-registry` acts as a **source of truth** for community modules and libraries exposed through the registry.

---

## Unnoficial

this regstry is NOT MAINTAINED by the premake5 team!!!
