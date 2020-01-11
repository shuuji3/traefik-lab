#!/usr/bin/env bash
# Show the map between container names and ip addresses
docker network inspect traefik-net -f '{{ range $_ := .Containers }}
{{ .Name }} = {{ .IPv4Address }}{{ end }}' | sort
