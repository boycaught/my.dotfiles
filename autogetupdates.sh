#!/bin/sh

# Set the time to run the script
### HOUR=9
### MINUTE=0

# Check if it's time to run the script
### while :
### do
###   CURRENT_HOUR=$(date +%H)
###   CURRENT_MINUTE=$(date +%M)

###   if [[ $CURRENT_HOUR -eq $HOUR && $CURRENT_MINUTE -eq $MINUTE ]]
###   then
###     break
###   fi

###   sleep 60
### done

# Run the streamline and getupdates programs
streamline && getupdates

# Send an email when the program is done
echo "getupdates has completed" | mail -s "getupdates completed" dev.bot@lagtime.com
