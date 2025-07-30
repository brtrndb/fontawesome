mkdir -p ~/texmf/tex/latex/fontawesome7
mkdir -p ~/texmf/fonts/opentype/fontawesome7
mkdir -p ~/texmf/fonts/type1/fontawesome7
mkdir -p ~/texmf/fonts/tfm/fontawesome7
mkdir -p ~/texmf/fonts/map/dvips/fontawesome7
mkdir -p ~/texmf/fonts/enc/dvips/fontawesome7

cd fontawesome7

# copy files
# Copy LaTeX package and helper files
cp tex/*.sty ~/texmf/tex/latex/fontawesome7/
cp tex/*.fd ~/texmf/tex/latex/fontawesome7/
cp tex/*.lua ~/texmf/tex/latex/fontawesome7/
cp tex/*.def ~/texmf/tex/latex/fontawesome7/

# Copy OpenType fonts
cp opentype/*.otf ~/texmf/fonts/opentype/fontawesome7/

# Copy Type1 fonts
cp type1/*.pfb ~/texmf/fonts/type1/fontawesome7/

# Copy TFM files
cp tfm/*.tfm ~/texmf/fonts/tfm/fontawesome7/

# Copy map files
cp map/*.map ~/texmf/fonts/map/dvips/fontawesome7/

# Copy encoding files
cp enc/*.enc ~/texmf/fonts/enc/dvips/fontawesome7/

mktexlsr ~/texmf
updmap-user --enable Map=fontawesome7.map

updmap-user --syncwithtrees
kpsewhich pdftex.map
updmap-user
