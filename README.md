# Device Tree for Samsung Galaxy S7 QCOM (heroqlte)

## Disclaimer

```xxx
/*
 * Your warranty will be VOID after installing a custom ROM.
 *
 * Get notified yourself that I am not responsible for bricked devices, dead SD cards,
 * thermonuclear war, or you getting fired because the alarm app failed.
 * Please do some research if you have any concerns about features included in this ROM
 * before flashing it!
 * YOU are choosing to make these modifications,
 * and if you point the finger at me for messing up your device,
 * I will laugh at you.
 */
```

## Local manifest

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
    <project name="ivanmeler/android_device_samsung_msm8996-common"
        path="device/samsung/msm8996-common"
        revision="lineage-18.1"
        remote="github" />
    <project name="ivanmeler/android_device_samsung_heroqlte"
        path="device/samsung/heroqlte"
        revision="lineage-18.1"
        remote="github" />
    <project name="ivanmeler/proprietary_vendor_samsung_msm8996"
        path="vendor/samsung"
        revision="lineage-18.1"
        remote="github" />
    <project name="ivanmeler/android_kernel_samsung_msm8996"
        path="kernel/samsung/msm8996"
        revision="lineage-18.1-caf"
        remote="github" />

    <project name="LineageOS/android_device_samsung_qcom-common"
        path="device/samsung/qcom-common"
        revision="lineage-18.1"
        remote="github" />
    <project name="LineageOS/android_hardware_samsung"
        path="hardware/samsung"
        revision="lineage-18.1"
        remote="github" />
</manifest>
```

## License

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License.

You may obtain a copy of the License at [https://www.apache.org/licenses/LICENSE-2.0.html]
