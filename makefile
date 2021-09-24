push:
	git submodule foreach --recursive 'git push'
	git push
hugo:
	open http://localhost:1313/seuh2022
	hugo -D -p 1313 server
