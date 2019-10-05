#!/bin/bash
expect ucsbackup.exp  | tee ucsbackup.log
retval_bash="${PIPESTATUS[0]}"
date=`date +%Y-%m-%d`
if [ $retval_bash -eq "0" ]; then
        echo "UCS Backup Completed Successfully..."
        mail -s "${date}-[INFO] SUCCESS: UCS Backup Completed" recipients@mail.com < ucsbackup.log
else
    echo "UCS Backup failed!"
    mail -s "${date}-[ERROR] FAIL: UCS Backup Failed, Manual Action Necessary!" recipients@mail.com < ucsbackup.log
fi
