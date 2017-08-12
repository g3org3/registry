#!/bin/bash
if [[ -n "$1" && -n "$2" ]]; then
	docker run --entrypoint htpasswd registry:2 -Bbn $1 $2 >> auth/htpasswd
	echo "Success!"
else
	cat << EOF
 Usage:
	$0 user password
EOF
fi
