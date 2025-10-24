class LogLineParser
  def initialize(line)
    @line = line
  end

  def parts
    @parts ||= @line.split(':')
  end
  
  def message
    parts.last.strip
  end

  def log_level
    parts.first.tr('[]', '').downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
