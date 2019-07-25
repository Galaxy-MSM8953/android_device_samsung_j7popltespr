#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    vendor.audio_hal.period_size=192 \
    ro.vendor.audio.sdk.fluencetype=none \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=false \
    persist.vendor.audio.fluence.speaker=true \
    vendor.audio.tunnel.encode=false \
    vendor.audio.offload.buffer.size.kb=64 \
    audio.offload.min.duration.secs=30 \
    audio.offload.video=true \
    vendor.audio.offload.track.enable=true \
    audio.deep_buffer.media=true \
    vendor.voice.path.for.pcm.voip=true \
    vendor.audio.offload.multiaac.enable=true \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false \
    vendor.audio.offload.multiple.enabled=false \
    vendor.audio.offload.passthrough=false \
    ro.vendor.audio.sdk.ssr=false \
    vendor.audio.offload.gapless.enabled=true \
    vendor.audio.safx.pbe.enabled=true \
    vendor.audio.parser.ip.buffer.size=262144 \
    vendor.audio.playback.mch.downsample=true \
    vendor.audio.use.sw.alac.decoder=true \
    vendor.audio.use.sw.ape.decoder=true \
    vendor.audio.pp.asphere.enabled=false \
    vendor.voice.playback.conc.disabled=true \
    vendor.voice.record.conc.disabled=false \
    vendor.voice.voip.conc.disabled=true \
    vendor.voice.conc.fallbackpath=deep-buffer \
    persist.vendor.audio.speaker.prot.enable=false \
    vendor.audio.hw.aac.encoder=true \
    ro.config.vc_call_vol_steps=7

# Boot
PRODUCT_PROPERTY_OVERRIDES += \
    sys.vendor.shutdown.waittime=500 \

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    bluetooth.hfp.client=1 \
    qcom.bluetooth.soc=rome \
    ro.bluetooth.hfp.ver=1.7 \
    ro.bt.bdaddr_path=/efs/bluetooth/bt_addr \
    ro.qualcomm.bt.hci_transport=smd \
    vendor.qcom.bluetooth.soc=rome

# Dalvik
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=267

# FRP
#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.frp.pst=/dev/block/persistent

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.enable_hwc_vds=1 \
    debug.sf.hw=0 \
    debug.sf.latch_unsignaled=1 \
    debug.egl.hw=0 \
    debug.gralloc.enable_fb_ubwc=1 \
    ro.opengles.version=196610 \
    sdm.debug.disable_skip_validate=1 \
    sys.disable_ext_animation=1

# OEM Unlock reporting
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.oem_unlock_supported=1

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    persist.cne.feature=0 \
    persist.data.dpm.enable=true \
    persist.data.dropssdp=false \
    persist.data.ibfc.enable=true \
    persist.data.mode=concurrent \
    persist.data.netmgrd.qos.enable=false \
    persist.radio.atfwd.start=true \
    persist.radio.multisim.config=ss \
    persist.radio.sib16_support=1 \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.sib16_support=1 \
    rild.libpath=/vendor/lib64/libsec-ril.so \
    ro.multisim.simslotcount=1 \
    ro.radio.noril=no \
    ro.telephony.default_cdma_sub=0 \
    ro.use_data_netmgrd=true

# Samsung Specific
PRODUCT_PROPERTY_OVERRIDES += \
    ro.debug_level=0x4f4d \
    ro.product_ship=true

# Samsung-Specific (RIL)
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.sec.rild.libpath=/vendor/lib64/libsec-ril.so
