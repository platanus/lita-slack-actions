module Lita
  module Handlers
    class SlackActions < Handler
      http.post '/slack-actions' do |request|
        raw_json = Hash[URI.decode_www_form(request.body.string)]["payload"]
        payload = JSON.parse(raw_json)
        action = payload["callback_id"] || payload["actions"][0]["action_id"]
        robot.trigger(action.to_sym, payload)
      end

      Lita.register_handler(self)
    end
  end
end
