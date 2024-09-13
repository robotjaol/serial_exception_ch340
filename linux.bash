#!/bin/bash

# re-check directory avaible or not
if [ ! -f "CH341SER.zip" ]; then
    echo "File CH341SER.zip tidak ditemukan!"
    exit 1
fi

unzip CH341SER.zip

# re-check directory after unzip
if [ ! -d "CH341SER" ]; then
    echo "Direktori CH341SER tidak ditemukan setelah ekstraksi!"
    exit 1
fi

cd CH341SER

if [ ! -f "SETUP.EXE" ]; then
    echo "File SETUP.EXE tidak ditemukan!"
    exit 1
fi

# run SETUP.EXE using wine
wine SETUP.EXE

echo "Proses instalasi selesai. Silakan klik 'Install' dan tunggu hingga selesai."
