#!/usr/bin/env sh

DIR=~/Downloads
APP=logstash
MIRROR=https://artifacts.elastic.co/downloads/${APP}

dl() {
    ver=$1
    os=$2
    arch=$3
    archive_type=$4
    local platform="${os}-${arch}"
    local url=${MIRROR}/${APP}-${ver}-${platform}.${archive_type}.sha512
    printf "    # %s\n" $url
    printf "    %s: sha512:%s\n" $platform $(curl -sSL $url | awk '{print $1}')
}

dl_ver() {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver linux x86_64 tar.gz
    dl $ver darwin x86_64 tar.gz
    dl $ver windows x86_64 zip
}

dl_ver ${1:-7.15.2}
