### TODO: License

#!/bin/sh

set -xe

website="https://www.github.com/"
user="ginix-os"
children="gxstl gxshl pheasant librqmglyph ginit gin requiem librqmd ginitservicebuilder ginix netlifile"
target="deps"

mkdir -p "$target"

for child in $children; do
    git clone "$website/$user/$child.git" deps/$child/
done