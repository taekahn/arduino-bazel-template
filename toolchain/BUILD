load(":cc_toolchain_config.bzl", "cc_toolchain_config")

package(default_visibility = ["//visibility:public"])

cc_toolchain_suite(
    name = "arduino_suite",
    toolchains = {
        "arduino": ":arduino_toolchain",
    },
)

filegroup(name = "empty")

cc_toolchain(
    name = "arduino_toolchain",
    toolchain_identifier = "arduino-toolchain",
    toolchain_config = ":arduino_toolchain_config",
    all_files = ":empty",
    compiler_files = ":empty",
    dwp_files = ":empty",
    linker_files = ":empty",
    objcopy_files = ":empty",
    strip_files = ":empty",
    supports_param_files = 0,
)

cc_toolchain_config(name = "arduino_toolchain_config")

