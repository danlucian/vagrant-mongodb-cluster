# bt-mongodb-cluster
Vagrant Box (CentOS/7) with MongoDB(v3.4) 3-nodes cluster for BikeTracking Server Project .

For additional details about the project check: [danlucian.github.io/biketracker/](http://danlucian.github.io/biketracker/)


![mongodb cluster][/documentation/replica_set_view.png]
## Start vagrant and setup replica set
Run in terminal: `vagrant up`

Connect to main box (mongo1) via ssh: `vagrant ssh mongo1`

Run the setup script for replica set:
```bash
    cd /vagrant/
    sudo sh ./setup.sh
```

## Information about port-forwarding
```bash
    mongo1.vm.network "forwarded_port", guest: 27017, host: 27017
    mongo2.vm.network "forwarded_port", guest: 27017, host: 27018
    mongo3.vm.network "forwarded_port", guest: 27017, host: 27019
```
**So you are able to connect to the mongo servers from the host via: _127.0.0.1:27017_ for mongo1, _127.0.0.1:27018_ for mongo2 and so on.**
## MongoDB configuration
```javascript
    config = { _id: "mongo-replica-set", members:[
          { _id : 0, host : "192.168.22.10:27017"},
          { _id : 1, host : "192.168.22.20:27017"},
          { _id : 2, host : "192.168.22.30:27017"} ]
    };
```
