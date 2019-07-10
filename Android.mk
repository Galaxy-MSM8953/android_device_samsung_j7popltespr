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

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),j7popltespr)
include $(call all-makefiles-under,$(LOCAL_PATH))

# ADSP
ADSP_IMAGES := \
	adsp.b00 adsp.b01 adsp.b02 adsp.b03 adsp.b04 adsp.b05 adsp.b06 adsp.b07 \
	adsp.b08 adsp.b09 adsp.b10 adsp.b11 adsp.b12 adsp.b13 adsp.mdt

ADSP_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(ADSP_IMAGES)))
$(ADSP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "ADSP Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware-modem/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(ADSP_SYMLINKS)

# Adreno
ADRENO_IMAGES := \
    a506_zap.b00 a506_zap.b01 a506_zap.b02 a506_zap.mdt

ADRENO_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(ADRENO_IMAGES)))
$(ADRENO_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Adreno Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(ADRENO_SYMLINKS)

# CMN
CMN_IMAGES := \
	cmnlib64.b00 cmnlib64.b01 cmnlib64.b02 cmnlib64.b03 cmnlib64.b04 cmnlib64.b05 cmnlib64.mdt \
	cmnlib.b00 cmnlib.b01 cmnlib.b02 cmnlib.b03 cmnlib.b04 cmnlib.b05 cmnlib.mdt

CMN_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_ETC)/firmware/,$(notdir $(CMN_IMAGES)))
$(CMN_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "CMN firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(CMN_SYMLINKS)

# CPE
CPE_IMAGES := \
	cpe_9335.b08 cpe_9335.b09 cpe_9335.b11 cpe_9335.b14 cpe_9335.b16 cpe_9335.b18 \
	cpe_9335.b19 cpe_9335.b20 cpe_9335.b22 cpe_9335.b24 cpe_9335.b26 cpe_9335.b28 \
	cpe_9335.b29 cpe_9335.mdt

CPE_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_ETC)/firmware/,$(notdir $(CPE_IMAGES)))
$(CPE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "CPE firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(CPE_SYMLINKS)

# CPPF
CPPF_IMAGES := \
	cppf.b00 cppf.b01 cppf.b02 cppf.b03 cppf.b04 \
	cppf.b05 cppf.b06 cppf.mdt

CPPF_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_ETC)/firmware/,$(notdir $(CPPF_IMAGES)))
$(CPPF_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "CPPF firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(CPPF_SYMLINKS)

# DHSECAPP
DHSECAPP_IMAGES := \
	dhsecapp.b00 dhsecapp.b01 dhsecapp.b02 dhsecapp.b03 dhsecapp.b04 dhsecapp.b05 \
	dhsecapp.b06 dhsecapp.mdt

DHSECAPP_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_ETC)/firmware/,$(notdir $(DHSECAPP_IMAGES)))
$(DHSECAPP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "DHSECAPP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(DHSECAPP_SYMLINKS)

# DMverity
DMV_IMAGES := \
	dmverity.b00 dmverity.b01 dmverity.b02 dmverity.b03 dmverity.b04 dmverity.b05 \
	dmverity.b06 dmverity.mdt

DMV_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(DMV_IMAGES)))
$(DMV_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "DMV firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(DMV_SYMLINKS)

# GPTEST
GPTEST_IMAGES := \
    gptest.b00 gptest.b01 gptest.b02 gptest.b03 gptest.b04 gptest.b05 gptest.b06 gptest.mdt

GPTEST_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_ETC)/firmware/,$(notdir $(GPTEST_IMAGES)))
$(GPTEST_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "GPTEST firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

# ISDB
ISDB_IMAGES := \
	isdbtmm.b00 isdbtmm.b01 isdbtmm.b02 isdbtmm.b03 isdbtmm.b04 isdbtmm.b05 \
	isdbtmm.b06 isdbtmm.mdt

ISDB_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_ETC)/firmware/,$(notdir $(ISDB_IMAGES)))
$(ISDB_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "ISDB firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(ISDB_SYMLINKS)

# Keymaster
KEYMASTER_IMAGES := \
	keymaste.b00 keymaste.b01 keymaste.b02 keymaste.b03 keymaste.b04 keymaste.b05 \
	keymaste.b06 keymaste.mdt

KEYMASTER_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_ETC)/firmware/,$(notdir $(KEYMASTER_IMAGES)))
$(KEYMASTER_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Keymaster Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(KEYMASTER_SYMLINKS)

# LKSECAPP
LKSECAPP_IMAGES := \
	lksecapp.b00 lksecapp.b01 lksecapp.b02 lksecapp.b03 lksecapp.b04 lksecapp.b05 \
	lksecapp.b06 lksecapp.mdt
    
LKSECAPP_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(LKSECAPP_IMAGES)))
$(LKSECAPP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "LKSECAPP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(LKSECAPP_SYMLINKS)

# MBA
MBA_IMAGES := \
	mba.mbn

MBA_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(MBA_IMAGES)))
$(MBA_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "MBA firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware-modem/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MBA_SYMLINKS)

# Modem
MODEM_IMAGES := \
	modem.b00 modem.b01 modem.b02 modem.b04 modem.b05 \
	modem.b06 modem.b07 modem.b08 modem.b09 modem.b10 \
	modem.b11 modem.b12 modem.b13 modem.b16 modem.b17 \
	modem.b18 modem.b19 modem.b20 modem.b21 modem.mdt \
	modem_pr

MODEM_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(MODEM_IMAGES)))
$(MODEM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Modem firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware-modem/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MODEM_SYMLINKS)

