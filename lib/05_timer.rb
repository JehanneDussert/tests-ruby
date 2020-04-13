def time_string(seconds)
    hours = seconds / 60 / 60
    if hours / 10 == 0
        hours = "0#{hours}"
    end
    minutes = seconds / 60 % 60
    if minutes / 10 == 0
        minutes = "0#{minutes}"
    end
    seconds = seconds % 60 % 60
    if seconds / 10 == 0
        seconds = "0#{seconds}"
    end
    return "#{hours}:#{minutes}:#{seconds}"
end
