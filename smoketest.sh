#!/bin/bash

bosh -n target $1
bosh -n login $2 $3
bosh -n download manifest $4 $4.yml
bosh -n deployment $4.yml
bosh -n run errand smoke-tests
