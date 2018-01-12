if [ -e ~/.cargo/env ]; then
	:
else
	curl https://sh.rustup.rs -sSf | sh
fi
source $HOME/.cargo/env
