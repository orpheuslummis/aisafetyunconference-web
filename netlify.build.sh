#!/bin/bash
curl -fsSL https://deno.land/x/install/install.sh | sh
export DENO_INSTALL="/opt/buildhome/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
deno run -A https://deno.land/x/lume/ci.ts
exit 0
