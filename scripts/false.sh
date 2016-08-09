# Testing "false"
if false
then
  echo "false evaluates \"true\""
else
  echo "false evaluates \"false\""
fi
# false evaluates "false"


# Looping while "false" (null loop)
while false
do
   # The following code will not execute.
   operation-1
   operation-2
   ...
   operation-n
   # Nothing happens!
done
