Simple SQL
==========

This nifty app will let you visualize sql queries... in the most minimal way possible.

See below for instructions how to install ruby on windows...

Setup
=====
(We assume you already have a fairly recent ruby installed)

```bash
$ gem install bundler
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


##########################################################
How to install Ruby on Windows:

->      download https://dl.bintray.com/oneclick/rubyinstaller/rubyinstaller-2.3.3-x64.exe
    install "Ruby 2.3.3 (x64)" (choose option "add to path")

->     download https://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-64-4.7.2-20130224-1432-sfx.exe
    extract ruby DevKit (DOUBLE CLICK) to C:\DevKit


->    go to  https://github.com/michaelglass/sql-skeleton
    CLICK greenbutton, CLICK download zip, save it
    extract the zip file (RIGHT CLICK) to your documents-folder in your windows-user-folder

->     Press windows key, type "Start Command Prompt with Ruby"
    type     chdir C:\DevKit
        ruby dk.rb init
        ruby dk.rb install
        cd %USERPROFILE%\documents\sql-skeleton-master
    Continue with the directions on https://github.com/michaelglass/sql-skeleton

