include theos/makefiles/common.mk

TWEAK_NAME = MailtoOpener
MailtoOpener_FILES = Tweak.mm
MailtoOpener_FRAMEWORKS = UIKit MessageUI
export ADDITIONAL_OBJCFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
after-install::
	install.exec "killall -9 SpringBoard"