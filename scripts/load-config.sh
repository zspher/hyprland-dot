#!/bin/bash

rsync -azvhP ~/ .. --filter="merge ./copy.filter"

## redaction measures
sed -i -e "/.*\[\$e\].*/d" -e "/.*screen:.*/d" -e "/^State.*/d" ../.config/okularrc