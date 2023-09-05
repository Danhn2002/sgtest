include $(TOPDIR)/rules.mk

# Name, version and release number
# The name and version of your package are used to define the variable to point to the build directory of your package: $(PKG_BUILD_DIR)
PKG_NAME:=sgagent
PKG_VERSION:=21.0.1.1
PKG_RELEASE:=$(AUTORELEASE)

# Source settings (i.e. where to find the source codes)
# This is a custom variable, used below
SOURCE_DIR:=$(TOPDIR)/package/sgagent/src

include $(INCLUDE_DIR)/package.mk

# Package definition; instructs on how and where our package will appear in the overall configuration menu ('make menuconfig')
define Package/sgagent
  SECTION:=safegate
  CATEGORY:=SafeGate
  DEPENDS:=+libiwinfo-lua +lua +luabitop +luasec +luasocket +ipset
  TITLE:=sgagent
endef

# Package description; a more verbose description on what our package does
define Package/sgagent/description
  Product of Smart Cyber Security JSC Company.
endef

# Package preparation instructions; create the build directory and copy the source code. 
# The last command is necessary to ensure our preparation instructions remain compatible with the patching system.
define Build/Prepare
		mkdir -p $(PKG_BUILD_DIR)
		cp -r $(SOURCE_DIR)/* $(PKG_BUILD_DIR)
		$(Build/Patch)
endef

# Package install instructions; create a directory inside the package to hold our executable, and then copy the executable we built previously into the folder
define Package/sgagent/install
		# create root & agent default
		$(INSTALL_DIR) $(1)/usr/share/SafeGate/bin
		$(INSTALL_BIN) $(PKG_BUILD_DIR)/usr/share/SafeGate/bin/*.lua $(1)/usr/share/SafeGate/bin
		
		# conf
		$(INSTALL_DIR) $(1)/usr/share/SafeGate/bin/conf
		$(INSTALL_BIN) $(PKG_BUILD_DIR)/usr/share/SafeGate/bin/conf/*.lua $(1)/usr/share/SafeGate/bin/conf
		#$(INSTALL_BIN) $(PKG_BUILD_DIR)/usr/share/SafeGate/bin/conf/*.pub $(1)/usr/share/SafeGate/bin/conf
		
		#database
		$(INSTALL_DIR) $(1)/usr/share/SafeGate/bin/database
		$(INSTALL_BIN) $(PKG_BUILD_DIR)/usr/share/SafeGate/bin/database/*.lua $(1)/usr/share/SafeGate/bin/database
		
		# deploy
		$(INSTALL_DIR) $(1)/usr/share/SafeGate/bin/deploy/etc/SafeGate
		$(INSTALL_BIN) $(PKG_BUILD_DIR)/usr/share/SafeGate/bin/deploy/etc/SafeGate/*.json $(1)/usr/share/SafeGate/bin/deploy/etc/SafeGate
		$(INSTALL_DIR) $(1)/usr/share/SafeGate/bin/deploy/etc/SafeGate/database
		$(INSTALL_BIN) $(PKG_BUILD_DIR)/usr/share/SafeGate/bin/deploy/etc/SafeGate/database/* $(1)/usr/share/SafeGate/bin/deploy/etc/SafeGate/database
		
		$(INSTALL_DIR) $(1)/usr/share/SafeGate/bin/deploy/tmp/SafeGate
		$(INSTALL_BIN) $(PKG_BUILD_DIR)/usr/share/SafeGate/bin/deploy/tmp/SafeGate/*.log $(1)/usr/share/SafeGate/bin/deploy/tmp/SafeGate
		$(INSTALL_BIN) $(PKG_BUILD_DIR)/usr/share/SafeGate/bin/deploy/tmp/SafeGate/*.sqlite3 $(1)/usr/share/SafeGate/bin/deploy/tmp/SafeGate
		
		#lib
		$(INSTALL_DIR) $(1)/usr/share/SafeGate/bin/lib/crontab
		$(INSTALL_BIN) $(PKG_BUILD_DIR)/usr/share/SafeGate/bin/lib/crontab/*.lua $(1)/usr/share/SafeGate/bin/lib/crontab
		
		$(INSTALL_DIR) $(1)/usr/share/SafeGate/bin/lib/json
		$(INSTALL_BIN) $(PKG_BUILD_DIR)/usr/share/SafeGate/bin/lib/json/*.lua $(1)/usr/share/SafeGate/bin/lib/json
		
		$(INSTALL_DIR) $(1)/usr/share/SafeGate/bin/lib/log
		$(INSTALL_BIN) $(PKG_BUILD_DIR)/usr/share/SafeGate/bin/lib/log/*.lua $(1)/usr/share/SafeGate/bin/lib/log
		
		$(INSTALL_DIR) $(1)/usr/share/SafeGate/bin/lib/log/logging
		$(INSTALL_BIN) $(PKG_BUILD_DIR)/usr/share/SafeGate/bin/lib/log/logging/*.lua $(1)/usr/share/SafeGate/bin/lib/log/logging
		
		$(INSTALL_DIR) $(1)/usr/share/SafeGate/bin/lib/mqtt
		$(INSTALL_BIN) $(PKG_BUILD_DIR)/usr/share/SafeGate/bin/lib/mqtt/*.lua $(1)/usr/share/SafeGate/bin/lib/mqtt
		
		$(INSTALL_DIR) $(1)/usr/share/SafeGate/bin/lib/try
		$(INSTALL_BIN) $(PKG_BUILD_DIR)/usr/share/SafeGate/bin/lib/try/*.lua $(1)/usr/share/SafeGate/bin/lib/try
		
		#modules
		$(INSTALL_DIR) $(1)/usr/share/SafeGate/bin/modules/enduserstats
		$(INSTALL_BIN) $(PKG_BUILD_DIR)/usr/share/SafeGate/bin/modules/enduserstats/*.lua $(1)/usr/share/SafeGate/bin/modules/enduserstats
		
		#object
		$(INSTALL_DIR) $(1)/usr/share/SafeGate/bin/object
		$(INSTALL_BIN) $(PKG_BUILD_DIR)/usr/share/SafeGate/bin/object/*.lua $(1)/usr/share/SafeGate/bin/object
		
		#schedules
		$(INSTALL_DIR) $(1)/usr/share/SafeGate/bin/schedules
		$(INSTALL_BIN) $(PKG_BUILD_DIR)/usr/share/SafeGate/bin/schedules/*.lua $(1)/usr/share/SafeGate/bin/schedules
		
		#serviceDb
		$(INSTALL_DIR) $(1)/usr/share/SafeGate/bin/serviceDb
		$(INSTALL_BIN) $(PKG_BUILD_DIR)/usr/share/SafeGate/bin/serviceDb/*.lua $(1)/usr/share/SafeGate/bin/serviceDb
		
		#serviceUtil
		$(INSTALL_DIR) $(1)/usr/share/SafeGate/bin/serviceUtil
		$(INSTALL_BIN) $(PKG_BUILD_DIR)/usr/share/SafeGate/bin/serviceUtil/*.lua $(1)/usr/share/SafeGate/bin/serviceUtil	
		
		#utility
		$(INSTALL_DIR) $(1)/usr/share/SafeGate/bin/utility
		$(INSTALL_BIN) $(PKG_BUILD_DIR)/usr/share/SafeGate/bin/utility/*.lua  $(1)/usr/share/SafeGate/bin/utility
		
		#init
		$(INSTALL_DIR) $(1)/etc/init.d
		$(INSTALL_BIN) $(PKG_BUILD_DIR)/etc/init.d/sgagent $(1)/etc/init.d/
		
		#etc/SafeGate
		$(INSTALL_DIR) $(1)/etc/SafeGate/conf
		$(INSTALL_DATA) $(PKG_BUILD_DIR)/etc/SafeGate/conf/* $(1)/etc/SafeGate/conf
		
		#usr/share/SafeGate/conf
		$(INSTALL_DIR) $(1)/usr/share/SafeGate/conf
		$(INSTALL_DATA) $(PKG_BUILD_DIR)/usr/share/SafeGate/conf/* $(1)/usr/share/SafeGate/conf
		
		#safegate.sh
		$(INSTALL_BIN) $(PKG_BUILD_DIR)/usr/share/SafeGate/*.sh $(1)/usr/share/SafeGate
endef

# This command is always the last, it uses the definitions and variables we give above in order to get the job done
$(eval $(call BuildPackage,sgagent))
