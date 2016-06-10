## Local setup

```
bundle install
cp config/secrets.example.yml config/secrets.yml
cp config/database.example.yml config/database.yml
rake db:create db:migrate db:seed
rails s
```

and visit [http://localhost:3000](http://localhost:3000)
