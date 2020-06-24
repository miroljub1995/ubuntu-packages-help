curl -fsSL https://deno.land/x/install/install.sh | sh
echo 'export DENO_INSTALL="$HOME/.deno"' >> $HOME/.bashrc
echo 'export PATH="$DENO_INSTALL/bin:$PATH"' >> $HOME/.bashrc