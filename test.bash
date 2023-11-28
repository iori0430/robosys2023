#!/bin/bash 
# SPDX-FileCopyrightText: 2023 Yamazaki Iori s22C1132PS@s.chibakoudai.jp
# SPDX-Licence-Identifier: BSD-3-Clause

ng () {
        echo NG at Line $1
        res=1
}

res=0

out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK

exit $res

