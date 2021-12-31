#!/bin/sh

# save your existing crontab tasks
# crontab -l > cron_bkp

# open /Applications/DingTalk.app
if [ $1 == "b" ]
then
  echo "Add a crontab job: open dingtalk in background"
   echo "0 */1 * * * open /Applications/DingTalk.app -j" > cron_bkp
else
  echo "Add a crontab job: open dingtalk in foreground"
   echo "0 */1 * * * open /Applications/DingTalk.app" > cron_bkp
fi

# killall DingTalk
echo "5 */1 * * * killall DingTalk" >> cron_bkp
crontab cron_bkp
rm cron_bkp
echo "killall DingTalk ..."
killall DingTalk
echo "Done!"
echo "You can use 'crontab -l' to check your crontab jobs"