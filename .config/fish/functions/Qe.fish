function Qe --description "Let's Qe!"
  set --local command pacman
  set --query pcmn_pacman_command
    and set --local command "$pcmn_pacman_command"

  set --local without_sudo pikaur
  if contains "$command" $without_sudo
    "$command" -Qe $argv
  else
    sudo "$command" -Qe $argv
  end
end
