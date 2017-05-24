#!/bin/bash
sleep 1
curl -H "Content-Type: application/json" -d '[{"labels":{"alertname":"test-alert"}}]' 127.0.0.1:9093/api/v1/alerts
curl -H "Content-Type: application/json" -d '[{"labels":{"alertname":"jupyter-upload-test"}}]' 127.0.0.1:9093/api/v1/alerts
true
