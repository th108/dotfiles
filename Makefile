.PHONY: dotfiles etc

dotfiles:
	# add aliases for dotfiles
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".gitignore" -not -name ".travis.yml" -not -name ".git" -not -name ".*.swp" -not -name ".gnupg"); do \
		f=$$(basename $$file); \
		ln -sfn $$file $(HOME)/$$f; \
	done; \
	ln -sfn $(CURDIR)/.config/htop/htoprc $(HOME)/.config/htop/htoprc;

etc:
	sudo ln -sfn $(CURDIR)/etc/timesyncd.conf /etc/systemd/timesyncd.conf;
	sudo timedatectl set-ntp true
	timedatectl set-timezone CET