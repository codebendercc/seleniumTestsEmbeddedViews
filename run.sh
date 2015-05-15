#!/bin/bash

# Run embedded views tests
cd seleniumTests/
docker run -i -t codebender/selenium /bin/bash test.sh
cd ..
