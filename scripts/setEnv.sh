export REDIS_CONNECTION="rediss://redis-12000.useast1.jph.demo-rlec.redislabs.com:12000"
export REDIS_REPLICA1="rediss://localhost:6380"
export REDIS_REPLICA2="rediss://localhost:6381"
export CORE_POOLSIZE=20
export READ_MODE=MASTER_SLAVE
export REDIS_PASSWORD=somesillypw
# export REDISSON_YAML_PATH=src/main/resources/redisson-replica.yaml
# export REDISSON_YAML_PATH=src/main/resources/redisson.yaml
export REDISSON_YAML_PATH=src/main/resources/redisson-ssl.yaml
export KEYSTORE_PASSWORD=somesillypw
export TRUSTSTORE_PASSWORD=somesillypw
