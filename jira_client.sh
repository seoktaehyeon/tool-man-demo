#!/bin/bash
CURL="curl -X POST -H 'Content-Type: application/json' -H 'Accept: application/json'"
JIRA_KEY=$(git log -n 1 | tail -1 | awk '{print $1}')
JIRA_URL=${1?}
JIRA_USER=${2?}
JIRA_PASS=${3?}
JIRA_COMMENT=${4?}
echo ${JIRA_KEY} | awk -F '-' '{print $NF}' | grep -w '^[0-9]*' || exit 0
${CURL} -u ${JIRA_USER}:${JIRA_PASS} "${JIRA_URL}/rest/api/2/issue/$JIRA_KEY/comment" -d "{\"body\": \"${JIRA_COMMENT}\"}"
