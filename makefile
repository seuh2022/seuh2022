# .PHONY : hugo
# .RECIPEPREFIX = -
push:
	git submodule foreach --recursive 'git push'
	git push origin master
commit:
	cd themes/hugo-hero-theme/
	git add .
	git commit -m $(message)
	cd ../..
	git add .
	git commit -m $(message)
open:
	open http://localhost:1313/seuh2022
hugo : open
	hugo -D -p 1313 server
staging:
	open http://localhost:1414/seuh2022-website
	hugo --baseURL=http://localhost:1414/seuh2022-website/ -p 1414 -e staging server
production:
	open http://localhost:1515/seuh2022/
	hugo --baseURL=http://localhost:1515/seuh2022/ -p 1515 -e production server
build_production:
	hugo --minify
build_staging:
	hugo --minify -e staging
update_theme:
	git submodule update --init --recursive
deploy:
	git push production master
pages:
	open "https://webgit.k8s.sqa.ddnss.org/barnekleinen/seuh2022"
	open "https://drone.k8s.sqa.ddnss.org/barnekleinen/seuh2022"
pipeline:
	open https://github.com/seuh2022/seuh2022
	open https://seuh2022.github.io/seuh2022
	open https://seuh.org/seuh2022
# make check f=gh-tag.yml
check:
	ruby -ryaml -e "puts YAML.load(STDIN.read).inspect" < .github/workflows/$(f)
actions:
	open https://github.com/seuh2022/seuh2022-website/actions
# make tag t="t5"
tag:
	echo "create and push tag $(t)"
	git tag $(t)
	git submodule foreach --recursive 'git push'
	git push origin master $(t)
	#git push origin $(t)
	open https://github.com/seuh2022/seuh2022-website/actions