# MDTP
MDTP_IMAGES := \
	mdtp.b00 mdtp.b01 mdtp.b02 mdtp.b03 mdtp.b04 mdtp.b05 mdtp.b06 mdtp.mdt

MDTP_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_ETC)/firmware/,$(notdir $(MDTP_IMAGES)))
$(MDTP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "MDTP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MDTP_SYMLINKS)

# MLdap
MLD_IMAGES := \
	mldap.b00 mldap.b01 mldap.b02 mldap.b03 mldap.b04 mldap.b05 mldap.b06 mldap.mdt

MLD_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_ETC)/firmware/,$(notdir $(MLD_IMAGES)))
$(MLD_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "MCP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MLD_SYMLINKS)

# Prov
PROV_IMAGES := \
	prov.b00 prov.b01 prov.b02 prov.b03 prov.b04 prov.b05 prov.b06 prov.mtd \

PROV_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(PROV_IMAGES)))
$(PROV_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Prov firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(PROV_SYMLINKS)

# SECstor
SECSTOR_IMAGES := \
	sec_stor.b00 sec_stor.b01 sec_stor.b02 sec_stor.b03 sec_stor.b04 sec_stor.b05 \
	sec_stor.b06 sec_stor.mdt

SECSTOR_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_ETC)/firmware/,$(notdir $(SECSTOR_IMAGES)))
$(SECSTOR_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Secstor firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SECSTOR_SYMLINKS)

# SMPLAP
SMPLAP_IMAGES := \
	smplap32.b00 smplap32.b01 smplap32.b02 smplap32.b03 smplap32.b04 smplap32.b05 \
	smplap32.b06 smplap32.mdt \
	smplap64.b00 smplap64.b01 smplap64.b02 smplap64.b03 smplap64.b04 smplap64.b05 \
	smplap64.b06 smplap64.mdt

