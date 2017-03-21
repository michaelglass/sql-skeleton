Simple SQL
==========

This nifty app will let you visualize sql queries... in the most minimal way possible.

Setup
=====
(We assume you already have a fairly recent ruby installed)

```bash
$ gem install bunder
$ bundle install
```

## Bootstrap your database

### For SQLite
```bash
$ ruby db/bootstrap_sqlite.rb
```

### For Postgres
```bash
$ ruby db/bootstrap_postgres.rb
```

## Start the app

### For SQLite
```bash
$ ./run_with_reload.sh
```

### For Postgres
```bash
$ ./run_with_reload postgres
```


And open [http://localhost:4567](http://localhost:4567)
