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
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-headers.zip",
        sha256 = "b5b7c4a73300b71b96569a26041bc59702b6d4974e60725a569e2d50b140d65e",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-sources.zip",
        sha256 = "894d273ee8eece2e1f588aad8e7cf61f56a900279c864433984bd5299a31776c",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-linuxathena.zip",
        sha256 = "4fcd469a24bb597e0bc8636b36d45caca4314bed483a3dcae73f76bba7b218b2",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-linuxathenastatic.zip",
        sha256 = "b2822a98e98086513e4b127cbd6e54effa3f3c7f3f86480b64ecdcadaee07e6f",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxathenadebug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-linuxathenadebug.zip",
        sha256 = "688172bc8d10409b1a1e7cebbffaebc4fc9d52c81dea70d305859a6d9fc6f75a",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxathenastaticdebug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-linuxathenastaticdebug.zip",
        sha256 = "84d9df452eb1d77683c8811a50d618e9f07873014a04ab0c523ad12247bf7adc",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxsystemcore",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-linuxsystemcore.zip",
        sha256 = "bd8f19fdd16291ba940cbccc68dee737ecc74c0035adfe75165c6aa2b5734afd",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxsystemcorestatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-linuxsystemcorestatic.zip",
        sha256 = "a97b3e9326a6c7aa6ee97233495540b382a312fa57bd02b8d11b21703937e5e9",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxsystemcoredebug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-linuxsystemcoredebug.zip",
        sha256 = "b384fcfc4d5b060dd26f4518f5782ab5e21a82b9be26656861eb031fe6df1193",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxsystemcorestaticdebug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-linuxsystemcorestaticdebug.zip",
        sha256 = "455880a03db5e5af9bf337526eca065b59d3aa670ff2b1e4d055cec71339db72",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-linuxarm32.zip",
        sha256 = "69dcda97294d51b86db60505de61fb99dd905e92dd5995584d1c62a027d6e652",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-linuxarm64.zip",
        sha256 = "be814284499e70c94c11934f2ab6ce2f90714f76031d3384957f071cec7f30bc",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-linuxx86-64.zip",
        sha256 = "f2d9b51c752bbef26cf613d999054fca2f38e622fa503d32d42c4a6895092c43",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-osxarm64.zip",
        sha256 = "8994e3281f028e21d837a362b1e23f258b68cc9b0ced1fe1410d3431ba87a0a9",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-osxuniversal.zip",
        sha256 = "ef8c557a912e28a048ea5a601b6e2494fb855ce4cc628f5630bf82defbd00a61",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-osxx86-64.zip",
        sha256 = "4aaef18a3074c2db17721844c205df13d27f015e204514216c436adfcd6290dc",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-windowsx86-64.zip",
        sha256 = "c230df0a5c26ce77a02638e2f1902d459830e33c1e0b99c3b505135b2687ddf4",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsx86",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-windowsx86.zip",
        sha256 = "fd55ef0eaa59b0b715a18bf48db073131b75f92eaac14840a64d263181949bab",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-windowsarm64.zip",
        sha256 = "80aa7f94ccddaf0d92190ce3072f411c39d8ceb6555dfb8a1ecaedc65892b2c2",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-linuxarm32static.zip",
        sha256 = "c9ce67ba109b0cbf5b1c4bbe6aca15b831dc4232b8f71c94895cd0118e08eed9",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-linuxarm64static.zip",
        sha256 = "f4fe718c0a8f378440ddc7e51dc9353d303c2298985ba7c77f6a838f91b9bd63",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-linuxx86-64static.zip",
        sha256 = "1338d8a0b610cd5a922dc2384be73755345791bf5e6319210f468369d6d80246",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-osxarm64static.zip",
        sha256 = "b99fe8e498685ba88310ef32f497d582195018233f18f2f3842e48f5edeec84b",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-osxuniversalstatic.zip",
        sha256 = "eeca3f28ce3b840c8f91ec7ea9f14d8b8d61e21a94cc1b26f693230c26603d05",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-osxx86-64static.zip",
        sha256 = "53c01641c2106b802a4cce85ff12f80c4cf4eaecdfeb0b26a3e15b44c61cb34d",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-windowsx86-64static.zip",
        sha256 = "22cb69efc521b51d71d018e11a71a8f8e560b750710ac45a6764930dc9a008d9",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsx86static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-windowsx86static.zip",
        sha256 = "4133f7e2458c9dc1a7771be8231a348073a8f556ab5475dc091b0566c0be7b6b",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-windowsarm64static.zip",
        sha256 = "1112aac5e9cedde35d1e3ee90d1444ee55db0c68542e1e8d748c1b6ac6e26f40",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxarm32debug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-linuxarm32debug.zip",
        sha256 = "7833a7ec3acd1e2b9045a3ebd1cbd1d6ab85fe54ef4868c818c0b71b2133fa67",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxarm64debug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-linuxarm64debug.zip",
        sha256 = "60138eb357fc269277c80156853bcd9db08bac7915a0b7051a4a3277c8391f29",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxx86-64debug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-linuxx86-64debug.zip",
        sha256 = "35c88d5db2c9cc343e44ccaf3524068b328c7d0ea90df5351c39f1f881d8e40b",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxarm64debug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-osxarm64debug.zip",
        sha256 = "07e8d358f857d64f0c9306a24098bb77f1526a18988230d2e8ef9f881a401928",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxuniversaldebug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-osxuniversaldebug.zip",
        sha256 = "3fa16c3e1ec2e5e2812cb415c92d649d466b065ed5a0f06352bf40ab32389d69",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxx86-64debug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-osxx86-64debug.zip",
        sha256 = "9e9a695d428b2ede69faf801b0152c23256384b543ff8768300f97298caa960a",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsx86-64debug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-windowsx86-64debug.zip",
        sha256 = "ef670782658e7d5b9c50235197c7bf4fa650a9c4125b67a92fd4cdb7c6f77c0a",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsx86debug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-windowsx86debug.zip",
        sha256 = "df7a44756f97417a24fa2a85b0d801a40864b679d26f45fa12b5c6edd2f88c12",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsarm64debug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-windowsarm64debug.zip",
        sha256 = "ed86da931fcc66ec21e7d6d4f97a9e3e4dc7264d8929702c68145e984c013791",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxarm32staticdebug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-linuxarm32staticdebug.zip",
        sha256 = "f5185acc7b863c80f6dc9eeeb1fee02200211f8d0e68823b28569d01b509dd8a",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxarm64staticdebug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-linuxarm64staticdebug.zip",
        sha256 = "83dc4aeeb4953ad4adab82ab23b94d4beb69f6ddfc93f0e38cb171fffe28ae9e",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxx86-64staticdebug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-linuxx86-64staticdebug.zip",
        sha256 = "6e0d47e3f4735dc2445bb241ff5e05b48b8110338c54169b5126a23b99b570c1",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxarm64staticdebug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-osxarm64staticdebug.zip",
        sha256 = "e8739f77519cddcbca8f25fd6437fb196d9fe1edcd63fa3357e62e1880fd089b",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxuniversalstaticdebug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-osxuniversalstaticdebug.zip",
        sha256 = "5f0bc46c5c959f2ea584a96955906f183283d911b9f7532749d4e9cab8ad8b0e",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxx86-64staticdebug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-osxx86-64staticdebug.zip",
        sha256 = "6ebd2d2fa123085ac261b539df9c6fd01536660ca21fdebfa60f3eedd7d78359",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsx86-64staticdebug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-windowsx86-64staticdebug.zip",
        sha256 = "26d8e9752a4ceffcc75c32f386eb3f5dd1f104edf9424c5a28497c862aacc3d2",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsx86staticdebug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-windowsx86staticdebug.zip",
        sha256 = "53d760be3957824b452c10b1756ce6ce6718cc5f48bfc96beb869d7750b762f0",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsarm64staticdebug",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2025/opencv/opencv-cpp/4.10.0-3/opencv-cpp-4.10.0-3-windowsarm64staticdebug.zip",
        sha256 = "e876349009c07649335c81bba178baea63704fb47e3128f0049ca28dc8d6d8ac",
        build_file = "@bzlmodrio-opencv//private/cpp/opencv:static.BUILD.bazel",
    )

def setup_legacy_bzlmodrio_opencv_cpp_dependencies():
    __setup_bzlmodrio_opencv_cpp_dependencies(None)

setup_bzlmodrio_opencv_cpp_dependencies = module_extension(
    __setup_bzlmodrio_opencv_cpp_dependencies,
)
