#!/bin/bash

pthtop="$(cd "$(dirname "${0}")/../../../.." && pwd)"
source "${pthtop}"/manage/lib/params.sh
source "${pthtop}"/manage/lib/shared.sh
source "${pthcrr}"/params.sh

pthapp="${pthsrc}"/appolm

test -d "${pthapp}" || mkdir "${pthapp}"
if cd "${pthapp}"
then
  test -d olm || mkdir olm
fi

addimg ${imgtgt} "${cnfimg}" "${pthdoc}"
