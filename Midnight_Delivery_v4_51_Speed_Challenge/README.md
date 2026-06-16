# Midnight Delivery

Current build: **v4.51 Speed Challenge**

Static HTML5 arcade game.

## Recommended deploy method: Cloudflare Pages Direct Upload

This build is already compiled. Unzip this package and upload the **contents** of the folder to Cloudflare Pages.

v4.51 restores a stronger arcade sense of speed and challenge while keeping the fairness protections from v4.50.

Upload these items together:

```txt
README.md
index.html
manifest.json
assets/
audio/
docs/
```

Do **not** upload the ZIP file itself.

## Cloudflare Direct Upload steps

1. Open Cloudflare.
2. Go to **Workers & Pages**.
3. Open your **Pages** project.
4. Choose **Create deployment** / **Upload assets**.
5. Drag in the unzipped folder contents.
6. Deploy.

## Folder structure

- `index.html` — game
- `manifest.json` — PWA/home-screen settings
- `assets/icons/` — app icons and favicons
- `audio/music/` — radio/music tracks
- `audio/sfx/` — gameplay sound effects
- `docs/` — optional Supabase/leaderboard setup files

## Notes

The live game should keep `index.html` and `manifest.json` at the upload root. The `assets/` and `audio/` folders must remain beside them.