SMPLAP_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_ETC)/firmware/,$(notdir $(SMPLAP_IMAGES)))
$(SMPLAP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "SMPLAP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SMPLAP_SYMLINKS)

# SecureMM
SECUREMM_IMAGES := \
	securemm.b00 securemm.b01 securemm.b02 securemm.b03 securemm.b04 securemm.b05 \
	securemm.b06 securemm.mdt

SECUREMM_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_ETC)/firmware/,$(SECUREMM_IMAGES))
$(SECUREMM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "SecureMM firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

# SEM
SEM_IMAGES := \
	sem.b00 sem.b01 sem.b02 sem.b03 sem.b04 sem.b05 sem.b06 sem.mdt

SEM_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_ETC)/firmware/,$(notdir $(SEM_IMAGES)))
$(SEM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "SEM firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SEM_SYMLINKS)

# SKM
SKM_IMAGES := \
	skm.b00 skm.b01 skm.b02 skm.b03 skm.b04 skm.b05 skm.b06 skm.mdt

SKM_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_ETC)/firmware/,$(notdir $(SKM_IMAGES)))
$(SKM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "SKM firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SKM_SYMLINKS)

# SKMM TA
SKMM_TA_IMAGES := \
	skmm_ta.b00 skmm_ta.b01 skmm_ta.b02 skmm_ta.b03 skmm_ta.b04 skmm_ta.b05 \
	skmm_ta.b06 skmm_ta.mdt

SKMM_TA_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_ETC)/firmware/,$(notdir $(SKMM_TA_IMAGES)))
$(SKMM_TA_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "SKMM firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SKMM_TA_SYMLINKS)

# SSHDcap
SSHDCPAP_IMAGES := \
	sshdcpap.b00 sshdcpap.b01 sshdcpap.b02 sshdcpap.b03 sshdcpap.b04 sshdcpap.b05 \
	sshdcpap.b06 sshdcpap.mdt

SSHDCPAP_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_ETC)/firmware/,$(notdir $(SSHDCPAP_IMAGES)))
$(SSHDCPAP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "SSHDCPAP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SSHDCPAP_SYMLINKS)

# Tbase
TBASE_IMAGES := \
	tbase.b00 tbase.b01 tbase.b02 tbase.b03 tbase.b04 tbase.b05 tbase.b06 \
	tbase.mdt

TBASE_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_ETC)/firmware/,$(notdir $(TBASE_IMAGES)))
$(TBASE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "TBase firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(TBASE_SYMLINKS)

# QDSP6M
QDSP6M_IMAGES := \
    qdsp6m.qdb

QDSP6M_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_ETC)/firmware/,$(notdir $(QDSP6M_IMAGES)))
$(QDSP6M_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "QDSP6M firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware-modem/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(QDSP6M_SYMLINKS)

# QMP
QMP_IMAGES := \
	qmpsecap.b00 qmpsecap.b01 qmpsecap.b02 qmpsecap.b03 qmpsecap.b04 qmpsecap.b05 \
	qmpsecap.b06 qmpsecap.mdt

QMP_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_ETC)/firmware/,$(notdir $(QMP_IMAGES)))
$(QMP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "QMP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(QMP_SYMLINKS)

RFS_MSM_ADSP_SYMLINKS := $(TARGET_OUT)/rfs/msm/adsp/
$(RFS_MSM_ADSP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating RFS MSM ADSP folder structure: $@"
	@rm -rf $@
	@mkdir -p $(dir $@)/readonly
	$(hide) ln -sf /data/tombstones/lpass $@/ramdumps
	$(hide) ln -sf /persist/rfs/msm/adsp $@/readwrite
	$(hide) ln -sf /persist/rfs/shared $@/shared
	$(hide) ln -sf /persist/hlos_rfs/shared $@/hlos
	$(hide) ln -sf /firmware $@/readonly/firmware

RFS_MSM_MPSS_SYMLINKS := $(TARGET_OUT)/rfs/msm/mpss/
$(RFS_MSM_MPSS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating RFS MSM MPSS folder structure: $@"
	@rm -rf $@
	@mkdir -p $(dir $@)/readonly
	$(hide) ln -sf /data/tombstones/modem $@/ramdumps
	$(hide) ln -sf /persist/rfs/msm/mpss $@/readwrite
	$(hide) ln -sf /persist/rfs/shared $@/shared
	$(hide) ln -sf /persist/hlos_rfs/shared $@/hlos
	$(hide) ln -sf /firmware $@/readonly/firmware

ALL_DEFAULT_INSTALLED_MODULES += $(RFS_MSM_ADSP_SYMLINKS) $(RFS_MSM_MPSS_SYMLINKS)

# TZ
TZ_IMAGES := \
	tz_ccm.b00 tz_ccm.b01 tz_ccm.b02 tz_ccm.b03 tz_ccm.b04 \
	tz_ccm.b05 tz_ccm.b06 tz_ccm.mdt \
	tz_otp.b00 tz_otp.b01 tz_otp.b02 tz_otp.b03 tz_otp.b04 \
	tz_otp.b05 tz_otp.b06 tz_otp.mdt

TZ_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_ETC)/firmware/,$(notdir $(TZ_IMAGES)))
$(TZ_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "tz firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(TZ_SYMLINKS)

# Tima
TIMA_IMAGES := \
	tima_atn.b00 tima_atn.b01 tima_atn.b02 tima_atn.b03 tima_atn.b04 \
	tima_atn.b05 tima_atn.b06 tima_atn.mdt \
	tima_key.b00 tima_key.b01 tima_key.b02 tima_key.b03 tima_key.b04 \
	tima_key.b05 tima_key.b06 tima_key.mdt \
	tima_lkm.b00 tima_lkm.b01 tima_lkm.b02 tima_lkm.b03 tima_lkm.b04 \
	tima_lkm.b05 tima_lkm.b06 tima_lkm.mdt \
	tima_pkm.b00 tima_pkm.b01 tima_pkm.b02 tima_pkm.b03 tima_pkm.b04 \
	tima_pkm.b05 tima_pkm.b06 tima_pkm.mdt

TIMA_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_ETC)/firmware/,$(notdir $(TIMA_IMAGES)))
$(TIMA_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Tima firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(TIMA_SYMLINKS)

# Venus
VENUS_IMAGES := \
	venus.b00 venus.b01 venus.b02 venus.b03 venus.b04 venus.mdt

VENUS_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(VENUS_IMAGES)))
$(VENUS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Venus Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(VENUS_SYMLINKS)

# Wcnss
WCNSS_IMAGES := \
	wcnss.b00 wcnss.b01 wcnss.b02 wcnss.b04 wcnss.b06 \
	wcnss.b09 wcnss.b10 wcnss.b11 wcnss.b12 wcnss.mdt

WCNSS_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_ETC)/firmware/,$(notdir $(WCNSS_IMAGES)))
$(WCNSS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "WCNSS firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(WCNSS_SYMLINKS)

# Widevine
WV_IMAGES := \
	widevine.b00 widevine.b01 widevine.b02 widevine.b03 widevine.b04 \
	widevine.b05 widevine.b06 widevine.mdt

WV_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_ETC)/firmware/,$(notdir $(WV_IMAGES)))
$(WV_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Widevine firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(WV_SYMLINKS)

include $(CLEAR_VARS)

endif
