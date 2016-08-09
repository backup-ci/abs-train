#  As Yan Chen points out,
#  when a function is defined multiple times,
#  the final version is what is invoked.
#  This is not, however, particularly useful.

func ()
{
  echo "First version of func ()."
}

func ()
{
  echo "Second version of func ()."
}

func   # Second version of func ().

exit $?

#  It is even possible to use functions to override
#+ or preempt system commands.
#  Of course, this is *not* advisable.
