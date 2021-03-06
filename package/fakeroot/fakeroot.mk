################################################################################
#
# fakeroot
#
################################################################################

FAKEROOT_VERSION = 1.20.2
FAKEROOT_SOURCE = fakeroot_$(FAKEROOT_VERSION).orig.tar.bz2
FAKEROOT_SITE = http://snapshot.debian.org/archive/debian/20141005T221953Z/pool/main/f/fakeroot
# Force capabilities detection off
# For now these are process capabilities (faked) rather than file
# so they're of no real use
HOST_FAKEROOT_CONF_ENV = ac_cv_func_capset=no
FAKEROOT_LICENSE = GPLv3+
FAKEROOT_LICENSE_FILES = COPYING

$(eval $(host-autotools-package))
