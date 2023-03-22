# Trufflehog
The script can be used to execute secret scanning using Trufflehog in the multiple private/public repos at one go with the results of each repo being saved in different Text files. The script can run on any operating system: MacOS/Windows/Linux. To reduce the work of running the script again and again, you can set up a cronjob/Task Scheduler for it, which would execute this script after the desired intervals of time.

## Cronjob for MacOS/Linux
To setup the cronjob for this script, follow the following steps:
1. In terminal, run the command `crontab -e`
<img width="1018" alt="Screenshot 2023-03-22 at 6 27 28 PM" src="https://user-images.githubusercontent.com/46684765/226912089-93c8b4e0-1351-41e9-99a7-a18891c41759.png">
2. Crontab opens in vi editor, `press I` to enter the Insert mode for the editor.
3. Enter this in the editor:
   - In the first line, add `MAILTO="mail_id"` if you want to receive mail whenever the scan is executed. (Optional)
   - In the second line, add `30 15 * * * /bin/bash <path>/<script_name>.sh` , then press `Esc` button to exit the insert mode.
     <img width="1015" alt="Screenshot 2023-03-22 at 6 26 56 PM" src="https://user-images.githubusercontent.com/46684765/226965452-c0be96a6-8797-4518-b195-1b2045416acf.png">

4. Type and enter `:wq` to save and exit the crontab.


**In case if cron doesn't have full disk access, we need to provide it**(Usually required in MacOS). For this follow these steps: 
1. Go to the system Settings > Security Privacy > Full Disk Access
   ![image](https://user-images.githubusercontent.com/46684765/226916541-b2666a81-69ce-47bf-a2dd-3f94d5be99a9.png)
2. Open Finder and go the following path /usr/sbin . Search for cron in the directory.
   <img width="712" alt="Screenshot 2023-03-22 at 6 54 37 PM" src="https://user-images.githubusercontent.com/46684765/226918537-8b606712-a67e-496a-9a9d-d8ca911f84f9.png">
3. Now select and drag the cron  from finder to Full Disk Access settings window.
4. Make sure that Terminal also has full disk access enabled in the list.
   ![image](https://user-images.githubusercontent.com/46684765/226918670-b3026d12-49fa-4ff1-9927-b0299c98e3c3.png)

**Explanation** for
`30 15 * * * /bin/bash <path>/<script_name>.sh`

The first two fields (30 15) specify the time of day, with 30 representing the minute and 15 representing the hour (24-hour format).
The remaining fields (* * *) represent the day of the month, month, and day of the week, respectively. In this case, we use * to specify that the job should run every day of the month and every month of the year.

## Task Scheduler of Windows
