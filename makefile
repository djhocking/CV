all: CV.pdf CV.doc CV.html biosketch.pdf

CV.pdf: CV.md format.sty
	pandoc -H format.sty --template=tweekedtemplate.tex -V fontsize=11pt --variable urlcolor=blue CV.md -o CV.pdf

CV.doc: CV.md format.sty
	pandoc -H format.sty --template=tweekedtemplate.tex -V fontsize=11pt --variable urlcolor=blue CV.md -o CV.doc

CV.html: CV.md *.css
	pandoc -s -c buttondown.css CV.md -o CV.html

biosketch.pdf: biosketch.md format.sty
	pandoc -H format.sty --template=tweekedtemplate.tex -V fontsize=11pt --variable urlcolor=blue biosketch.md -o biosketch.pdf