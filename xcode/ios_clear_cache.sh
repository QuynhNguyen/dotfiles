#!/bin/bash


deleteJustModuleCache=false
deleteJustHeaders=false
arg=$1
case "$arg" in
  -m)
    deleteJustModuleCache=true
    ;;
  -h)
    deleteJustHeaders=true
    ;;
esac


if [ "$deleteJustHeaders" = true ]; then
  rm -rf ~/Library/Developer/Xcode/DerivedData/Workday_iOS-*/Build/Products/Debug-iphonesimulator/include/
  rm -rf ~/Library/Developer/Xcode/DerivedData/Workday_iOS-*/Build/Products/Release-iphonesimulator/include/
  rm -rf ~/Library/Developer/Xcode/DerivedData/Workday_iOS-*/Build/Products/Debug-iphoneos/include/
  rm -rf ~/Library/Developer/Xcode/DerivedData/Workday_iOS-*/Build/Products/Debug-iphoneos/include/
  rm -rf ~/Library/Caches/appCode31/DerivedData/Workday_iOS-*/Build/Products/Debug-iphonesimulator/include
  rm -rf ~/Library/Caches/appCode31/DerivedData/Workday_iOS-*/Build/Products/Release-iphonesimulator/include
  rm -rf ~/Library/Caches/appCode31/DerivedData/Workday_iOS-*/Build/Products/Debug-iphoneos/include
  rm -rf ~/Library/Caches/appCode31/DerivedData/Workday_iOS-*/Build/Products/Release-iphoneos/include
  
elif [ "$deleteJustModuleCache" = true ]; then
  rm -rf ~/Library/Developer/Xcode/DerivedData/ModuleCache
  rm -rf ~/Library/Caches/appCode31/DerivedData/Workday_iOS-*/ModuleCache
else
  rm -rf ~/Library/Developer/Xcode/DerivedData
  rm -rf ~/Library/Caches/appCode31/DerivedData
  rm -rf ~/Library/Caches/AppCode32/DerivedData
fi
