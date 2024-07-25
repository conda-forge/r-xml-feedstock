#!/bin/bash

cp $RECIPE_DIR/Makevars src/Makevars

export DISABLE_AUTOBREW=1

# shellcheck disable=SC2086
${R} CMD INSTALL --build . ${R_ARGS}

## BEGIN DEBUG
cat src/Makevars
## END DEBUG
