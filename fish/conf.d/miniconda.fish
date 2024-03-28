if test -f "/opt/miniconda3/etc/fish/conf.d/conda.fish"
	. "/opt/miniconda3/etc/fish/conf.d/conda.fish"
else
	set -x PATH $PATH "/opt/miniconda3/bin"
end
