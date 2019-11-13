#!/usr/bin/env bash

set -u -e -o pipefail

#######################################
# Echo the current package version of an available application.
# Arguments:
#   param1 - application name
#   param2 - application package name
#   param3 - location path of the applications
#######################################
getCurrentPackageVersion() {
    name=$1
    packageName=$2
    location=$3
    echo $(ls ${3}/${1} | grep $2_)
}

#######################################
# Echo the name of the application at position X in the array.
# Arguments:
#   param1 - application index
#######################################
getApplicationName() {
    echo $(node -e "require('$SCRIPTS_LOCATION/index.js').getApplicationName($1)")
}

#######################################
# Echo the package name of the application at position X in the array.
# Arguments:
#   param1 - application index
#######################################
getApplicationPackageName() {
    echo $(node -e "require('$SCRIPTS_LOCATION/index.js').getApplicationPackageName($1)")
}

#######################################
# Echo the latest package version of the application available on internet.
# Arguments:
#   param1 - application package name
#######################################
getApplicationApkName() {
    echo $(node -e "require('$SCRIPTS_LOCATION/index.js').getPackageApkVersion('$1')")
}

#######################################
# Echo the type of the application at position X in the array.
# Arguments:
#   param1 - application index
#######################################
getApplicationType() {
    echo $(node -e "require('$SCRIPTS_LOCATION/index.js').getApplicationType($1)")
}
