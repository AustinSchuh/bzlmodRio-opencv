load("//private/cpp/opencv:wrapped_cc_import.bzl", _opencv_libraries = "opencv_libraries")

opencv_shared_libraries = ["@bzlmodrio-opencv//private/cpp/opencv:" + lib + "_shared" for lib in _opencv_libraries]
