module Lita
  module Handlers
    class SlackActions < Handler
      http.post '/slack-actions' do |request|
        raw_json = Hash[URI.decode_www_form(request.body.string)]["payload"]
        payload = JSON.parse(raw_json)
        robot.trigger(payload["callback_id"].to_sym, payload)
      end

      Lita.register_handler(self)
    end
  end
end
