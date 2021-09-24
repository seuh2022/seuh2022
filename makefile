push:
	git submodule foreach --recursive 'git push'
	git push
hugo:
	open http://localhost:1313/seuh2022
	hugo -D -p 1313 server
github:
	open http://localhost:1414/seuh2022-website
	hugo --baseURL=http://localhost:1414/seuh2022-website/ -p 1414 -e staging server
stuttgart:
	open http://localhost:1515/seuh2022/
	hugo --baseURL=http://localhost:1515/seuh2022/ -p 1515 -e production server
build_production:
	hugo --minify
build_staging:
	hugo --minify -e staging
update_theme:
	git submodule update --init --recursive
