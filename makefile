all: biosketch.pdf biosketch.doc biosketch.html

biosketch.pdf: CV.md format.sty
	pandoc -H format.sty -V fontsize=11pt CV.md -o CV.pdf

biosketch.doc: CV.md format.sty
	pandoc -H format.sty -V fontsize=11pt CV.md -o CV.doc

biosketch.html: CV.md *.css
	pandoc -s -c buttondown.css CV.md -o CV.html
