function leak

    #initialize conda
    if test -f /opt/miniconda3/bin/conda
        eval /opt/miniconda3/bin/conda "shell.fish" "hook" $argv | source
    else
        if test -f "/opt/miniconda3/etc/fish/conf.d/conda.fish"
            . "/opt/miniconda3/etc/fish/conf.d/conda.fish"
        else
            set -x PATH "/opt/miniconda3/bin" $PATH
        end
    end

    conda activate leak
     # Suppress cryptography/OpenSSL warnings
    set -x PYTHONWARNINGS ignore
end
