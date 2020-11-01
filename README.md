## Setup development database

Run docker-compose

```
docker-compose -f docker-compose.dev.yml up -d
```

Create test database

```
psql -h 127.0.0.1 -U kenko kenko_development -p 31127

CREATE DATABASE kenko_test;
```
