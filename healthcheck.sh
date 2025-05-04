#!/bin/sh
if nc -z localhost 1883; then
  exit 0
else
  exit 1
fi
