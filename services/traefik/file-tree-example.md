# Info

`https://chatgpt.com/c/69fa66c1-8208-8333-9bb9-fa7b76baa167`

## file tree

```sh
/container-volumes/
├── config/
│   └── traefik/
│       ├── traefik.yml              # static config (required)
│       └── dynamic/                 # dynamic config folder
│           ├── routers.yml          # routers (rules, entrypoints)
│           ├── services.yml         # backend services
│           ├── middlewares.yml      # redirects, auth, etc.
│           └── tls.yml              # TLS options (optional)
│
└── data/
    └── traefik/
        ├── acme.json                # Let's Encrypt storage
        └── access.log               # optional (auto-created)
```
