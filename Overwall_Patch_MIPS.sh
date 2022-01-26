#!/bin/sh

root="/usr/share/overwall"
File="${root}/update ${root}/downbin ${root}/preload"

# 备份部分
for i in $File
do
    if [ ! -f "${i}.bak" ]; then
        cp $i ${i}.bak
    fi
done

# 防火墙规则部分(CDN)
sed -i 's#https://cdn.jsdelivr.net/gh/yIwIoTT9A21nupT/2aXGmlWs/KkFCtZkeAP/eFw58nNRXXfTwU4#https://cdn.jsdelivr.net/gh/linyanglan/2aXGmlWs/KkFCtZkeAP/eFw58nNRXXfTwU4#g' ${root}/update
sed -i 's#https://cdn.jsdelivr.net/gh/yIwIoTT9A21nupT/2aXGmlWs/KkFCtZkeAP/t8eOh94EJIHTXR6#https://cdn.jsdelivr.net/gh/linyanglan/2aXGmlWs/KkFCtZkeAP/t8eOh94EJIHTXR6#g' ${root}/update
sed -i 's#https://cdn.jsdelivr.net/gh/yIwIoTT9A21nupT/2aXGmlWs/KkFCtZkeAP/avtPeqDKt645Arm#https://cdn.jsdelivr.net/gh/linyanglan/2aXGmlWs/KkFCtZkeAP/avtPeqDKt645Arm#g' ${root}/update

# 防火墙规则部分(GITHUB)
sed -i 's#https://raw.githubusercontent.com/yIwIoTT9A21nupT/2aXGmlWs/master/KkFCtZkeAP/eFw58nNRXXfTwU4#https://raw.githubusercontent.com/linyanglan/2aXGmlWs/master/KkFCtZkeAP/eFw58nNRXXfTwU4#g' ${root}/update
sed -i 's#https://raw.githubusercontent.com/yIwIoTT9A21nupT/2aXGmlWs/master/KkFCtZkeAP/t8eOh94EJIHTXR6#https://raw.githubusercontent.com/linyanglan/2aXGmlWs/master/KkFCtZkeAP/t8eOh94EJIHTXR6#g' ${root}/update
sed -i 's#https://raw.githubusercontent.com/yIwIoTT9A21nupT/2aXGmlWs/master/KkFCtZkeAP/avtPeqDKt645Arm#https://raw.githubusercontent.com/linyanglan/2aXGmlWs/master/KkFCtZkeAP/avtPeqDKt645Arm#g' ${root}/update

# K2P_16M架构BIN下载部分
sed -i 's#https://cdn.jsdelivr.net/gh/yIwIoTT9A21nupT/2aXGmlWs/ONywPfH3Rh/pWgXrfGEV6Vtmhy#https://cdn.jsdelivr.net/gh/linyanglan/2aXGmlWs/ONywPfH3Rh/pWgXrfGEV6Vtmhy#g' ${root}/downbin
sed -i 's#https://cdn.jsdelivr.net/gh/yIwIoTT9A21nupT/2aXGmlWs/ONywPfH3Rh/AlCdr6hj5qHCJmp#https://cdn.jsdelivr.net/gh/linyanglan/2aXGmlWs/ONywPfH3Rh/AlCdr6hj5qHCJmp#g' ${root}/downbin

# 分流域名部分
sed -i 's#https://cdn.jsdelivr.net/gh/yIwIoTT9A21nupT/2aXGmlWs/KkFCtZkeAP#https://cdn.jsdelivr.net/gh/linyanglan/overwall_list/Bypass#g' ${root}/preload
sed -i 's#https://raw.githubusercontent.com/yIwIoTT9A21nupT/2aXGmlWs/master/KkFCtZkeAP#https://raw.githubusercontent.com/linyanglan/overwall_list/main/Bypass#g' ${root}/preload
# NF
sed -i 's#MnwTZoJKZA7F3xf#NF_IPList_Small#g' ${root}/preload
sed -i 's#S1WMOUf0VmdLPT9#NF_IPList_Big#g' ${root}/preload
# TG
sed -i 's#ufk8kHo4ZpsOekg#TG_IPList#g' ${root}/preload
