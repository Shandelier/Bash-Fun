#! /bin/bash

#tworzenie katalgów
rm -r lab3

mkdir lab3
mkdir lab3/A
echo "test1" >lab3/A/plik1
mkdir lab3/A/B
for iter in {10..20}; do
  echo "test$iter" >lab3/A/B/plik$iter
done
mkdir lab3/A/B/C

mkdir lab3/D
echo "plik 30" >lab3/D/plik30
mkdir lab3/D/E
echo "plik40" >lab3/D/E/plik40

ln -s ../../A/plik1 lab3/D/E/link_plik1
ln -s ../../A/B/plik10 lab3/D/E/link_plik10

ln -s `realpath lab3/A/plik1` lab3/D/E/link_plik1_bez
ln -s `realpath lab3/B/plik10` lab3/D/E/link_plik10_bez

for iter in {10..20}; do
  ln -s ../plik$iter lab3/A/B/C/link_plik$iter
done

#zad1
cp -l lab3/D/E/link_plik10 lab3/A
cp -d lab3/D/E/link_plik10 lab3/A
