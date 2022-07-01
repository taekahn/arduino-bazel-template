load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")

def establish_cpp_deps():
    new_git_repository(
        name = "arduino_core",
        build_file = "//third_party/arduino_core:arduino.BUILD",
        commit = "bc792a9a716289249fa5f2f67be3ee8ba6507d6c",
        patches = ["//third_party/arduino_core/patches:yun.patch"],
        remote = "https://github.com/arduino/ArduinoCore-avr.git",
        shallow_since = "1650377009 -0700",
    )
