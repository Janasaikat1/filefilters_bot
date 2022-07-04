if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Janasaikat1/filefilters_bot.git /filefilters_bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /filefilters_bot
fi
cd /filefilters_bot
pip3 install -U -r requirements.txt
echo "Starting Bot....💥"
python3 bot.py
