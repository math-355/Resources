MY_SLIDES=01-title.md \
	02-Git-Intro.md \
	03-ML-Intro.md \
	04-ML-Example.md \

HTML_SLIDES = $(MY_SLIDES:.md=.html)
n=3

slides:
	pandoc -s --mathml -i -t revealjs $(word 1, $(MY_SLIDES)) $(word $n, $(MY_SLIDES)) -o $(word $n, $(HTML_SLIDES))

all_slides:
	pandoc -s --template=revealjs-template.html --mathml \
		-V controls=true \
		-V progress=true \
		-V hash=true \
		-V center=false \
		-V theme=simple \
		-V revealjs-url=./reveal.js \
		-i -t revealjs $(MY_SLIDES) -o math355-slides.html 

pdf:
	pandoc -s $(MY_SLIDES) --pdf-engine=pdflatex -o math355-slides.pdf

