"""
@web/dev-server macros
"""

load("@npm//:@web/dev-server/package_json.bzl", "bin")

def web_dev_server(
        deps = [
            "//:node_modules/@myorg/web-dev-server-config",
        ],
    ):

    bin.wds_binary(
        name = "web_dev_server",
        data = deps,
        args = [
            "--node-resolve",
        ],
    )
