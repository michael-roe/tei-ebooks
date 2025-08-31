
all: aristophanes.htm euclid.htm euclid-defs.htm

aristophanes.htm: tlg0019.tlg010.perseus-grc2.xml tei_fmt.xml
	xsltproc -v tei_fmt.xml tlg0019.tlg010.perseus-grc2.xml > aristophanes.htm

euclid.htm: tlg1799.tlg001.perseus-grc2.xml tei_fmt.xml
	xsltproc -v tei_fmt.xml tlg1799.tlg001.perseus-grc2.xml > euclid.htm

euclid-defs.htm: euclid-defs.xml tei_fmt.xml
	xsltproc -v tei_fmt.xml euclid-defs.xml > euclid-defs.htm
