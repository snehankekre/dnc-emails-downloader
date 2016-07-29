#!/bin/bash

mkdir dnc-emails
cd dnc-emails

i=0
while ((i <= 22456)); do
	let i+=1
	echo "Downloading $i..."
	curl -OJL "https://wikileaks.org/dnc-emails//get/$i"
done

cd ..
echo "The emails have been downloaded into the 'dnc-emails' directory" 
