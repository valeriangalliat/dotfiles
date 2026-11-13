.PHONY: base
base: zsh vim git net psql sqlite mise npm skills

.PHONY: mac
mac: base ghostty t3

.PHONY: mac-setup
mac-setup: mac
	$(PWD)/mac/setup

.PHONY: linux
linux: base vivobook

# Base {{{
# ========

	# Zsh {{{
	# -------

.PHONY: zsh
zsh: zsh/oh-my-zsh zsh/zsh-syntax-highlighting zsh/base16-shell zsh/dircolors
	-cp -i $(PWD)/zsh/zshrc.home ~/.zshrc
	-cp -i $(PWD)/zsh/zshenv.home ~/.zshenv

zsh/oh-my-zsh:
	git clone https://github.com/robbyrussell/oh-my-zsh.git $@

zsh/zsh-syntax-highlighting:
	git clone https://github.com/zsh-users/zsh-syntax-highlighting $@

zsh/base16-shell:
	git clone https://github.com/chriskempson/base16-shell $@

zsh/dircolors:
	# The sed part removes blinking effect from broken symlinks
	command -v dircolors && curl https://raw.githubusercontent.com/dotphiles/dotzsh/master/themes/dotphiles/dircolors/dircolors.base16.dark \
		| sed 's/05/00/g' \
		| dircolors - > $@ || touch $@

	# }}}

.PHONY: vim
vim:
	mkdir -p ~/.vim/undo ~/.vim/swap
	-ln -sin $(PWD)/vim/syntax ~/.vim/syntax
	-ln -si $(PWD)/vim/vimrc ~/.vimrc
	make -C $@

.PHONY: git
git:
	-ln -si $(PWD)/git/gitconfig ~/.gitconfig
	-ln -si $(PWD)/git/gitignore ~/.gitignore

.PHONY: git-diff-image
git-diff-image: git/git-diff-image
	-ln -si $(PWD)/git/gitattributes ~/.gitattributes

git/git-diff-image:
	git clone https://github.com/ewanmellor/git-diff-image.git $@

.PHONY: net
net:
	-ln -si $(PWD)/net/curlrc ~/.curlrc
	-ln -si $(PWD)/net/wgetrc ~/.wgetrc

.PHONY: npm
npm:
	touch ~/.npmrc
	chmod 600 ~/.npmrc
	grep -q '^globalconfig=' ~/.npmrc || echo 'globalconfig=$${HOME}/dotfiles/npm/npmrc' >> ~/.npmrc

.PHONY: psql
psql:
	-ln -si $(PWD)/psql/psqlrc ~/.psqlrc

.PHONY: sqlite
sqlite:
	-ln -si $(PWD)/sqlite/sqliterc ~/.sqliterc

.PHONY: mise
mise:
	-ln -si $(PWD)/mise/tool-versions ~/.tool-versions

.PHONY: tmux
tmux:
	-cp -i $(PWD)/tmux/tmux.conf.home ~/.tmux.conf

.PHONY: claude
claude:
	mkdir -p ~/.claude
	-ln -si $(PWD)/claude/settings.json ~/.claude/settings.json

.PHONY: skills
skills: skills/orwell-writing/SKILL.md skills/thermo-nuclear-code-quality-review/SKILL.md
	mkdir -p ~/.agents/skills
	-ln -sin $(PWD)/skills/orwell-writing ~/.agents/skills/orwell-writing
	-ln -sin $(PWD)/skills/thermo-nuclear-code-quality-review ~/.agents/skills/thermo-nuclear-code-quality-review

skills/orwell-writing/SKILL.md:
	mkdir -p $(dir $@)
	curl -fsSL https://raw.githubusercontent.com/tamdogood/builder-essential-skills/main/skills/orwell-writing/SKILL.md -o $@

skills/thermo-nuclear-code-quality-review/SKILL.md:
	mkdir -p $(dir $@)
	curl -fsSL https://raw.githubusercontent.com/cursor/plugins/main/cursor-team-kit/skills/thermo-nuclear-code-quality-review/SKILL.md -o $@

# }}}

# Editors {{{
# ===========

.PHONY: code
code:
	if [ -d "$(HOME)/Library/Application Support" ]; then code_dir="$(HOME)/Library/Application Support/Code/User"; else code_dir="$(HOME)/.config/Code/User"; fi; \
		mkdir -p "$$code_dir"; \
		ln -si $(PWD)/code/keybindings.json "$$code_dir/keybindings.json" || :; \
		ln -si $(PWD)/code/settings.json "$$code_dir/settings.json" || :

	make -C $@

.PHONY: cursor
cursor:
	cursor_dir="$(HOME)/Library/Application Support/Cursor/User"; \
		mkdir -p "$$cursor_dir"; \
		ln -si $(PWD)/code/keybindings.json "$$cursor_dir/keybindings.json" || :; \
		ln -si $(PWD)/code/settings.json "$$cursor_dir/settings.json" || :

	make -C code cursor-install

.PHONY: antigravity
antigravity:
	antigravity_dir="$(HOME)/Library/Application Support/Antigravity/User"; \
		mkdir -p "$$antigravity_dir"; \
		ln -si $(PWD)/code/keybindings.json "$$antigravity_dir/keybindings.json" || :; \
		ln -si $(PWD)/code/settings.json "$$antigravity_dir/settings.json" || :

	make -C code antigravity-install

# }}}

# MacOS {{{
# =========

.PHONY: ghostty
ghostty:
	mkdir -p ~/Library/Application\ Support/com.mitchellh.ghostty
	-ln -si $(PWD)/ghostty/config ~/Library/Application\ Support/com.mitchellh.ghostty/config

.PHONY: t3
t3:
	t3_dir="$(HOME)/.t3/userdata"; \
		mkdir -p "$$t3_dir"; \
		if [ ! -f "$$t3_dir/settings.json" ]; then echo '{}' > "$$t3_dir/settings.json"; fi; \
		jq -s '.[0] * .[1]' "$$t3_dir/settings.json" $(PWD)/t3/settings.json > "$$t3_dir/settings.json.new" && \
		mv "$$t3_dir/settings.json.new" "$$t3_dir/settings.json"

# }}}

# Linux {{{
# =========

.PHONY: vivobook
vivobook:
	sudo mkdir -p /etc/keyd
	sudo cp $(PWD)/vivobook/keyd/default.conf /etc/keyd/default.conf

# }}}
