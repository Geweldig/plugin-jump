function mark
  if test (count $argv) -eq 0 -o (count $argv) -gt 1
    echo "Usage: mark <MARK_NAME>"
  else if test -e $MARKPATH/$argv[1]
    if test -d $MARKPATH/$argv[1] -a -L $MARKPATH/$argv[1]
      echo "A mark named $argv[1] already exists."
    else
      echo "The file $MARKPATH/$argv[1] already exists."
    end
  else
    command ln -s (pwd) $MARKPATH/$argv[1]
  end
end
