#!/bin/bash

export DISABLE_AUTOBREW=1

# shellcheck disable=SC2086
if [ ${CONDA_BUILD_CROSS_COMPILATION} -eq 1 ]; then
    cp $RECIPE_DIR/Makevars src/Makevars
    ${R} CMD INSTALL --build --no-configure . ${R_ARGS}
else
    ${R} CMD INSTALL --build . ${R_ARGS}
fi

## BEGIN DEBUG
cat src/Makevars
cat src/R/supports.R
## END DEBUG
