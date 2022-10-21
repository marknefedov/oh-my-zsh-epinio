if (( $+commands[epinio] )); then
  # If the completion file does not exist, generate it and then source it
  # Otherwise, source it and regenerate in the background 
    if [[ ! -f "$ZSH_CACHE_DIR/completions/_epinio" ]]; then
     	epinio completion zsh | tee "$ZSH_CACHE_DIR/completions/_epinio" >/dev/null;
      	source "$ZSH_CACHE_DIR/completions/_epinio"	  
    else
      source "$ZSH_CACHE_DIR/completions/_epinio"
      epinio completion zsh | tee "$ZSH_CACHE_DIR/completions/_epinio" >/dev/null &|;
    fi
fi
