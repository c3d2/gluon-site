GLUON_SITE_PACKAGES := \
	gluon-mesh-batman-adv-15 \
	gluon-alfred \
	gluon-announced \
	gluon-ebtables-filter-multicast \
	gluon-ebtables-filter-ra-dhcp \
	gluon-radvd \
	gluon-status-page \
	gluon-ddmesh \
	bmxd \
	iwinfo \
	iptables \
	haveged \
	wpad-mini \
	-ppp \
	-ppp-mod-pppoa \
	-ppp-mod-pppoe \
	-gluon-luci-admin \
	-luci-base \
	-luci-lib-nixio


DEFAULT_GLUON_RELEASE := 0.6+exp$(shell date '+%Y%m%d')

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_PRIORITY ?= 0

GLUON_LANGS ?= en de
