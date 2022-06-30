load("@bazel_tools//tools/build_defs/cc:action_names.bzl", "ACTION_NAMES")
load("@bazel_tools//tools/cpp:cc_toolchain_config_lib.bzl", "tool_path")

def _impl(ctx):
    tool_paths = [
        tool_path(
            name = "gcc",
            path = "/usr/bin/avr-g++",
        ),
        tool_path(
            name = "ld",
            path = "/usr/bin/avr-ld",
        ),
        tool_path(
            name = "ar",
            path = "/usr/bin/avr-ar",
        ),
        tool_path(
            name = "cpp",
            path = "/usr/bin/avr-g++",
        ),
        tool_path(
            name = "gcov",
            path = "/usr/bin/avr-gcov",
        ),
        tool_path(
            name = "nm",
            path = "/usr/bin/avr-nm",
        ),
        tool_path(
            name = "objdump",
            path = "/usr/bin/avr-objdump",
        ),
        tool_path(
            name = "strip",
            path = "/usr/bin/avr-strip",
        ),
    ]

    return cc_common.create_cc_toolchain_config_info(
        ctx = ctx,
        toolchain_identifier = "local",
        cxx_builtin_include_directories = [
            "/usr/lib/avr/include",
            "/usr/lib/gcc/avr/5.4.0/include",
            "/usr/local/include",
            "/usr/include",
        ],
        host_system_name = "local",
        target_system_name = "local",
        target_cpu = "avr",
        target_libc = "unknown",
        compiler = "avr-g++",
        abi_version = "unknown",
        abi_libc_version = "unknown",
        tool_paths = tool_paths,
    )

cc_toolchain_config = rule(
    implementation = _impl,
    attrs = {},
    provides = [CcToolchainConfigInfo],
)
