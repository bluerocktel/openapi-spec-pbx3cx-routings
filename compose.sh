#!/bin/bash
DEST="openapi.yaml"
cat intro.yaml > $DEST 
echo 'paths:' >> $DEST 
PATHS="paths/*"
for file in $PATHS
do
    cat $file >> $DEST
done
echo 'components:' >> $DEST 
echo '  schemas:' >> $DEST 
COMPONENTS="components/*"
for file in $COMPONENTS
do
    cat $file >> $DEST 
done
cat tags.yaml >> $DEST 
# nvim -s vim.keys $DEST
