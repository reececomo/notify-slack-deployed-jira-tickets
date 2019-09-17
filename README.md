# [notify-slack-deployed-jira-tickets](https://github.com/reececomo/notify-slack-deployed-jira-tickets)

GitHub Action to notify Slack when JIRA tickets have been deployed.

* Counts all JIRA tickets in commit messages since the previous tag.

## Variables

- `SLACK_WEBHOOK_URL`
- `JIRA_PREFIX` (e.g. "https://myjiraboard.atlassian.net" would be "myjiraboard")

## Usage example

```yaml
    - name: Notify Slack about JIRA tickets that have been deployed
      uses: reececomo/notify-slack-deployed-jira-tickets
      with:
        SLACK_WEBHOOK_URL: '...'
        JIRA_PREFIX: '...'
```
