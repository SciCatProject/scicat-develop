# Making

Download, build and run:

    make run

Just download and build:

    make

Other tasks:

    make stop
    make clean

# Hot reloading

Starting the app with

    make run-hot

will make it pick up changes to the frontend made in `catanie/src`. If you want to attach another directory, edit `docker-compose.hot.yml` accordingly.

# Todo

- Make catamel support hot reloading
- Add mock data to database
- Support testing in frontend
