IMAGE_NAME := ${USER}/weechat

build:
	ansible-playbook ./p.yml

run:
	docker run --rm -ti $(IMAGE_NAME)

get-version:
	docker run $(IMAGE) weechat --version
