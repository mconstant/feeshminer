build:
	docker build -t kaspaminer .

bash:
	docker run -it --entrypoint="" --gpus=all kaspaminer bash

mine_doge:
	docker run -it --gpus=all kaspaminer