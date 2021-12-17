#!/bin/bash

cat system/priv-app/GmsCore/arm/GmsCore.odex.* 2>/dev/null >> system/priv-app/GmsCore/arm/GmsCore.odex
rm -f system/priv-app/GmsCore/arm/GmsCore.odex.* 2>/dev/null
