module ApiCommon
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
