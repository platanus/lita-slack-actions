require "spec_helper"

describe Lita::Handlers::SlackActions, lita_handler: true do
  it { is_expected.to route_http(:post, "/slack-actions") }
end
