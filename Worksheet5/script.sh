#!/bin/bash

while IFS=, read -r channel_name country category subscribers highest_monthly_earnings; do

	if [[ "$country" == "United States" ]]; then
		echo "$channel_name" >> "Worksheet5/United States/$category.txt"
	fi
done < "Global YouTube Statistics.csv"
