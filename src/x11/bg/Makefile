DOTFILES_ENV ?= default

all: feh-$(DOTFILES_ENV)

clean:
	find . -name '*.jpg' -not -name '[0-9].jpg' -delete

feh-default: 1.jpg
	feh --bg-fill $<

feh-%: bg-%.jpg
	feh --bg-tile $<

.PRECIOUS: bg-%.jpg %-school.jpg %-work.jpg

bg-%.jpg: 1-%.jpg 3-%.jpg
	convert +append $^ $@

%-school.jpg: %.jpg
	convert $< -resize 1920x1080^ -gravity center -crop 1920x1080+0+0 $@

1-work.jpg: 1.jpg
	convert $< -resize 1920x1080^ -gravity center -crop 1920x1080+0+0 $@

2-work.jpg: 2.jpg
	convert $< -resize 1280x1024^ -gravity center -crop 1280x1024+0+0 $@

1.jpg:
	curl -o $@ http://imgindex.storage.googleapis.com/storage/img/2013/02/07/NFbhG1O.jpg

2.jpg:
	curl -o $@ http://imgindex.storage.googleapis.com/storage/img/2012/11/17/A5Rcb.jpg

3.jpg:
	curl -o $@ http://i.imgur.com/2t6rZ6m.jpg.jpg
