load("@aspect_rules_ts//ts:defs.bzl", "ts_config", "ts_project")
load("@aspect_rules_js//npm:defs.bzl", "npm_package")
load("//tools/nodejs:index.bzl", "prettier", "web_dev_server")
load("@npm//:defs.bzl", "npm_link_all_packages")
load("@aspect_rules_js//js:defs.bzl", "js_run_binary")


npm_link_all_packages(name = "node_modules")

package(default_visibility = ["//visibility:public"])

ts_config(
    name = "lit-tsconfig",
    src = "tsconfig.json",
)

DEPS = [
    ":node_modules/lit",
    "//:node_modules/@types/node",
    "//:node_modules/tslib",
]

ts_project(
    name = "design_system",
    srcs = glob(
        include = [
            "src/**/*.ts",
            "typings/**/*.d.ts",
        ],
        exclude = [
            "src/**/*.spec.ts",
            "node_modules/**/*"
        ],
    ),
    declaration = True,
    declaration_map = True,
    source_map = True,
    tsconfig = ":lit-tsconfig",
    validate = False,
    deps = DEPS,
)

npm_package(
    name = "design-system-pkg",
    srcs = [
        ":design_system",
    ],
    package = "@myorg/design-system",
)

prettier()

web_dev_server()
