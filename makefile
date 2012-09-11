deploy:
	ssh rubysur@www.rubyconfargentina.org "cd apps/www.rubyconfargentina.org/current && git pull origin master && touch tmp/restart.txt"


seed:
	ssh rubysur@www.rubyconfargentina.org "cd apps/www.rubyconfargentina.org/current && git pull origin master && touch tmp/restart.txt && RACK_ENV=production rake sed"
