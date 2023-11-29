#!/bin/bash

# Minute (0 - 59)
# |   Hour (0 - 23)
# |   |   Day of the month (1 - 31)
# |   |   |   Month (1 - 12)
# |   |   |   |   Day of the week (0 - 6, where Sunday is 0 and 6 is Saturday)
# |   |   |   |   |   Command output
# |   |   |   |   |   |
# Schedule script to inject database query results into log files by 7AM every day
  0   7   *   *   *   /var/log/save_logs.sh

# Schedule the script to upload log files to Google Cloud Storage at 12 AM every day
  0   0   *   *   *   /log/year/month/day//upload_to_googlecloud.sh
