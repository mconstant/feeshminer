build:
	docker build -t kaspaminer .

bash:
	docker run -it --entrypoint="" --gpus=all kaspaminer bash

mine_fish:
	docker run -it --gpus=all kaspaminer