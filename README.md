# Rails-elasticsearch-vagrant-ansible-demo

Exemple de l'intégration d'ElasticSearch, Vagrant et Ansible dans avec une application Ruby On Rails.

## Installation

Rails :
```
$ git clone git@github.com:ZiiCEagle/Rails-elasticsearch-vagrant-ansible-demo.git
$ cd Rails-elasticsearch-vagrant-ansible-demo
$ bundle
$ bundle exec rake db:migrate
```

Vagrant :
```
$ vagrant up
```

## Lancer le serveur rails

```
$ bundle exec rails s
```

## Créer les index pour ElasticSearch

```
$ Article.__elasticsearch__.create_index! force: true
$ Article.import
$ Article.__elasticsearch__.refresh_index!
```
