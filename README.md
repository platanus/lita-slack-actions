# lita-slack-actions

This plugin adds a generic route that receives the payload from an [interactive message](https://api.slack.com/interactive-messages) and triggers an event using the callback id.
It's meant to be used with a lita-slack adapter [able to send messages with interactive attachments](https://github.com/litaio/lita-slack/pull/128).

## Installation

Add lita-slack-actions to your Lita instance's Gemfile:

``` ruby
gem "lita-slack-actions"
```

## Usage

Send an interactive message with a callback_id of your choice and then add an [event route](https://docs.lita.io/plugin-authoring/handlers/#event-routes) for that id.
