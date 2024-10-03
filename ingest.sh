set -x
clojure -X:cli:datomic ingest :sources '[{:datomic/uri "datomic:dev://localhost:4334/metta?password=changeit"}]'
