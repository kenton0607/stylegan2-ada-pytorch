build:
	docker build -t sg2ada:latest .

run:
	docker run -it --rm \
		--gpus all \
		--network host \
		--workdir /workdir \
		--volume /home/ubuntu/stylegan2-ada-pytorch:/workdir \
		--name stylegan2 \
		--hostname stylegan2 \
		stylegan2-ada /bin/bash
