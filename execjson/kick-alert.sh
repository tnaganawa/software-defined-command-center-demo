#!/bin/bash
curl -H "Content-Type: application/json" -d '[{"labels":{"alertname":"execjson-test-alert"}}]' 127.0.0.1:9093/api/v1/alerts
true
