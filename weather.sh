#! /bin/bash

wget -O data/weather/`date +"%Y%m%d_%H%M%S_weather.json"` https://prodapi.metweb.ie/observations/athenry/today

# Check if the curl command succeeded
if [ $? -ne 0 ]; then
    echo "Failed to fetch weather data."
    exit 1
fi

# Create a directory for weather data if it doesn't exist
mkdir -p weather/data

# Generate a unique filename based on the current date and time
filename="weather_data/weather_$(date +'%Y-%m-%d_%H-%M-%S').txt"

# Save weather data to the file
echo "$weather_data" > "$filename"

# Print the filename for debugging/logging
echo "Weather data saved to $filename"