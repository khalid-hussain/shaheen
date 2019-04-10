concatenate:
	cat metadata.yaml \
	    chap1.md \
      chap2.md \
      chap3.md \
      chap4.md \
      chap5.md \
      chap6.md \
      chap7.md \
      chap8.md \
      chap9.md \
      chap10.md \
      chap11.md \
      chap12.md \
      chap13.md \
      chap14.md \
      chap15.md \
      chap16.md \
      chap17.md \
      chap18.md \
      chap19.md \
      chap20.md \
      chap21.md \
      chap22.md > content.md


default: concatenate
	pandoc -t latex -o output.pdf content.md

ebook: concatenate
	pandoc -t epub -o output.epub content.md
