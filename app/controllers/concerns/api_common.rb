module ApiCommon
  def self.included(base)
    base.class_eval do
      before_action :skip_trackable
    end
  end

  private

  # devise-3.0.3/lib/devise/models/token_authenticatable.rb:21
  def skip_trackable
    request.env['devise.skip_trackable'] = true
  end

  def result_success
    { result: 0 }
  end

  def result_not_exists
    { result: 1 }
  end

  def result_already_exists
    { result: 3 }
  end

  def result_failed(message = nil)
    json = { result: 9 }
    if message
      json.merge! message: message
    end
    json
  end
end
