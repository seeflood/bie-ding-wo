#!/bin/sh

crontab -l > cron_bkp
# open /Applications/DingTalk.app
echo "0 */1 * * * open /Applications/DingTalk.app -j" >> cron_bkp
# killall DingTalk
echo "5 */1 * * * killall DingTalk" >> cron_bkp
crontab cron_bkp
rm cron_bkp
