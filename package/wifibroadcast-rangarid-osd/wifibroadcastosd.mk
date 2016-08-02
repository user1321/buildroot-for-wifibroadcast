################################################################################
#
# wifibroadcast osd
#
################################################################################

WIFIBROADCASTOSD_VERSION = master
WIFIBROADCASTOSD_SITE = $(call github,SamuelBrucksch,wifibroadcast_osd,$(WIFIBROADCASTOSD_VERSION))
WIFIBROADCASTOSD_INSTALL_STAGING = YES

define LIBFOO_BUILD_CMDS
     $(MAKE) CC=$(TARGET_CC) LD=$(TARGET_LD) -C $(@D) all
endef

$(eval $(generic-package))
