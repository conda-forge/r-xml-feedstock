#!/bin/bash
set -x
export DISABLE_AUTOBREW=1

# shellcheck disable=SC2086
if [ ${CONDA_BUILD_CROSS_COMPILATION} -eq 1 ]; then
    cp $RECIPE_DIR/post_configure_files/Makevars src/Makevars
    cp $RECIPE_DIR/post_configure_files/supports.R R/supports.R
    sed "s|@LD_PATH@|${PREFIX}/lib|g" inst/scripts/RSXML.bsh.in > inst/scripts/RSXML.bsh
    sed "s|@LD_PATH@|${PREFIX}/lib|g" inst/scripts/RSXML.csh.in > inst/scripts/RSXML.csh
    ${R} CMD INSTALL --build --no-configure . ${R_ARGS}
else
    ${R} CMD INSTALL --build . ${R_ARGS}
fi
