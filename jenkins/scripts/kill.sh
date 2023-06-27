#!/usr/bin/env sh
echo 'Jeda 1 Menit sebelum aplikasi ditutup'
sleep 1m
echo 'The following command terminates the "npm start" process using its PID'
echo '(written to ".pidfile"), all of which were conducted when "deliver.sh"'
echo 'was executed.'
set -x
kill $(cat .pidfile)
