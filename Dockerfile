FROM alpine:latest

LABEL "com.github.actions.name"="notify-slack-jira-tickets-deployed"
LABEL "com.github.actions.description"="Notifies Slack about any JIRA tickets mentioned in commit messages since the last merge commit"
LABEL "com.github.actions.icon"="hash"
LABEL "com.github.actions.color"="black"

RUN set -e -x; \
        apk add --no-cache \
            bash \
            curl \
            jq \
            git \
            openssh-client \
        ;

COPY command-script /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/command-script"]
