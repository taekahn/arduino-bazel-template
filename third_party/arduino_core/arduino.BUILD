package(default_visibility = ["//visibility:public"])

cc_library(
    name = "wiring_pulse",
    # .S (vs .s) means -x assembler-with-cpp
    srcs = ["cores/arduino/wiring_pulse.S"],
)

cc_library(
    name = "yun",
    srcs = ["variants/leonardo/pins_arduino.h"],
    hdrs = [
        #currently hardcoded to my board. todo: make this configurable
        #at least as an include directory"
        "variants/yun/pins_arduino.h",
    ],
    strip_include_prefix = "variants/yun",
)

cc_library(
    name = "headers",
    hdrs = [
        "cores/arduino/Arduino.h",
        "cores/arduino/HardwareSerial.h",
        "cores/arduino/Print.h",
        "cores/arduino/Printable.h",
        "cores/arduino/Stream.h",
        "cores/arduino/USBAPI.h",
        "cores/arduino/USBCore.h",
        "cores/arduino/USBDesc.h",
        "cores/arduino/WCharacter.h",
        "cores/arduino/WString.h",
        "cores/arduino/binary.h",
        "cores/arduino/wiring_private.h",
    ],
    deps = [":yun"],
)

#empty hook produces a build error. fix if needed
#cc_library(
#    name = "hooks",
#    srcs = ["cores/arduino/hooks.c"],
#
#    deps = [],
#)

cc_library(
    name = "WInterrupts",
    srcs = [
        "cores/arduino/WInterrupts.c",
    ],
    deps = [":headers"],
)

cc_library(
    name = "wiring",
    srcs = [
        "cores/arduino/wiring.c",
    ],
    deps = [":headers"],
)

cc_library(
    name = "wiring_pulse_c",
    srcs = [
        "cores/arduino/wiring_pulse.c",
    ],
    deps = [":headers"],
)

cc_library(
    name = "wiring_digital",
    srcs = [
        "cores/arduino/wiring_digital.c",
    ],
    deps = [":headers"],
)

cc_library(
    name = "wiring_shift",
    srcs = [
        "cores/arduino/wiring_shift.c",
    ],
    deps = [":headers"],
)

cc_library(
    name = "wiring_analog",
    srcs = [
        "cores/arduino/wiring_analog.c",
    ],
    deps = [":headers"],
)

cc_library(
    name = "CDC",
    srcs = [
        "cores/arduino/CDC.cpp",
    ],
    copts = [
        "-Wno-error=cast-qual",
        #TODO: DELETE THIS LATER. SHOULD NOT HIDE WARNINGS
        "-Wno-cast-qual",
    ],
    deps = [":headers"],
)

cc_library(
    name = "HardwareSerial",
    srcs = [
        "cores/arduino/HardwareSerial.cpp",
        "cores/arduino/HardwareSerial_private.h",
    ],
    deps = [":headers"],
)

cc_library(
    name = "HardwareSerial0",
    srcs = [
        "cores/arduino/HardwareSerial0.cpp",
        "cores/arduino/HardwareSerial_private.h",
    ],
    deps = [":headers"],
)

cc_library(
    name = "HardwareSerial1",
    srcs = [
        "cores/arduino/HardwareSerial1.cpp",
        "cores/arduino/HardwareSerial_private.h",
    ],
    deps = [":headers"],
)

cc_library(
    name = "HardwareSerial2",
    srcs = [
        "cores/arduino/HardwareSerial2.cpp",
        "cores/arduino/HardwareSerial_private.h",
    ],
    deps = [":headers"],
)

cc_library(
    name = "HardwareSerial3",
    srcs = [
        "cores/arduino/HardwareSerial3.cpp",
        "cores/arduino/HardwareSerial_private.h",
    ],
    deps = [":headers"],
)

cc_library(
    name = "PluggableUSB",
    srcs = [
        "cores/arduino/PluggableUSB.cpp",
    ],
    hdrs = [
        "cores/arduino/PluggableUSB.h",
    ],
    deps = [":headers"],
)

cc_library(
    name = "IPAddress",
    srcs = [
        "cores/arduino/IPAddress.cpp",
    ],
    hdrs = [
        "cores/arduino/IPAddress.h",
    ],
    includes = ["cores/arduino"],
    deps = [":headers"],
)

cc_library(
    name = "Print",
    srcs = [
        "cores/arduino/Print.cpp",
    ],
    deps = [":headers"],
)

cc_library(
    name = "Stream",
    srcs = [
        "cores/arduino/Stream.cpp",
    ],
    deps = [":headers"],
)

cc_library(
    name = "Tone",
    srcs = [
        "cores/arduino/Tone.cpp",
    ],
    deps = [":headers"],
)

cc_library(
    name = "USBCore",
    srcs = [
        "cores/arduino/USBCore.cpp",
    ],
    deps = [
        ":PluggableUSB",
        ":headers",
    ],
)

cc_library(
    name = "WMath",
    srcs = [
        "cores/arduino/WMath.cpp",
    ],
)

cc_library(
    name = "WString",
    srcs = [
        "cores/arduino/WString.cpp",
    ],
    deps = [":headers"],
)

cc_library(
    name = "abi",
    srcs = [
        "cores/arduino/abi.cpp",
    ],
)

cc_library(
    name = "main",
    srcs = [
        "cores/arduino/main.cpp",
    ],
    includes = ["cores/arduino"],
    deps = [":headers"],
)

cc_library(
    name = "new",
    srcs = [
        "cores/arduino/new.cpp",
    ],
    hdrs = [
        "cores/arduino/new.h",
    ],
    copts = ["-Wno-unused-parameter"],
    deps = [":headers"],
)
