#!/bin/sh

#----------------------------------------------------------------------------#
#                                                                            #
#   Copyright 2026 Connor R Beeney                                           #
#                                                                            #
#   Licensed under the Apache License, Version 2.0 (the "License");          #
#   you may not use this file except in compliance with the License.         #
#   You may obtain a copy of the License at                                  #
#                                                                            #
#       http://www.apache.org/licenses/LICENSE-2.0                           #
#                                                                            #
#   Unless required by applicable law or agreed to in writing, software      #
#   distributed under the License is distributed on an "AS IS" BASIS,        #
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. #
#   See the License for the specific language governing permissions and      #
#   limitations under the License.                                           #
#                                                                            #
#----------------------------------------------------------------------------#

set -xe

website="https://www.github.com/"
user="ginix-os"
children="gxstl gxshl pheasant librqmglyph ginit gin requiem librqmd ginitservicebuilder ginix netlifile"
target="deps"

mkdir -p "$target"

for child in $children; do
    git clone "$website/$user/$child.git" deps/$child/
done