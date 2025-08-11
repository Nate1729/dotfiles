function git-cart
  set -l current_dir (pwd)
  cd ~/dev/unit21
  for folder in */ 
    set -l git_dir (string join '' $folder '.git/')
    set -l branch (git --git-dir=$git_dir branch --show-current)
    if test "$branch" = "master" || test "$branch" = "main"
      continue
    end
    printf  "| %-20.20s | %-30.30s |\n" $folder $branch
  end
  cd $current_dir
end
