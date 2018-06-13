.PHONY: run run-hot stop clean

all : catanie/catanie catamel/catamel
	docker-compose build
	
catanie/catanie :
	cd catanie && git clone https://github.com/SciCatProject/catanie.git

catamel/catamel :
	cd catamel && git clone https://github.com/SciCatProject/catamel.git

stop :
	docker-compose down

run : all
	docker-compose down
	docker-compose up

run-hot : all
	docker-compose -f docker-compose.yml -f docker-compose.hot.yml up

clean :
	rm -rf catanie/catanie
	rm -rf catamel/catamel
	docker-compose rm -fsv
