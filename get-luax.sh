#!/bin/bash

# This file is part of luax-releases.
#
# luax-releases is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# luax-releases is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with luax-releases.  If not, see <https://www.gnu.org/licenses/>.
#
# For further information about luax-releases you can visit
# https://github.com/CDSoft/luax-releases

set -eu

export PREFIX=${PREFIX:-$HOME/.local}

URL=$(curl -Ls -o /dev/null -w "%{url_effective}" https://github.com/CDSoft/luax-releases/releases/latest)
VERSION=$(basename "$URL")
echo "Release : $VERSION"
ARCH=$(uname -m)
case "$(uname -s)" in
    (Linux)     OS=linux;;
    (Darwin)    OS=macos;;
    (*)         OS=unknown;;
esac
case "${LIBC:-}" in
    (musl)      LIBC="-musl";;
    (*)         LIBC="";;
esac
echo "Target  : $OS - $ARCH - ${LIBC/-/}"
ARCHIVE=https://github.com/CDSoft/luax-releases/releases/download/${VERSION}/luax-${VERSION}-${OS}-${ARCH}${LIBC}.tar.xz
echo "Download: $ARCHIVE"

echo
curl -sSL "$ARCHIVE" | tar xJf - -v -C "$PREFIX" --strip-components 1
