#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 CODEBENDER_SELENIUM_HUB_URL"
    exit 1
fi

# Run embedded views tests
cd seleniumTests/
docker run -i -t -e "CODEBENDER_SELENIUM_HUB_URL=$1" -it codebender/selenium /bin/bash /opt/codebender/seleniumTests/test.sh
cd ..
