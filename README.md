# Cisco UCS Backup Automation
This automation script is written with expect. It deletes the previous backup schedule, creates a new one and executes it immediately. Once it is
triggered script also checks the status of the backup. I am not sure if output varies on version of UCS. You can see the sample output of UCS Manager once backup started. 

If backup failed you can get all the details. If everything is Okay. You get 'Backup Success' message with Progress (%): 100

```bash
show backup fsm status <hostname>
```
## On Error

 Hostname: xxxxx

     FSM 1:
         Remote Result: End Point Failed
         Remote Error Code: ERR DNLD Authentication Failure
         Remote Error Description: Permission denied#
         Status: Backup Fail
         Previous Status: Backup Fail
         Timestamp: 2019-10-02T10:45:47.633
         Try: 1
         Progress (%): 0
         Current Task: internal system backup(FSM-STAGE:sam:dme:MgmtBackupBackup:upload)


## On Success 

 Hostname: xxxxxxx

     FSM 1:
         Remote Result: Not Applicable
         Remote Error Code: None
         Remote Error Description:
         Status: Nop
         Previous Status: Backup Success
         Timestamp: 2019-10-02T12:07:07.907
         Try: 0
         Progress (%): 100
         Current Task:
