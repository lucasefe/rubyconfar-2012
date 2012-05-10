deploy:
	ssh rubysur@www.rubyconfargentina.org "cd apps/www.rubyconfargentina.org/current && git pull && touch tmp/restart.txt"
