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
    visibility = ["//visibility:public"],
    deps = [":yun"],
)

#empty hook produces a build error. fix if needed
#cc_library(
#    name = "hooks",
#    srcs = ["cores/arduino/hooks.c"],
#    visibility = ["//visibility:public"],
#    deps = [],
#)

cc_library(
    name = "WInterrupts",
    srcs = [
        "cores/arduino/WInterrupts.c",
    ],
    visibility = ["//visibility:public"],
    deps = [":headers"],
)

cc_library(
    name = "wiring",
    srcs = [
        "cores/arduino/wiring.c",
    ],
    visibility = ["//visibility:public"],
    deps = [":headers"],
)

cc_library(
    name = "wiring_pulse_c",
    srcs = [
        "cores/arduino/wiring_pulse.c",
    ],
    visibility = ["//visibility:public"],
    deps = [":headers"],
)

cc_library(
    name = "wiring_digital",
    srcs = [
        "cores/arduino/wiring_digital.c",
    ],
    visibility = ["//visibility:public"],
    deps = [":headers"],
)

cc_library(
    name = "wiring_shift",
    srcs = [
        "cores/arduino/wiring_shift.c",
    ],
    visibility = ["//visibility:public"],
    deps = [":headers"],
)

cc_library(
    name = "wiring_analog",
    srcs = [
        "cores/arduino/wiring_analog.c",
    ],
    visibility = ["//visibility:public"],
    deps = [":headers"],
)
