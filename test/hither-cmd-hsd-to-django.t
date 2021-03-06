#!/usr/bin/env bash

source "$(dirname $0)/setup"
use Test::More

assert-booktown-db

RUN hither --in=test/dataset/hsd/booktown.hsd --to=django

ok "$retval" "Make Django model from HSD was successful"

done_testing

# vim: set ft=sh lisp sw=2:
