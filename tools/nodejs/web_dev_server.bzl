"""
@web/dev-server macros
"""

load("@npm//:@web/dev-server/package_json.bzl", "bin")

def web_dev_server(
        srcs = None,
        deps = [
            "//:node_modules/@myorg/web-dev-server-config",
        ],
        exclude = ["node_modules/**/*"],
    ):

    bin.web_dev_server_test(
        name = "web_dev_server",
        data = deps,
        args = [
            "--node-resolve",
        ],
    )
