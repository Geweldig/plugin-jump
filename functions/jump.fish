function jump
  if test (count $argv) -ne 1
      if test -d $JUMPHISTPATH/last_used -a -L $JUMPHISTPATH/last_used
          cd (readlink $JUMPHISTPATH/last_used)
      else
          echo "No last used mark set"
      end
  else
    if test -d $MARKPATH/$argv[1] -a -L $MARKPATH/$argv[1]
      cd (readlink $MARKPATH/$argv[1])
      command rm "$JUMPHISTPATH/last_used"
      command ln -s (readlink $MARKPATH/$argv[1]) "$JUMPHISTPATH/last_used"
    else
      echo "No such mark: $argv[1]"
    end
  end
end
