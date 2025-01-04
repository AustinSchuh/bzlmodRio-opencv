load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def __setup_bzlmodrio_opencv_java_dependencies(mctx):
    jvm_maven_import_external(
        name = "edu_wpi_first_thirdparty_frc2025_opencv_opencv_java",
        artifact = "edu.wpi.first.thirdparty.frc2025.opencv:opencv-java:4.10.0-3",
        artifact_sha256 = "c7ad59669aee50dd6f601ea7e99fdbafb6a0f09aacae1fb1fb19f0b893c7f80e",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )

def setup_legacy_bzlmodrio_opencv_java_dependencies():
    __setup_bzlmodrio_opencv_java_dependencies(None)

setup_bzlmodrio_opencv_java_dependencies = module_extension(
    __setup_bzlmodrio_opencv_java_dependencies,
)
