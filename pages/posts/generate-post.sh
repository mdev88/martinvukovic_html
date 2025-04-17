#!/bin/sh
if [ $# -ne 2 ]
  then
    echo "Must supply post content file and output file, for example:"
    echo ""
    echo "$0 post-content.md output.html"
    echo ""
    exit 0
fi

FILENAME=`echo ${1%.*}`
FILENAME_HTML=`echo ${FILENAME}.html`

pandoc $1 > $FILENAME_HTML

CLEAN=$(sed ':a;N;$!ba;s/\n/\\n/g' $FILENAME_HTML)
sed "s|post-content|${CLEAN}|" post-template.html > $2

echo ""
echo "Archivo generado: $2"
echo "No olvidar actualizar blog.html y feed.xml!"
echo ""
