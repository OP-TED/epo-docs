#!/usr/bin/env bash

SCRIPT_DIR="$(readlink -f "$(dirname "${0}")")"
ROOT_DIR="${SCRIPT_DIR}/.."
NODE_DIR="${SCRIPT_DIR}/.node"
BUILD_DIR="${SCRIPT_DIR}/build"
BRANCHES_DIR="${ROOT_DIR}/branches"

export YARN_HTTP_PROXY="${http_proxy}"
export YARN_HTTPS_PROXY="${YARN_HTTP_PROXY}"

export PATH="${NODE_DIR}:${NODE_DIR}/node_modules/.bin:${PATH}"

npm install --prefix "${NODE_DIR}" corepack
corepack enable --install-directory "${NODE_DIR}"

pushd "${SCRIPT_DIR}" 1>/dev/null

yarn install

SITE_DIR="${BUILD_DIR}/site/EPO/latest" yarn run "${@}"

popd 1>/dev/null