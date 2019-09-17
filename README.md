# [notify-slack-deployed-jira-tickets](https://github.com/reececomo/notify-slack-deployed-jira-tickets)

GitHub Action to notify Slack when JIRA tickets have been deployed.

* Counts all JIRA tickets in commit messages since the previous tag.
* JIRA ticket mentions must be in the format: `BOARD-123`

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

## Credits

- Based off of the [fnkr/github-action-git-bash](https://github.com/fnkr/github-action-git-bash) GitHub Action by [fnkr](https://github.com/fnkr).
