<div align="center">
    <img width="100px" height="auto" src="https://blog.bazel.build/images/bazel-icon.svg" />
  <br>
  <h1>Lit + Bazel Template</h1>
  <p>
    Template monorepo for building <a href="https://lit.dev" target="_blank">Lit</a> apps with <a href="https://bazel.build" target="_blank">Bazel</a>
  </p>
  <p>
    Based on the <a href="https://github.com/pedrobarco/typescript-bazel-template" target="_blank">template by Pedro Barco</a>
  </p>

  <p><b>Note: This is highly experimental and in no way fit for use currently</b></p>
</div>

# Usage

Setup

- `bazel run -- @pnpm//:pnpm -C $PWD i` (Install required software and sets up project)
- `bazel run -- @pnpm//:pnpm -C $PWD outdated` (Check for outdated dependencies)

Development

- `bazel build //...` (Build all packages)
- `bazel test //...` (Test all packages)
- `bazel test //packages/<package>` (Run tests)

Deployment (TBD)

# Codebase

**Services**

- TBD

**Libraries**

- [`@myorg/design-system`](packages/design-system/) **Typescript**, Lit based design system


**Miscellaneous**

- [`@myorg/eslint-config`](packages/config/eslint-config), tooling and configurations for eslint
- [`@myorg/prettier-config`](packages/config/prettier-config), tooling and configurations for prettier
