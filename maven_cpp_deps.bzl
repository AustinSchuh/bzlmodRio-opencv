load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

cc_library_headers = """cc_library(
    name = "headers",
    hdrs = glob(["**"]),
    includes = ["."],
    visibility = ["//visibility:public"],
)

filegroup(
    name = "header_files",
    srcs = glob(["**"]),
    visibility = ["//visibility:public"],
)
"""

cc_library_sources = """filegroup(
     name = "sources",
     srcs = glob(["**"]),
     visibility = ["//visibility:public"],
 )
 """

def __setup_bzlmodrio_opencv_cpp_dependencies(mctx):
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-headers.zip",
        sha256 = "c6f5a2f3082b96d0c456e499aa7d5ad24fcad89c11dd6259e6709057fafa798d",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-sources.zip",
        sha256 = "38b20790cdb7333c3cc4b4370b980eb22532c9abc9946c270d764f944afd25be",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-linuxathena.zip",
        sha256 = "625229e94bd0c5a32160e98e2a4cd92227b97c211dc32f13ffacd9b0b2239578",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-linuxathenastatic.zip",
        sha256 = "89047dac67fe3a30dc80ebcca9633bb09af61ce87e7d4664d8a1ffc4132dc1fc",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxathenadebug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-linuxathenadebug.zip",
        sha256 = "6d8f4f4ef966636f0503f12e7b679b2d01c184013bad7959a43ef386cc31289f",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxathenastaticdebug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-linuxathenastaticdebug.zip",
        sha256 = "7667f71e9a2b613757b483dd2c333c5a721fea7f3d1ae08c0790027998a0a67b",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxsystemcore",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-linuxsystemcore.zip",
        sha256 = "8e59b6dd9201cb2125aaaa3849cdf241fd836ab0595316744804e6da7a47c24e",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxsystemcorestatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-linuxsystemcorestatic.zip",
        sha256 = "35a191ffbfed6172b6d09171a28d6901c0131099862f9f788e4284de7b6ed797",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxsystemcoredebug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-linuxsystemcoredebug.zip",
        sha256 = "44c7685d193edc0c1185501b90d1d3a31b54f8fd4b09e27f8f92aa9e98017960",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxsystemcorestaticdebug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-linuxsystemcorestaticdebug.zip",
        sha256 = "5c374076814f7b2804e3125e39c9cae1d62b7c55bad5da2396832c5e1e51d302",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-linuxarm32.zip",
        sha256 = "7cf7f49d74727485a84fe1a9a3b639a8397dbc9c125fc189c8a63e6547146dc0",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-linuxarm64.zip",
        sha256 = "e51b0c62f97f2274a9b62701ad418851a9ecc1f892093e81e9d6ef0e314a568d",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-linuxx86-64.zip",
        sha256 = "e9e88f5ff8e21a105c25db158873380a043176f1f87ab6151cdda6991c21f4e5",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-osxarm64.zip",
        sha256 = "8edeb24523434f774057515a19fc0e350104e340f62c1262a1a63400f660b598",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-osxuniversal.zip",
        sha256 = "45cd121c465016bdbbe946f7b03399e5cc2819322bfd577908e76e31345dddbc",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-windowsx86-64.zip",
        sha256 = "db1fe7c5727a440f9a04fb7010f62a2a977c80c3cce3aedcac37b566e68be8e5",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsx86",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-windowsx86.zip",
        sha256 = "e04a79e393b286d3a4aa2e6f87507fafbb778f434edf1546d7a6ad297f79f3aa",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-windowsarm64.zip",
        sha256 = "f7dcca5c3606c96c355f1dd6c2c6aa4da08edd4f40fb9234c429efaccf0fcafd",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-linuxarm32static.zip",
        sha256 = "27ad5aa85831e13c0d58bd3e4e99f91a37af409f533e0d5af25c6580a98678eb",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-linuxarm64static.zip",
        sha256 = "d6e55e0d27c677d31f12807f3e5dac725c33fa6ed3c8c3803c5e8913b9bbc83a",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-linuxx86-64static.zip",
        sha256 = "97f06024300238faf29b139fc111cf085597f2682d44288cf9ddd521aaeaf273",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-osxarm64static.zip",
        sha256 = "f24eb215b2739bb86c503a0242b4c987e9f4c377b5c3630e0a71fd92d2add452",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-osxuniversalstatic.zip",
        sha256 = "0a2149ece011534341d8c5665abda8bb4ffe0e13a66160a0d2a1b6013da27cec",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-windowsx86-64static.zip",
        sha256 = "404a1795dde63ceb56151fe451c5b8f07fdded7767b2684f3d4bb521cf8977d2",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsx86static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-windowsx86static.zip",
        sha256 = "d14967095652036d7d559ec15919734ad50e1b3a749eec71ac353282b2c0a8af",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-windowsarm64static.zip",
        sha256 = "42c6ee66ca50c54310c30db7ed2484e5afd89d7f1acaa7f52ff644f621383da3",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxarm32debug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-linuxarm32debug.zip",
        sha256 = "029cdfa474ae6778ec6b52b513fb3f427cd6761ddb3a8f81943c19189f92ff4d",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxarm64debug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-linuxarm64debug.zip",
        sha256 = "7fdc676351062cee38ff2f4a55f8eae0d5370d9ec055818b333bbd652781721b",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxx86-64debug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-linuxx86-64debug.zip",
        sha256 = "a6cd095a907c9820c996ff92f0c24aeb54de994dd85af45a2a957efb3235d288",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxarm64debug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-osxarm64debug.zip",
        sha256 = "7d5b9fdf4674495b8b9a07dba317fb137aff37bb349d162d959ed0745c40e039",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxuniversaldebug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-osxuniversaldebug.zip",
        sha256 = "018c2f2c2ed3248b49a541006586f20a40bfa31f5befb123a8d2473da3e17c37",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsx86-64debug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-windowsx86-64debug.zip",
        sha256 = "39bad61710c7e793c3b716acccf951d7fac7fff76fac26137536e5c0a01784ae",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsx86debug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-windowsx86debug.zip",
        sha256 = "af228940fbddf5ea6caf6025f83fcc27755828914e9899bb857bc1f8b27a90f4",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsarm64debug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-windowsarm64debug.zip",
        sha256 = "6e5821cf89dd1358a44d9357cf8f627646dad6afe319db05de646e92558fc2b5",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxarm32staticdebug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-linuxarm32staticdebug.zip",
        sha256 = "fc29d872881e3245eaf2503f3aa977ebc816862bd63ebd3a645a717199789bd0",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxarm64staticdebug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-linuxarm64staticdebug.zip",
        sha256 = "5e28586b216189c526b58a7d6be44e31c97485ee70c77d6a8f8477e64513d2a8",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxx86-64staticdebug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-linuxx86-64staticdebug.zip",
        sha256 = "28c40e3d23775c77974e680a4f9e38b90e2c393c8f23e0f29352a187503cc5d7",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxarm64staticdebug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-osxarm64staticdebug.zip",
        sha256 = "6c9291c5b4c39f54e5407ff96bbc03c67eb70d1c175d55f743b5489f7f47d8ff",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxuniversalstaticdebug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-osxuniversalstaticdebug.zip",
        sha256 = "40396534fec1026c438d831e7d0a332f427646417783e6a1ebc02c8c0232ebde",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsx86-64staticdebug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-windowsx86-64staticdebug.zip",
        sha256 = "fb93511ca90ebf60d97ae51629ae0c03abd7d683d21e968b7f819a4da7c681e1",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsx86staticdebug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-windowsx86staticdebug.zip",
        sha256 = "11c530f7338682a567340d2dacec3956e98a3c1a01dce68c8024c0b1eba9196e",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsarm64staticdebug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-2/opencv-cpp-4.10.0-2-windowsarm64staticdebug.zip",
        sha256 = "656db4670e95120d74754fd3cafa53f62448afde1b042fe27db2eadab24e3d90",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )

def setup_legacy_bzlmodrio_opencv_cpp_dependencies():
    __setup_bzlmodrio_opencv_cpp_dependencies(None)

setup_bzlmodrio_opencv_cpp_dependencies = module_extension(
    __setup_bzlmodrio_opencv_cpp_dependencies,
)
