deploy:
	ssh rubysur@www.rubyconfargentina.org "cd apps/www.rubyconfargentina.org/current && git pull origin master && touch tmp/restart.txt"
