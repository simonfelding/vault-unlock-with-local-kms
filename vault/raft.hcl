storage "raft" {
    path = "/vault/data"
    # ideally make one of these for each replica
    retry_join {
    leader_api_addr = "http://vault-server-0.vault-server-headless:8200"
    }
    retry_join {
    leader_api_addr = "http://vault-server-1.vault-server-headless:8200"
    }
}
