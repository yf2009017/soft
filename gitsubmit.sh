#/bin/sh
if [ $# -lt 3 ] ; then 
cat < 
ren -- renames a number of files using sed regular expressions 
USAGE: ren 'regexp' 'replacement' files... 
EXAMPLE: gitsubmit all *.HTM files in *.html:
    ren 'HTM$' 'html' *.HTM 
HELP
exit 0
fi

files="$1"
comment="$2"
git config --global user.email "yangfeiy_f@126.com"            
git config --global user.name "yf2009017"
git add files
git -m files comment
git push origin master