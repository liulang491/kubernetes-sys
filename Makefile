timestamp	:= $(shell /bin/date "+%F %T")

default:
	@echo "no default target"

github:
	git add .
	git commit -m '$(timestamp)'
	git push
