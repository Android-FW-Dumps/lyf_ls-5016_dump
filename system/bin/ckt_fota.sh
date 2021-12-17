#!/system/bin/sh

PATH=/sbin:/system/sbin:/system/bin:/system/xbin
export PATH

fota_rlc01(){
    src_patch='/system/back_up'
    dst_patch='/data/app'

    apk_array=("JioBeat" "JioChat" "JioMoney" "JioPlayProd" "JioVod" "JioXpress" "MyJio" "NVConsumerProd" "LYFCare" "Mshop")

    for ii in ${apk_array[@]}
    do
        apk_modename=$ii
        rm -r $dst_patch/$apk_modename
        mkdir -p $dst_patch/$apk_modename
        chmod 0755 $dst_patch/$apk_modename
        cp $src_patch/$apk_modename/$apk_modename.apk $dst_patch/$apk_modename/
        chmod 0644 $dst_patch/$apk_modename/$apk_modename.apk
        chown -R system:system $dst_patch/$apk_modename
    done
}
fota_rlc03(){
    src_patch='/system/back_up'
    dst_patch='/data/app'

    apk_array=("JioBeat" "JioChat" "JioMags" "JioMoney" "JioPlayProd" "JioVod" "JioXpress" "MyJio" "NVConsumerProd" "LYFCare" "Mshop")

    for ii in ${apk_array[@]}
    do
        apk_modename=$ii
        rm -r $dst_patch/$apk_modename
        mkdir -p $dst_patch/$apk_modename
        chmod 0755 $dst_patch/$apk_modename
        cp $src_patch/$apk_modename/$apk_modename.apk $dst_patch/$apk_modename/
        chmod 0644 $dst_patch/$apk_modename/$apk_modename.apk
        chown -R system:system $dst_patch/$apk_modename
    done
}

fota_rlc05(){
    src_patch='/system/back_up'
    dst_patch='/data/app'

    apk_array=("JioBeat" "JioChat" "JioMoney" "JioPlayProd" "JioVod" "JioXpress" "MyJio" "LYFCare" "Mshop")

    for ii in ${apk_array[@]}
    do
        apk_modename=$ii
        rm -r $dst_patch/$apk_modename
        mkdir -p $dst_patch/$apk_modename
        chmod 0755 $dst_patch/$apk_modename
        cp $src_patch/$apk_modename/$apk_modename.apk $dst_patch/$apk_modename/
        chmod 0644 $dst_patch/$apk_modename/$apk_modename.apk
        chown -R system:system $dst_patch/$apk_modename
    done
}
fota_rlc06(){
    src_patch='/system/back_up'
    dst_patch='/data/app'

    apk_array=("JioBeat" "JioChat" "JioDrive" "JioJoin" "JioMags" "JioMoney" "JioNet" "JioNewsExpress" "JioPlay" "JioPlayProd" "JioSecurity"  "JioSetting" "JioSetupWizard" "JioVod" "JioXpress" "LYFCare" "Mshop" "MyJio" "NetVelocity" "NVConsumerProd")
    #apk_array=("JioBeat" "JioChat" "JioMoney" "JioPlayProd" "JioVod" "JioMags" "JioXpress" "MyJio"  "LYFCare" "JioSecurity" "JioDrive" "JioNet")

    for ii in ${apk_array[@]}
    do
        apk_modename=$ii

        chmod -R 0777 $dst_patch/$apk_modename
        chown -R system:system $dst_patch/$apk_modename

        rm -r $dst_patch/$apk_modename

        chmod 0777 $dst_patch/$apk_modename.apk
        chown system:system $dst_patch/$apk_modename.apk
        rm $dst_patch/$apk_modename.apk

        mkdir -p $dst_patch/$apk_modename
        chmod 0755 $dst_patch/$apk_modename
        cp $src_patch/$apk_modename/$apk_modename.apk $dst_patch/$apk_modename/
        chmod 0644 $dst_patch/$apk_modename/$apk_modename.apk
        chown -R system:system $dst_patch/$apk_modename
    done
}

ckt_209mp="LS-4503-S10A_LYF_L11EN_209_151209012736"
ckt_212mp="LS-4503-S10A_LYF_L11EN_212_160111131444"
ckt_213mp="LS-4503-S10A_LYF_L11EN_213_160219122800"
ckt_215mp="LS-4503-S10A_LYF_L12EN_215_160408221821"

ckt_rlc_01="LS-4503"
ckt_rlc_03="LS-5009"
ckt_rlc_05="LS-4505"
ckt_rlc_06="LS-5016"

ckt_internal_version=$1

if [ ${ckt_internal_version:0:7} = $ckt_rlc_01 ] ; then
    fota_rlc01
elif [ ${ckt_internal_version:0:7} = $ckt_rlc_03 ] ; then
    fota_rlc03
elif [ ${ckt_internal_version:0:7} = $ckt_rlc_05 ] ; then
    fota_rlc05
elif [ ${ckt_internal_version:0:7} = $ckt_rlc_06 ] ; then
    fota_rlc06
fi

