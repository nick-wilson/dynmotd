NAME=dynmotd
PROFILE=/etc/profile.d
PREFIX=/usr/local

.PHONY : install
install:
	install -o root -g root -m 0755 -t $(PREFIX)/bin $(NAME)
	install -o root -g root -m 0644 -t $(PROFILE) $(NAME).sh
