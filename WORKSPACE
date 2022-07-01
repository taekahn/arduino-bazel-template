load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository", "new_git_repository")

git_repository(
    name = "bazel_skylib",
    commit = "a501641daebdce8601ee6bbc6b5d177c688d3517",
    remote = "https://github.com/bazelbuild/bazel-skylib",
    shallow_since = "1654871023 +0200",
)

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

git_repository(
    name = "rules_cc",
    commit = "2f8c04c04462ab83c545ab14c0da68c3b4c96191",
    remote = "https://github.com/bazelbuild/rules_cc",
    shallow_since = "1655902949 -0700",
)

load("@rules_cc//cc:repositories.bzl", "rules_cc_dependencies", "rules_cc_toolchains")

rules_cc_dependencies()

rules_cc_toolchains()

new_git_repository(
    name = "arduino_core",
    build_file = "//:arduino_core.BUILD",
    commit = "bc792a9a716289249fa5f2f67be3ee8ba6507d6c",
    patches = ["//patches:yun.patch"],
    remote = "https://github.com/arduino/ArduinoCore-avr.git",
    shallow_since = "1650377009 -0700",
)
