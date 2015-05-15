#!/bin/bash

echo "Running selenium tests for embedded views"
tox tests/embedded_views > tests.log

if [[ $? -ne 0 ]]; then
    echo "Tests FAILED"
    uuencode tests.log tests.log | mail -s "Selenium tests for embedded views FAILED!" test@gmail.com
fi
