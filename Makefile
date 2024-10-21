TARGET := iphone:clang:latest:7.0


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DisconnectAppNetwork

DisconnectAppNetwork_FILES = Tweak.xm
DisconnectAppNetwork_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
