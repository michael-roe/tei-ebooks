
all: aristophanes.htm \
	euclid.htm \
	euclid-defs.htm \
	weather_test.htm \
	hylas_and_philonous.htm

aristophanes.htm: tlg0019.tlg010.perseus-grc2.xml tei_fmt.xml
	xsltproc -v tei_fmt.xml tlg0019.tlg010.perseus-grc2.xml > aristophanes.htm

euclid.htm: tlg1799.tlg001.perseus-grc2.xml tei_fmt.xml
	xsltproc -v tei_fmt.xml tlg1799.tlg001.perseus-grc2.xml > euclid.htm

euclid-defs.htm: euclid-defs.xml tei_fmt.xml
	xsltproc -v tei_fmt.xml euclid-defs.xml > euclid-defs.htm

weather_test.htm: weather_test.xml tei_fmt.xml
	xsltproc -v tei_fmt.xml weather_test.xml > weather_test.htm

hylas_and_philonous.htm: hylas_and_philonous.xml
	 xsltproc -v tei_fmt.xml  hylas_and_philonous.xml > hylas_and_philonous.htm
