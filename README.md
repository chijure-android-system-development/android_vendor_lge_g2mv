# android_vendor_lge_g2mv

Proprietary blobs for the LG G2 Mini LTE **D625** (`g2mv`) on CyanogenMod 11.

Generated from stock `D62510c` via `device/lge/g2mv/extract-files.sh` /
`setup-makefiles.sh`.

## UEI IR (Quick Remote)

Also includes extractable UEI MXQ616 bits listed in `proprietary-files.txt`
(`com.uei.control`, `librctransport`, `serialport.txt`). The patched
`LGQRemote.apk` / platform-resigned `QuicksetSDK.apk` are built from
`device/lge/g2mv/prebuilt/uei/` as `PRODUCT_PACKAGES` (not copied from this
tree) so CM can apply the KitKat-safe dex patches and platform cert.

## Usage

```xml
<project path="vendor/lge/g2mv"
         name="chijure-android-system-development/android_vendor_lge_g2mv"
         remote="github"
         revision="cm-11.0" />
```

`device/lge/g2mv/device.mk` already does
`inherit-product-if-exists, vendor/lge/g2mv/g2mv-vendor.mk`.
