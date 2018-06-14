# Making

Download, build and run:

    make run

Just download and build:

    make

Other tasks:

    make stop
    make clean

# Repositories

Following the instructions above will fetch the latest *master* revision of catamel and catanie from GitHub. If you wish to use more up-to-date repositories, make them available at `catamel/catamel` and `catanie/catanie`.

# Hot reloading

Starting the app with

    make run-hot

will make it pick up changes to the frontend made in `catanie/src`. If you want to attach another directory, edit `docker-compose.hot.yml` accordingly.

# Add mock data

Run

    make data

*after* the application has started to add mock proposals and datasets.

# Todo

- Make catamel support hot reloading
- Support testing in frontend
