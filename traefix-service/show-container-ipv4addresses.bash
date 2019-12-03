#!/usr/bin/env bash
docker network inspect getting-started_default -f '{{ range $_ := .Containers }}
{{ .Name }} = {{ .IPv4Address }}{{ end }}' | sort
