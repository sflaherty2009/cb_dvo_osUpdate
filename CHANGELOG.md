# 1.0.10
**Date:** 11/20/2017
**Change owner:** Ray Crawford

Updated to remove mail-to from crontab entry.

# 0.1.9
**Date: 5/8/2017**

* There is a bug with the WAAgent described [here](https://github.com/Azure/WALinuxAgent/issues/178) that causes yum to crash if the waagent is updated.  It seems as if this is an issue for yum runs done which are initiated by the WAAgent as `yum update -y` runs done after the initial run work without issue.  To resolve this issue, `yum update -y` was changed to `yum update -y --exclude=WALinuxAgent` for the initial run while `yum update -y` was still used for the cron job.  Versions 0.1.1 => 0.1.9 were work done to debug this issue. 

# 0.1.1
**Date: 5/8/2017**

* Updated metadata.rb to pass updated foodcritic linting
* Added CHANGELOG.md
* Added environments.json

# 0.1.0
Date: 1/10/2017

* Initial commit