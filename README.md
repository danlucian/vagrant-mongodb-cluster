# bt-mongodb-cluster
Vagrant Box (CentOS/7) with MongoDB(v3.4) 3-nodes cluster for BikeTracking Server.

## Start the vagrant box
Run in terminal: `vagrant up`

## MongoDB configuration
``
    config = { _id: "bogus-replica-set", members:[
          { _id : 0, host : "192.168.22.10:27017"},
          { _id : 1, host : "192.168.22.20:27017"},
          { _id : 2, host : "192.168.22.30:27017"} ]
         };
``
