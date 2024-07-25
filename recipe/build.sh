#!/bin/bash

export DISABLE_AUTOBREW=1

# shellcheck disable=SC2086
${R} CMD INSTALL --build . ${R_ARGS}

## BEGIN DEBUG
cat src/Makevars
## END DEBUG
