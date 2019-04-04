PKG_NAME="mpp_rk3399"
PKG_VERSION="6160c771a9ff59b2031237e205bcfd1c74de6b96"
PKG_SHA256="b62733e0c5bbeb1ea32f7e47958fb49d36144eca5d23107ed82915a30606af8d"
PKG_SOURCE_DIR="mpp_rk3399-${PKG_VERSION}*"
PKG_SITE="https://github.com/numbqq/mpp_rk3399"
PKG_URL="https://github.com/numbqq/mpp_rk3399/archive/$PKG_VERSION.tar.gz"
PKG_ARCH="arm64 armhf"
PKG_LICENSE="GPL"
PKG_SHORTDESC="Rockchip Media Process Platform deb packages for RK3399"
PKG_SOURCE_NAME="mpp_rk3399-${PKG_VERSION}.tar.gz"
PKG_NEED_BUILD="NO"

make_target() {
	:
}

makeinstall_target() {
	mkdir -p $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/mpp
	# Remove old debs
	rm -rf $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/mpp/*
	cp ${DISTRIB_RELEASE}/${DISTRIB_ARCH}/*.deb $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/mpp
}

