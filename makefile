all: biosketch.pdf biosketch.html

biosketch.pdf: CV.md format.sty
	pandoc -H format.sty -V fontsize=11pt CV.md -o CV.pdf

biosketch.html: CV.md *.css
	pandoc -s -c buttondown.css CV.md -o CV.html
