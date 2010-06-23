#!/usr/bin/sed -f

# Convert Pascal syntax to Javascript

s,{,/*,g
s,},*/,g
s/ = / == /g
s/:=/=/g
s/procedure/function/g
s/begin/{/g
s/end;/}/g
s/end/}/g

s/not/!/g
s/ and / && /g
s/ or / || /g
s/<>/!=/g
s/ mod / % /g

s/if /if (/g
s/ then/)/g

s/while /while (/g
s/for /for (/g
s/with /with (/g
s/ do/)/

s/case /switch (/g
s/ of/) {/g

s/Result =/return/g
