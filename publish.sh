#!/bin/bash
git add .
git commit -m "Automated update"
git push

echo
echo "Conectando con Trooper..."
echo "Ejecutar ./update_web.sh"
echo
trooper.sh
