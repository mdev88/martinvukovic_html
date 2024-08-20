#!/bin/bash
git add .
git commit -m "Automated update"
git push

echo "Conectando con Trooper..."
trooper.sh
