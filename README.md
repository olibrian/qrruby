[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/olibrian/qrruby/badge)](https://scorecard.dev/viewer/?uri=github.com/olibrian/qrruby)

# QRruby

A small Ruby tool with a big vision to improve the world with QR Code.

To cover
* Ruby version: latest

* System dependencies: as little as possible. use docker and docker compose

* Configuration: no configration possible

* Database creation: default ruby :-)

* Database initialization: no seed data avaible

* How to run the test suite: no tests at the moment. do not how to test

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions: docker compose up

# Prod deployment with render.com

Build with the free plan from [render.com](https://render.com) come some limitations.
Free instances do not support backups. A free database expires 90 days after creation. Not a good choice for real prod environment :-)

How to create the DB an link it to the app:
1. Create DB, select Frankfurt region analogue to the app
1. Copy link from `Internal Database URL` from the db
1. Paste in Environment Variables `DATABASE_URL` of the app
