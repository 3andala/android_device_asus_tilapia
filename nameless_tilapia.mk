# Inherit APNs list
$(call inherit-product, vendor/nameless/config/apns.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/nameless/config/common.mk)


# Inherit device configuration
$(call inherit-product, device/asus/tilapia/full_tilapia.mk)

## Device identifier. This must come after all inclusions
PRODUCT_RELEASE_NAME := Nexus7-GSM
PRODUCT_DEVICE := tilapia
PRODUCT_NAME := nameless_tilapia
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasig BUILD_FINGERPRINT="google/nakasig/tilapia:4.4/KRT16S/920375:user/release-keys" PRIVATE_BUILD_DESC="nakasig-user 4.4 KRT16S 920375 release-keys"
