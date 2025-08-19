# Hashcleaner
This bash script can be used to clean and filter extracted NTLM hashes. The cleaned Hashes can then be used in hashcat.

# How to use the script
Usage: ./hashcleaner.sh input_file output_file prefix 

Example: ./hashcleaner.sh allhashes.txt myoutputhashes.hashes "DomainToFilterFor" 
It's important to use this exact format/sequence for the tool to work. 
The filter is done case-insensitive for easier handling.

# Improvements
This script was done with a help of a friend. Any bugs and/or features that are missing can be reported to us so we can fix it. 
