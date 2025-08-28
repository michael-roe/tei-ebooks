
all: greek.htm

greek.htm: greek.xml tei_fmt.xml
	xsltproc -v tei_fmt.xml greek.xml > greek.htm
