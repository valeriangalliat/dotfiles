ENV = default
THEME = default

all: feh-$(ENV)

clean:
	find . -name '*.jpg' -not -name '[0-9].jpg' -delete

feh-default: 1-$(THEME).jpg
	feh --bg-fill $<

feh-%: bg-%.jpg
	feh --bg-tile $<

.PRECIOUS: bg-%.jpg %-school.jpg %-work.jpg

bg-%.jpg: 1-%.jpg 2-%.jpg
	convert +append $^ $@

%-school.jpg: %-$(THEME).jpg
	convert $< -resize 1920x1080^ -gravity center -crop 1920x1080+0+0 $@

1-work.jpg: 1-$(THEME).jpg
	convert $< -resize 1920x1080^ -gravity center -crop 1920x1080+0+0 $@

2-work.jpg: 2-$(THEME).jpg
	convert $< -resize 1280x1024^ -gravity center -crop 1280x1024+0+0 $@

1-default.jpg:
	curl -o $@ https://val.codejam.info/misc/bg/ariel-rebel.jpg

2-default.jpg:
	curl -o $@ https://val.codejam.info/misc/bg/simon/wallhaven-4501.jpg

3-default.jpg:
	curl -o $@ https://val.codejam.info/misc/bg/ariel-rebel2.jpg

1-landscape.jpg:
	curl -o $@ https://val.codejam.info/mountain/lac-achard/2015-06-27.25.jpg

2-landscape.jpg:
	curl -o $@ https://val.codejam.info/mountain/pravouta/2015-05-30.30.jpg
