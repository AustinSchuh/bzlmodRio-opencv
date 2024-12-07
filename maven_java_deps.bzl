load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def __setup_bzlmodrio_opencv_java_dependencies(mctx):
    jvm_maven_import_external(
        name = "edu_wpi_first_thirdparty_frc2025_opencv_opencv_java",
        artifact = "edu.wpi.first.thirdparty.frc2025.opencv:opencv-java:4.10.0-2",
        artifact_sha256 = "3b6e65fd154670c7ebca45b47911d6d31faca322e56a70c05833871bedab90c9",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )

def setup_legacy_bzlmodrio_opencv_java_dependencies():
    __setup_bzlmodrio_opencv_java_dependencies(None)

setup_bzlmodrio_opencv_java_dependencies = module_extension(
    __setup_bzlmodrio_opencv_java_dependencies,
)
