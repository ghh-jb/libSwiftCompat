TARGET := iphone:clang:14.5:14.5

include $(THEOS)/makefiles/common.mk

LIBRARY_NAME = libSwiftCompat

libSwiftCompat_FILES = libSwiftCompat.m
libSwiftCompat_CFLAGS = -fobjc-arc
libSwiftCompat_LDFLAGS = -Wl,-reexport_library,/usr/lib/swift/libswiftCore.dylib
libSwiftCompat_INSTALL_PATH = /usr/local/lib

include $(THEOS_MAKE_PATH)/library.mk
