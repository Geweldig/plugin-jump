function marks
  if test (count $argv) -gt 0
    echo "Usage: marks"
  else
    set -l mark_list (find $MARKPATH -type l)
    if test (count $mark_list) -eq 0
      echo "No marks currently defined."
    else
      set -l output ""
      for mark in $mark_list
        set -l real_path (readlink $mark)
        set -l mark_name (basename $mark)
        set output "$output$mark_name -> $real_path"\n
      end
      echo $output | column -t
    end
  end
end
