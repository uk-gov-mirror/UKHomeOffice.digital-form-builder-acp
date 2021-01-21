#!/usr/bin/env sh
[[ -z "${DEBUG}" ]] || set -x

source bin/util.sh || exit 1
source .env || exit 1

export KUBE_CERTIFICATE_AUTHORITY=https://raw.githubusercontent.com/UKHomeOffice/acp-ca/master/${DRONE_DEPLOY_TO=notset}.crt
export ACP_IMAGE_VERSION=${ACP_IMAGE_VERSION:-"latest"}
export BASE_IMAGE_VERSION=${XGOV_TAG:-"latest"}
export BASE_IMAGE_APP_SHA=${XGOV_SHA:-"master"}
info "---"
info "ACP_IMAGE_VERSION: ${ACP_IMAGE_VERSION}"
info "BASE_IMAGE_VERSION: ${BASE_IMAGE_VERSION}"
info "BASE_IMAGE_APP_SHA: ${BASE_IMAGE_APP_SHA}"
info "---"