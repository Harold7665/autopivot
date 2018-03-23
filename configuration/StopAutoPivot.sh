#!/usr/bin/env bash

export DEMO_ROOT="."
export DEMO_TITLE="AUTOPIVOT for BD"

if [ "${CATALINA_HOME}" == "" ]; then
    if [ -d "../tomcat" ]; then export CATALINA_HOME="../tomcat"
    elif [ -d "../../tomcat" ]; then export CATALINA_HOME="../../tomcat"
    else echo "Unable to find Tomcat directory"
    fi
fi

# -------------------------------------------------------

echo "Stopping ${DEMO_TITLE} AutoPivot..."
export CATALINA_BASE="${DEMO_ROOT}/pivot"
${CATALINA_HOME}/bin/shutdown.sh > /dev/null
