include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI Enterprise Dashboard
LUCI_DEPENDS:=+luci-base
LUCI_PKGARCH:=all

PKG_NAME:=luci-app-enterprise-dashboard
PKG_VERSION:=0.1.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/share/luci/menu.d
	$(INSTALL_DATA) ./root/usr/share/luci/menu.d/* $(1)/usr/share/luci/menu.d/

	$(INSTALL_DIR) $(1)/www/luci-static/resources/view/enterprise-dashboard
	$(INSTALL_DATA) ./htdocs/luci-static/resources/view/enterprise-dashboard/* \
		$(1)/www/luci-static/resources/view/enterprise-dashboard/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
