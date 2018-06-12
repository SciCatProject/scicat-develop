all:
	cd catanie && git clone https://github.com/SciCatProject/catanie.git
	cd catamel && git clone https://github.com/SciCatProject/catamel.git
	docker-compose build
	docker-compose up

restart:
	docker-compose down
	docker-compose up

clean:
	rm -rf catanie/catanie
	rm -rf catamel/catamel
