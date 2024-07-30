POST {{REGISTRY_DESTINATION}}/api/charts
[BasicAuth]
{{HELM_REPO_USERNAME}}: {{HELM_REPO_PASSWORD}}

HTTP 400
[Asserts]
jsonpath "$.error" == "EOF"
