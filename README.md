# My Assesstment Repository

** by Owen Coughlan (g00439345@atu.ie)

This repository contains my assesstment submission for the module Computer Infrastructure.


# Tasks Summary

 **Task 1** 
 - I used mkdir command to create two new folders within another folder in this repository. 
 - They are timestamps & weather within the data folder.

 **Task 2** 
 - I used date command to get the current date. 
 - I then used the command i in {1..10} to start a loop that will iterate it 10 times. 
 - I then added the command date >> now.txt: to retrieve the current date and >> creates a file called now.txt where the date & time is displayed 10 times.

 **Task 3** 
 - Firstly I used date +"%Y%m%d_%H%M%S" to get the output.
 - I then used date +"%Y%m%d_%H%M%S" >> formatted.txt to create the text file formatted.txt
 - Finally I used cat formatted.txt to run the file to get an updated timestamp

 **Task 4** 
 - I created a timestamp file using the below command
 - touch `date +"%Y%m%d_%H%M%S"`.txt

 **Task 5** 
 - Checked to see was wget installed
 - wget was installed so I used the following command to download the data from the website and created a file in weather folder
 - wget -0 weather.json https://prodapi.metweb.ie/observations/athenry/today

 **Task 6**
 - In the terminal I used the below code to add a new timestamp
 - wget -O "weather_$(date +"%Y%m%d_%H%M%S").json" https://prodapi.metweb.ie/observations/athenry/today
 - This created a new timestamp file in the weather folder
 
 **Task 7** 
 - I created a new file called weather.sh.
 - In this file I put the following code
 - #! /bin/bash
 - wget -O data/weather/`date +"%Y%m%d_%H%M%S_weather.json"` https://prodapi.metweb.ie/observations/athenry/today
 - Every time I run this code, it will create a new file in the weather folder with an updated date and time

   **Task 8**
 - See all steps above.

   **Task 9**
 -  I created a Jupyter Notebook and called it weather.ipynb
 -  I used the heading Weather Analysis and imported pandas using import pandas as pd
 -  I then put in a Collecting Data heading and put in a breif description of what the output would be.
 -  I then used the below line of code to start analysing the data
 -  df = pd.read_json('/workspaces/computer_infrastructure_assessment/data/weather/weather_20241109_130626.json')
 -  Once this code was run, I was able to use df.head() to show some results
