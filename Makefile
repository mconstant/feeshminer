build:
	docker build -t feeshminer .

bash:
	docker run -it --entrypoint="" --gpus=all feeshminer bash

mine_feesh:
	docker run -it --gpus=all feeshminer
