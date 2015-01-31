#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
for i in `ls .autostart/*.sh | sort -V`; do
	SCRIPT="${DIR}/${i}"
	echo "--- ${SCRIPT}";
	$(${SCRIPT});
done;
