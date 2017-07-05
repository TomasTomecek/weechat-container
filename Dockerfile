FROM fedora:25
RUN dnf install -y weechat tmux
CMD ["tmux", "new-session", "weechat"]
