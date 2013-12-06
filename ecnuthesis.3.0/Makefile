#
# Copyright (C) 2012 by Deng Pei <vvcoder@gmail.com>
#
# This file may be distributed and/or modified under the conditions of
# the LaTeX Project Public License, either version 1.3c of this license
# or (at your option) any later version.  The latest version of this
# license is in:
# 
#    http://www.latex-project.org/lppl.txt
# 
# and version 1.3c or later is part of all distributions of LaTeX version
# 2008/05/04 or later.
#

# Makefile of The East China Normal University thesis LaTeX template


latex=xelatex
makeindex=makeindex

clsbase=ecnuthesis
clsaux=$(clsbase).aux
clscls=$(clsbase).cls
clsdtx=$(clsbase).dtx
clsglo=$(clsbase).glo
clsgls=$(clsbase).gls
clsidx=$(clsbase).idx
clsilg=$(clsbase).ilg
clsind=$(clsbase).ind
clsins=$(clsbase).ins
clslog=$(clsbase).log
clsout=$(clsbase).out
clspdf=$(clsbase).pdf
clstoc=$(clsbase).toc

expbase=example
expaux=$(expbase).aux
explof=$(expbase).lof
explog=$(expbase).log
explot=$(expbase).lot
expout=$(expbase).out
exppdf=$(expbase).pdf
exptex=$(expbase).tex
exptoc=$(expbase).toc

all : cls clsdoc exp

cls :
	$(latex) $(clsins)
	
clsdoc :
	$(latex) $(clsdtx)
	$(makeindex) -s gind.ist -o $(clsind) $(clsidx)
	$(makeindex) -s gglo.ist -o $(clsgls) $(clsglo)
	$(latex) $(clsdtx)
	$(latex) $(clsdtx)

exp :
	$(latex) $(exptex)
	$(latex) $(exptex)
	$(latex) $(exptex)

zip :
	zip -9 ecnuthesis.$(version).zip $(clscls) $(clsdtx) $(clsins) $(clspdf) $(exppdf) $(exptex) Makefile README

.PHONY : clean

clean :
	-rm $(clsaux)
	-rm $(clscls)
	-rm $(clsglo)
	-rm $(clsgls)
	-rm $(clsidx)
	-rm $(clsilg)
	-rm $(clsind)
	-rm $(clslog)
	-rm $(clsout)
	-rm $(clspdf)
	-rm $(clstoc)
	-rm $(expaux)
	-rm $(explof)
	-rm $(explog)
	-rm $(explot)
	-rm $(expout)
	-rm $(exppdf)
	-rm $(exptoc)
