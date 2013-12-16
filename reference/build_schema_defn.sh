#!/bin/bash

for sch in pharmml commonTypes dataset maths modelDefinition trialDesign modellingSteps; do
echo "Generating documentation"
/Applications/oxygen/schemaDocumentationMac.sh  ../definitions/"${sch}".xsd -cfg:pharmml_settings.xml
echo "Generating Latex from DocBook"
dblatex -t tex ${sch}.xml
mv ${sch}.tex ${sch}.in
echo "Modifying latex file"
./process_schema.pl < ${sch}.in > ${sch}.tex
echo "Build latex doc"
latexmk -pdf ${sch}
done