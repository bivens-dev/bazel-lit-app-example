workspace(
    name = "typescript-bazel-template",
)

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

RULES_JS_TAG = "1.3.1"

RULES_JS_SHA = "0707a425093704fab05fb91c3a4b62cf22dca18ea334d8a72f156d4c18e8db90"

RULES_TS_TAG = "1.0.0-rc2"

RULES_TS_SHA = "b491ff46f8d9167986033552bdd7b39106fac5a1cbc4d5ea44582d3d71557519"

RULES_JEST_TAG = "0.10.0"

RULES_JEST_SHA = "bb3226707f9872185865a6381eb3a19311ca7b46e8ed475aad50975906a6cb6a"

http_archive(
    name = "aspect_rules_js",
    sha256 = RULES_JS_SHA,
    strip_prefix = "rules_js-%s" % RULES_JS_TAG,
    url = "https://github.com/aspect-build/rules_js/archive/refs/tags/v%s.tar.gz" % RULES_JS_TAG,
)

http_archive(
    name = "aspect_rules_ts",
    sha256 = RULES_TS_SHA,
    strip_prefix = "rules_ts-%s" % RULES_TS_TAG,
    url = "https://github.com/aspect-build/rules_ts/archive/refs/tags/v%s.tar.gz" % RULES_TS_TAG,
)

http_archive(
    name = "aspect_rules_jest",
    sha256 = RULES_JEST_SHA,
    strip_prefix = "rules_jest-%s" % RULES_JEST_TAG,
    url = "https://github.com/aspect-build/rules_jest/archive/refs/tags/v%s.tar.gz" % RULES_JEST_TAG,
)

load("@aspect_rules_js//js:repositories.bzl", "rules_js_dependencies")

rules_js_dependencies()

load("@aspect_rules_ts//ts:repositories.bzl", "rules_ts_dependencies", TS_LATEST_VERSION = "LATEST_VERSION")

rules_ts_dependencies(ts_version = TS_LATEST_VERSION)

load("@aspect_rules_jest//jest:dependencies.bzl", "rules_jest_dependencies")

rules_jest_dependencies()

load("@aspect_rules_jest//jest:repositories.bzl", "jest_repositories", JEST_LATEST_VERSION = "LATEST_VERSION")

jest_repositories(
    name = "jest",
    jest_version = JEST_LATEST_VERSION,
)

load("@rules_nodejs//nodejs:repositories.bzl", "nodejs_register_toolchains")

nodejs_register_toolchains(
    name = "nodejs",
    node_version = "16.16.0",
)

load("@aspect_rules_js//npm:npm_import.bzl", "npm_translate_lock")

npm_translate_lock(
    name = "npm",
    pnpm_lock = "//:pnpm-lock.yaml",
    verify_node_modules_ignored = "//:.bazelignore",
)

load("@npm//:repositories.bzl", "npm_repositories")

npm_repositories()