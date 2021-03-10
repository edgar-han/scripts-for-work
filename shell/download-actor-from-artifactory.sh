#!/bin/bash

. ENV_VARS
# imports variables from ENV_VARS
# expects the following variables
#
# repo=actor-generic
# branch=release-4.4.2.0
# version=4.4.2.0
# artip=the.artifactory.ip.address
# artun=artifactory_user_name
# artpw="artifactory_password"

package=actor_${version}.tar.gz
arturl=https://${artip}/artifactory/${repo}/${branch}/${package}

curl -k -u "${artun}:${artpw}" \
  ${arturl} \
  --output ${package}

md5sum ${package}
