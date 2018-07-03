/*
   Copyright (c) 2014, The Linux Foundation. All rights reserved.

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <fstream>

#include "vendor_init.h"
#include "property_service.h"
#include "log.h"
#include "util.h"

#include "init_msm8953.h"

void set_rild_libpath(char const *variant)
{
    std::string libpath("/system/vendor/lib/libsec-ril.");
    libpath += variant;
    libpath += ".so";

    property_override("rild.libpath", libpath.c_str());
}

void cdma_properties(char const *operator_alpha,
        char const *operator_numeric,
        char const *rild_lib_variant)
{
    /* Dynamic CDMA Properties */
    property_set("ro.cdma.home.operator.alpha", operator_alpha);
    property_set("ro.cdma.home.operator.numeric", operator_numeric);
    set_rild_libpath(rild_lib_variant);

    /* Static CDMA Properties */
    property_set("ro.telephony.default_cdma_sub", "1");
    property_set("telephony.lteOnCdmaDevice", "1");
    property_set("gsm.operator.numeric", "310000");
    property_set("persist.eons.enabled", "true");
    property_override("ro.build.fingerprint", "samsung/j7popltespr/j7popltespr:7.0/NRD90M/J727PVPU3ARC2:user/release-keys");
    property_override("ro.build.description", "j7popltespr-user 7.0 NRD90M J727PVPU3ARC2 release-keys");
    property_override("ro.product.model", "SM-J727P");
}

void init_target_properties()
{
    std::string platform = property_get("ro.board.platform");
    if (platform != ANDROID_TARGET)
        return;

    std::string carrier = property_get("ro.boot.carrierid");

    if (carrier == "BST") {
        property_set("ro.cdma.home.operator.alpha", "Boost Mobile");
        property_set("ro.com.google.clientidbase.ms", "android-boost-us");
        property_set("ro.com.google.clientidbase.am", "android-boost-us");
        property_set("ro.com.google.clientidbase.yt", "android-boost-us");
        cdma_properties("Boost Mobile", "310000", "spr");
    } else if (carrier == "VMU") {
        property_set("ro.com.google.clientidbase.ms", "android-virgin-us");
        property_set("ro.com.google.clientidbase.am", "android-virgin-us");
        property_set("ro.com.google.clientidbase.yt", "android-virgin-us");
        cdma_properties("Virgin Mobile", "310000", "spr");
    } else if (carrier == "SPR") {
        property_set("ro.com.google.clientidbase.ms", "android-sprint-us");
        property_set("ro.com.google.clientidbase.am", "android-sprint-us");
        property_set("ro.com.google.clientidbase.yt", "android-sprint-us");
        cdma_properties("Sprint", "310000", "spr");
    } else if (carrier == "XAS") {
        property_set("ro.com.google.clientidbase.ms", "android-sprint-mvno-us");
        property_set("ro.com.google.clientidbase.am", "android-sprint-mvno-us");
        property_set("ro.com.google.clientidbase.yt", "android-sprint-mvno-us");
        cdma_properties("Chameleon", "310000", "spr");
    } else if (carrier == "USC") {
        property_set("ro.com.google.clientidbase.ms", "android-uscellular-us");
        property_set("ro.com.google.clientidbase.am", "android-uscellular-us");
        property_set("ro.com.google.clientidbase.yt", "android-samsung");
        property_set("ro.cdma.home.operator.numeric", "311580");
        property_set("gsm.operator.numeric", "311580");
        property_set("persist.eons.enabled", "false");
        property_override("ro.build.fingerprint", "samsung/j7poplteusc/j7poplteusc:7.0/NRD90M/J727R4TYS1ARC1:user/release-keys");
        property_override("ro.build.description", "j7poplteusc-user 7.0 NRD90M J727R4TYS1ARC1 release-keys");
        property_override("ro.product.model", "SM-J727PR4");
        set_rild_libpath("usc");
    } else {
        ERROR("Unknown mobile carrier");
    }

    std::string device = property_get("ro.product.device");
    INFO("Found carrier id: %s, setting build properties for %s device\n", carrier.c_str(), device.c_str());
}
