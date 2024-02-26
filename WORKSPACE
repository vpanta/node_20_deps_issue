workspace(
    name = "node_20_deps_issue",
)

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# Node setup
http_archive(
    name = "rules_nodejs",
    sha256 = "f36e4a4747210331767033dc30728ae3df0856e88ecfdc48a0077ba874db16c3",
    strip_prefix = "rules_nodejs-6.0.3",
    url = "https://github.com/bazelbuild/rules_nodejs/releases/download/v6.0.3/rules_nodejs-v6.0.3.tar.gz",
)

load("@rules_nodejs//nodejs:repositories.bzl", "nodejs_register_toolchains")

nodejs_register_toolchains(
    name = "nodejs",
    # Works with 19.7, fails with 19.8
    node_version = "19.7.0",
    # node_version = "19.8.0",
)

# Aspect helpers
http_archive(
    name = "aspect_bazel_lib",
    sha256 = "f75d03783588e054899eb0729a97fb5b8973c1a26f30373fafd485c90bf207d1",
    strip_prefix = "bazel-lib-2.4.2",
    url = "https://github.com/aspect-build/bazel-lib/releases/download/v2.4.2/bazel-lib-v2.4.2.tar.gz",
)

load("@aspect_bazel_lib//lib:repositories.bzl", "aspect_bazel_lib_dependencies", "aspect_bazel_lib_register_toolchains")

aspect_bazel_lib_dependencies()

aspect_bazel_lib_register_toolchains()

# Aspect Node
http_archive(
    name = "aspect_rules_js",
    sha256 = "630a71aba66c4023a5b16ab3efafaeed8b1a2865ccd168a34611eb73876b3fc4",
    strip_prefix = "rules_js-1.37.1",
    url = "https://github.com/aspect-build/rules_js/releases/download/v1.37.1/rules_js-v1.37.1.tar.gz",
)

load("@aspect_rules_js//js:repositories.bzl", "rules_js_dependencies")

rules_js_dependencies()

load("@aspect_rules_js//npm:npm_import.bzl", "npm_translate_lock")

npm_translate_lock(
    name = "npm",
    pnpm_lock = "//:pnpm-lock.yaml",
    pnpm_version = "8.10.2",
    verify_node_modules_ignored = "//:.bazelignore",
)

load("@npm//:repositories.bzl", "npm_repositories")

npm_repositories()
