#!/bin/bash

rsync -azvhP ~/ .. --filter="merge ./copy.filter"
