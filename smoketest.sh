#!/bin/bash

bosh target $1
bosh login $2 $3
bosh download manifest $4 $4.yml
bosh deployment $4.yml
bosh run errand smoke-tests
