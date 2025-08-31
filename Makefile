
all: greek.htm euclid.htm euclid-defs.htm

greek.htm: greek.xml tei_fmt.xml
	xsltproc -v tei_fmt.xml greek.xml > greek.htm

euclid.htm: tlg1799.tlg001.perseus-grc2.xml tei_fmt.xml
	xsltproc -v tei_fmt.xml tlg1799.tlg001.perseus-grc2.xml > euclid.htm

euclid-defs.htm: euclid-defs.xml tei_fmt.xml
	xsltproc -v tei_fmt.xml euclid-defs.xml > euclid-defs.htm
