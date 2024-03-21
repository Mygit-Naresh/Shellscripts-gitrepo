while options -n -w -course
optargs
case
PERSON=naresh
GREET="Good Morning"
COURSE="Devops"
DATE=$(date)

echo "Enter your name"
read $PERSON

echo "which course your learning"
read $COURSE


echo "Hi $PERSON, $GREET, what are you teaching today"
echo "Today "($DATE)" concept is shell script"

