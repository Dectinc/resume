default: cv-cn.pdf cv-en.pdf cv.pdf

cv.pdf: cv-en.pdf
	cp $^ cv.pdf

cv-cn.pdf: cv-cn.tex
	xelatex $^

cv-en.pdf: cv-en.tex
	xelatex $^

clean:
	rm -rf *.pdf
