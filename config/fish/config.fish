if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source
set -gx LANG en_US.UTF-8
set -gx LC_ALL en_US.UTF-8

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#if test -f /opt/miniconda3/bin/conda
#    eval /opt/miniconda3/bin/conda "shell.fish" "hook" $argv | source
#else
#    if test -f "/opt/miniconda3/etc/fish/conf.d/conda.fish"
#        . "/opt/miniconda3/etc/fish/conf.d/conda.fish"
#    else
#        set -x PATH "/opt/miniconda3/bin" $PATH
#    end
#end
# <<< conda initialize <<<
