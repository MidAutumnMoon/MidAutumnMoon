function prompt_bottom --on-event fish_prompt
  # tput cup $LINES
  echo -ne "\e[0;0H\e[$LINES;0H"
end

