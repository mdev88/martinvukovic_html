#!/bin/sh
if [ $# -ne 2 ]
  then
    echo "Must supply post content file and output file, for example:"
    echo ""
    echo "$0 post-content.md \"Post title\""
    echo ""
    exit 0
fi

pandoc -f markdown-auto_identifiers $1 > output.html

CLEAN=$(sed ':a;N;$!ba;s/\n/\\n/g' output.html)

sed "s|blog-post-title|$2|" post-template.html > output-temp.html
sed "s|blog-post-content|${CLEAN}|" output-temp.html > output.html

rm -f output-temp.html

echo ""
echo "Archivo generado: output.html"
echo "No olvidar:"
echo "- Actualizar imágen de portada en output.html"
echo "- Actualizar blog.html"
echo "- Actualizar feed.xml"
echo ""
