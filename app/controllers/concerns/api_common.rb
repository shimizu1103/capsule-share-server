module ApiCommon
  def not_exists
    { result: 1 }
  end

  def failed(message = nil)
    json = { result: 9 }
    if message
      json.merge! message: message
    end
  end
end
