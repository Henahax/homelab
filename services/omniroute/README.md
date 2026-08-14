Kurze Anleitung für omniroute (diegosouzapw/omniroute)

- Beschreibung: Minimaler Docker-Compose-Wrapper für Omniroute.
- Traefik: Nutzt das vorhandene externe `traefik`-Netzwerk und Labels.

Konfiguration:
- Setze ggf. `OPENAI_API_KEY` (oder andere provider-Keys) in deiner globalen `.env` für Homelab.

Starten:
- Im Ordner `homelab/services/omniroute`:

```powershell
docker compose up -d
```

Direkter Port:
- Falls du Traefik nicht nutzen willst, kommentiere die Labels aus und aktiviere die `ports`-Zeile (Standardbeispiel `9001:3000`).
