all:
	cd catanie && if [[ ! -d catanie ]]; then \
		git clone https://github.com/SciCatProject/catanie.git; \
	fi
	cd catamel && if [[ ! -d catamel ]]; then \
		git clone https://github.com/SciCatProject/catamel.git; \
	fi
	docker-compose build

run:
	docker-compose down
	docker-compose up

run-hot:
	docker-compose down
	docker-compose -f docker-compose.yml -f docker-compose.hot.yml up

stop:
	docker-compose down

clean:
	rm -rf catanie/catanie
	rm -rf catamel/catamel
	docker-compose rm -fsv
