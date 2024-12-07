load("@bzlmodrio-opencv//:maven_cpp_deps.bzl", "setup_legacy_bzlmodrio_opencv_cpp_dependencies")
load("@bzlmodrio-opencv//:maven_java_deps.bzl", "setup_legacy_bzlmodrio_opencv_java_dependencies")
load("@rules_bazelrio//:nonbzlmod_setup.bzl", "setup_rules_bazelrio")
load("@rules_bzlmodrio_toolchains//:maven_deps.bzl", "setup_legacy_setup_toolchains_dependencies")
load("@rules_bzlmodrio_toolchains//toolchains:load_toolchains.bzl", "load_toolchains")
load("@rules_jvm_external//:repositories.bzl", "rules_jvm_external_deps")

def _setup_toolchains():
    setup_legacy_setup_toolchains_dependencies()

    load_toolchains()

    native.register_toolchains(
        "@local_roborio//:macos",
        "@local_roborio//:linux",
        "@local_roborio//:windows",
        "@local_raspi_32//:macos",
        "@local_raspi_32//:linux",
        "@local_raspi_32//:windows",
        "@local_bullseye_32//:macos",
        "@local_bullseye_32//:linux",
        "@local_bullseye_32//:windows",
        "@local_bullseye_64//:macos",
        "@local_bullseye_64//:linux",
        "@local_bullseye_64//:windows",
        "@local_bookworm_32//:macos",
        "@local_bookworm_32//:linux",
        "@local_bookworm_32//:windows",
        "@local_bookworm_64//:macos",
        "@local_bookworm_64//:linux",
        "@local_bookworm_64//:windows",
    )

def _setup_cpp_dependencies():
    setup_legacy_bzlmodrio_opencv_cpp_dependencies()

def _setup_java_dependencies():
    rules_jvm_external_deps()
    setup_legacy_bzlmodrio_opencv_java_dependencies()

def setup_dependencies():
    _setup_toolchains()
    _setup_cpp_dependencies()
    _setup_java_dependencies()

    setup_rules_bazelrio()
