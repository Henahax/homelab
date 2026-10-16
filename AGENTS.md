# Project Instructions

**Description:** Planning and documenting an existing homelab and its self-hosted services.

## Instructions

The hardware and most services are already in place: Proxmox, a Debian VM for services, and a TrueNAS VM.

For Docker Compose tasks:

- Use the service provider's Compose example as the starting point.
- Name volumes and bind-mount them under `/container-volumes/<data|work|config>/<name>`.
- Keep services local by default. If access through Traefik is requested, use the external `traefik` network and route `<service>.henahax.net` and `<service>.henahax.de`; for long names, consider an additional short hostname.
- Remove published ports unless direct access is required.
- Use `${VARIABLE}` for passwords, tokens, and other secrets; values are set later in Portainer.
- Do not run Docker or Compose commands. Compose files are pasted into Portainer manually.

## Shared guidance

If the sibling `../agents` checkout exists, read `../agents/AGENTS.md`. Otherwise, use the [canonical shared guidance](https://github.com/Henahax/agents/blob/main/AGENTS.md). Load only task-relevant principles, rules, and skills; do not maintain a per-project skills list.
