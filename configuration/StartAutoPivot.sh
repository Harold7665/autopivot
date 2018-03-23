#!/usr/bin/env bash

export DEMO_ROOT="."
export DEMO_TITLE="AUTOPIVOT for BD"

if [ "${CATALINA_HOME}" == "" ]; then
    if [ -d "../tomcat" ]; then export CATALINA_HOME="../tomcat"
    elif [ -d "../../tomcat" ]; then export CATALINA_HOME="../../tomcat"
    else echo "Unable to find Tomcat directory"
    fi
fi
echo "Using Tomcat installed at: ${CATALINA_HOME}"

# -------------------------------------------------------

echo "Cleaning ${DEMO_TITLE} AutoPivot logs..."
rm -Rf ${DEMO_ROOT}/pivot/logs/* > /dev/null

echo "Starting ${DEMO_TITLE} AutoPivot..."
export CATALINA_BASE="${DEMO_ROOT}/pivot"
${CATALINA_HOME}/bin/startup.sh > /dev/null

# -------------------------------------------------------

read -p "Press any key to continue..."
