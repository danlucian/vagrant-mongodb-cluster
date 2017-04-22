mongo --host 192.168.22.10 << 'EOF'
config = { _id: "bogus-replica-set", members:[
          { _id : 0, host : "192.168.22.10:27017"},
          { _id : 1, host : "192.168.22.20:27017"},
          { _id : 2, host : "192.168.22.30:27017"} ]
         };
rs.initiate(config);

rs.status();
EOF