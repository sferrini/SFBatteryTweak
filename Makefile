include theos/makefiles/common.mk

TWEAK_NAME = SFBattery
SFBattery_FILES = Tweak.xm
SFBattery_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
