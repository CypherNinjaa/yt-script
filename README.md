## Local HTTPS dev instructions (fix YouTube postMessage warnings)

The YouTube iframe API sometimes logs a postMessage origin mismatch when your page is served from a local HTTP origin (for example `http://127.0.0.1:5500`). Serving the site over HTTPS or providing a correct `origin` value reduces or eliminates that console noise.

Below are two simple options to run a secure local server and test `youtube-shorts/lyrics.html`.

Option A — recommended (mkcert + http-server via npx)

- Install `mkcert` (creates a locally-trusted cert). On Windows, you can use `choco` or `scoop` / `winget`.

  Example (PowerShell):

  ```powershell
  # install mkcert (one of these; pick your package manager)
  choco install mkcert -y
  # OR
  winget install mkcert

  # install mkcert root CA to OS trust stores
  mkcert -install

  # create certs for localhost and loopback
  mkcert localhost 127.0.0.1 ::1
  # mkcert will output files like: 'localhost+2.pem' and 'localhost+2-key.pem'

  # Serve the repository root over HTTPS using http-server
  npx http-server . -p 5500 -S -C localhost+2.pem -K localhost+2-key.pem
  ```

  Then open:

  `https://127.0.0.1:5500/youtube-shorts/lyrics.html`

Option B — VS Code Live Server (quick, but needs certs configured)

- In `settings.json` enable Live Server HTTPS and point to your cert and key. Example (user settings):

  ```json
  // in VS Code user/workspace settings.json
  "liveServer.settings.https": true,
  // If Live Server asks for keys, set the paths to the cert & key you generated with mkcert
  // "liveServer.settings.sslCert": "C:/path/to/localhost+2.pem",
  // "liveServer.settings.sslKey": "C:/path/to/localhost+2-key.pem",
  "liveServer.settings.port": 5500
  ```

  After that, open the same HTTPS URL shown above.

Notes

- `mkcert` installs a local CA and adds it to your OS/browser trust stores, so you won't see security prompts for `https://localhost`.
- After running the HTTPS server, reload the `lyrics.html` page and check the console — the postMessage origin mismatch should be resolved or much less frequent.
- The earlier patch already added `playerVars.origin = window.location.origin` and `enablejsapi: 1` to `YT.Player`. That helps when using HTTP, but HTTPS is the most robust solution.

If you want, I can also add a `.vscode/settings.json` example or a small `package.json` script to install and run the HTTPS server. Which would you prefer?
