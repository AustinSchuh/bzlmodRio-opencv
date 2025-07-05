load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def download_dependencies():
    http_archive(
        name = "bazel_features",
        sha256 = "a015f3f2ebf4f1ac3f4ca8ea371610acb63e1903514fa8725272d381948d2747",
        strip_prefix = "bazel_features-1.31.0",
        url = "https://github.com/bazel-contrib/bazel_features/releases/download/v1.31.0/bazel_features-v1.31.0.tar.gz",
    )

    # Rules CC
    http_archive(
        name = "rules_cc",
        sha256 = "712d77868b3152dd618c4d64faaddefcc5965f90f5de6e6dd1d5ddcd0be82d42",
        strip_prefix = "rules_cc-0.1.1",
        url = "https://github.com/bazelbuild/rules_cc/releases/download/0.1.1/rules_cc-0.1.1.tar.gz",
    )

    # Rules Java
    http_archive(
        name = "rules_java",
        sha256 = "d31b6c69e479ffa45460b64dc9c7792a431cac721ef8d5219fc9f603fa2ff877",
        urls = [
            "https://github.com/bazelbuild/rules_java/releases/download/8.11.0/rules_java-8.11.0.tar.gz",
        ],
    )

    # JVM External
    http_archive(
        name = "rules_jvm_external",
        sha256 = "4f55980c25d0783b9fe43b049362018d8d79263476b5340a5491893ffcc06ab6",
        strip_prefix = "rules_jvm_external-30899314873b6ec69dc7d02c4457fbe52a6e535d",
        url = "https://github.com/bazel-contrib/rules_jvm_external/archive/30899314873b6ec69dc7d02c4457fbe52a6e535d.tar.gz",
    )

    # Bazelrio Rules
    http_archive(
        name = "rules_bazelrio",
        sha256 = "0c5a98476ac5b606689863b7b9ef3f7d685c47ce2681e448ca977e8e95de31c1",
        url = "https://github.com/bzlmodRio/rules_bazelrio/releases/download/0.0.14/rules_bazelrio-0.0.14.tar.gz",
    )

    # Roborio Toolchain
    http_archive(
        name = "rules_bzlmodrio_toolchains",
        sha256 = "37780b3d3f30de72aaca12d9f80edc4216f6d708bed5b261c424d4dde49e8531",
        url = "https://github.com/wpilibsuite/rules_bzlmodRio_toolchains/releases/download/2025-1.bcr4/rules_bzlmodRio_toolchains-2025-1.bcr4.tar.gz",
    )

    ########################
    # bzlmodRio dependencies

    ########################
