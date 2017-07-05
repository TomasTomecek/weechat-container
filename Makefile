IMAGE_NAME := ${USER}/weechat

build:
	docker build --tag $(IMAGE_NAME) .

run:
	docker run --rm -ti $(IMAGE_NAME)

run-os:
	$(shell oc delete is/weechat dc/weechat || :)
	oc process -f ./template.yaml | oc create -f -

exec:
	# https://github.com/moby/moby/issues/8755
	oc exec -t -i weechat-1-mjbrw -- script -q -c "tmux attach" /dev/null
