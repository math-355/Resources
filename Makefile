USERNAME =amandamorales2 \
	JunluYang \
	aldrinemilianloly \
	francescaamato1 \
	andyswish \
	emilyribeiro13 \
	benbegun \
	amihaliadis \
	TGRX1 \
	narlylion \
	jjpfilms \
	OdomaAgawu \
	haidarali300 \
	JonathanBernadel \
	michelleborovskoy \
	chanhyeokoh \

REPONAME = project02-family-vacation

CLONE_PATH = ../Project02/$$name

MY_SLIDES = 00-title.md \
	01-Git-Intro.md \
	02-ML-Intro.md \

slides:
# 	for slide in $(MY_SLIDES); do \
	pandoc -s --mathml -i -t slidy $(MY_SLIDES) -o make_test.html

clone: 
	for name in $(USERNAME); do \
		mkdir $(CLONE_PATH) && git -C $(CLONE_PATH) clone https://github.com/csc-171/$(REPONAME)-$$name.git; \
	done

pull:
	for name in $(USERNAME); do \
		echo $$name; \
		git -C $(CLONE_PATH)/$(REPONAME)-$$name/ pull; \
	done

commit:
	for name in $(USERNAME); do \
		echo $$name; \
		git -C $(CLONE_PATH)/$(REPONAME)-$$name/ commit -am "Added comments as well as grade"; \
	done

push:
	for name in $(USERNAME); do \
		echo $$name; \
		git -C $(CLONE_PATH)/$(REPONAME)-$$name/ push; \
	done

compile: 
	for name in $(USERNAME); do \
		echo $$name; \
		javac ../Project01/$$name/$(REPONAME)-$$name/Project01-Grades/CalculateMyGrade.java; \
	done
