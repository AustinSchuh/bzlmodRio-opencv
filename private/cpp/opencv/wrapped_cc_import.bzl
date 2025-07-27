load("@rules_bzlmodrio_toolchains//cc:cc_shared_import.bzl", "cc_shared_import")

opencv_libraries = [
    "opencv_aruco",
    "opencv_calib3d",
    "opencv_core",
    "opencv_dnn",
    "opencv_features2d",
    "opencv_flann",
    "opencv_gapi",
    "opencv_highgui",
    "opencv_imgcodecs",
    "opencv_imgproc",
    "opencv_ml",
    "opencv_objdetect",
    "opencv_photo",
    "opencv_stitching",
    "opencv_videoio",
    "opencv_video",
]

def cc_import_name(shared_library_file):
    # We could see 'libfoo.so', 'libfoo.so.1.5', 'foo.dll', 'foo.dynlib', 'libfoo_java4100.so'
    # We want 'foo' to be the answer for all of them.
    last_slash = shared_library_file.rfind("/")
    result = shared_library_file[last_slash + 1:]

    if result.startswith("lib"):
        result = result[3:]

    if ".dll" in result:
        result = result[:result.rfind(".dll")]
        # Of course windows is special...

        # Handle foo4100d.dll.  opencv_java4100.dll doesn't end with d.so ever.
        if native.repository_name().endswith("debug") and not result.startswith("opencv_java"):
            if result[-1] != "d":
                fail("Expected debug library version, got", result, shared_library_file)
            result = result[:-1]

        for i in range(len(result) - 1, -1, -1):
            # Strip off any .4.10, 4100, etc off the back end.
            if result[i] in "0123456789.":
                continue
            break

        result = result[:i + 1]

    else:
        # Unix are consistent.
        if ".so" in result:
            result = result[:result.rfind(".so")]
        elif ".dylib" in result:
            result = result[:result.rfind(".dylib")]
        else:
            fail("Unexpected library, " + shared_library_file)

        for i in range(len(result) - 1, -1, -1):
            # Strip off any .4.10, 4100, etc off the back end.
            if result[i] in "0123456789.":
                continue
            break

        result = result[:i + 1]

        # Handle libfood.so.  opencv_java doesn't end with d.so ever, and
        # opencv_features2d ends with 1 d always, and 2 sometimes.
        if native.repository_name().endswith("debug") and result != "opencv_java":
            if result[-1] != "d":
                fail("Expected debug library version, got", result, shared_library_file)
            result = result[:-1]

    if result not in opencv_libraries + ["opencv_java"]:
        fail("Unexpected opencv library %s", result)

    return result

def wrapped_cc_import(
        shared_library_file,
        static_name,
        hdrs,
        includes):
    """
    This macro takes a shared and static library, and creates two targets
    for them. A cc_import target for static linking, and a _shared target,
    which provides a CcSharedLibraryInfo for dynamic linking.
    """
    base_name = cc_import_name(shared_library_file)

    cc_shared_import(
        name = base_name,
        shared_library_file = shared_library_file,
        static_library_file = "@" + static_name + "//:static_library_file",
        hdrs = hdrs,
        includes = includes,
        visibility = ["//visibility:public"],
    )

def static_alias(name, libraries, visibility):
    if len(libraries) != 1:
        fail("Didn't find exactly 1 library")

    native.alias(
        name = name,
        actual = libraries[0],
        visibility = visibility,
    )
