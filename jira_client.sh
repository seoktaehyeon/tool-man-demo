#!/bin/bash
CURL="curl -v -X POST -H 'Content-Type: application/json' -H 'Accept: application/json'"
JIRA_KEY=$(git log -n 1 | tail -1 | awk '{print $1}')
JIRA_URL=${1?}
JIRA_USER=${2?}
JIRA_PASS=${3?}
JIRA_COMMENT=${4?}
echo ${JIRA_KEY} | awk -F '-' '{print $NF}' | grep -w '^[0-9]*' || {
    echo "No jira key in ${JIRA_KEY}"
    echo "Skip jira update"
    exit 0
}
echo "Update jira comment for ${JIRA_KEY}"
${CURL} -u ${JIRA_USER}:${JIRA_PASS} "${JIRA_URL}/rest/api/2/issue/$JIRA_KEY/comment" -d "{\"body\": \"${JIRA_COMMENT}\"}"
