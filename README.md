# My Assessment Repository

** By Owen Coughlan (g00439345@atu.ie)

This repository contains my assessment submission for the module Computer Infrastructure.

# Tasks Summary

**Task 1**
- I used the mkdir command to create two new folders within another folder in this repository.
- These folders are timestamps and weather, located within the data folder.

**Task 2**
- I used the date command to get the current date.
- I then used the command i in {1..10} to start a loop that iterates 10 times.
- Finally, I added the command date >> now.txt to retrieve the current date, and >> appends the output to a file called now.txt, where the date & time is displayed 10 times.

**Task 3**
- Firstly, I used date +"%Y%m%d_%H%M%S" to get the desired timestamp format.
- I then used date +"%Y%m%d_%H%M%S" >> formatted.txt to create the text file formatted.txt.
- Finally, I used cat formatted.txt to display the contents of the file and verify the updated timestamps.

**Task 4**
- I created a timestamped file using the following command:
- touch `date +"%Y%m%d_%H%M%S"`.txt

**Task 5**
- I checked to see if wget was installed.
- Since wget was installed, I used the following command to download data from a website and create a file in the weather folder:
- wget -O weather.json https://prodapi.metweb.ie/observations/athenry/today

**Task 6**
- In the terminal, I used the following code to add a new timestamped file:
- wget -O "weather_$(date +"%Y%m%d_%H%M%S").json" https://prodapi.metweb.ie/observations/athenry/today
- This created a new timestamped file in the weather folder.

**Task 7**
- I created a new file called weather.sh.
- In this file, I added the following code:
- #!/bin/bash
- wget -O data/weather/`date +"%Y%m%d_%H%M%S_weather.json"` https://prodapi.metweb.ie/observations/athenry/today
- Every time I run this script, it creates a new file in the weather folder with an updated date and time.

**Task 8**
- See all steps above.

**Task 9**
- I created a Jupyter Notebook and named it weather.ipynb.
- I added a heading titled Weather Analysis and imported pandas using import pandas as pd.
- I included a section titled Collecting Data, with a brief description of what the output would be.
- I used the following line of code to start analyzing the data:
- df = pd.read_json('/workspaces/computer_infrastructure_assessment/data/weather/weather_20241109_130626.json')
- Once this code was run, I used df.head() to display the initial results.
