require "ripper"

def comment_locations(source)
  Ripper.lex(source).each_with_object([]) do |(position, type, value, _state), lines|
    next unless type == :on_comment
    next if position == [1, 0] && value == "# frozen_string_literal: true\n"

    lines << position.first
  end
end

if $PROGRAM_NAME == __FILE__
  files = IO.popen(["git", "ls-files", "-z", "--", "*.rb"], &:read).split("\0")
  failures = files.flat_map do |file|
    comment_locations(File.read(file)).map { |line| "#{file}:#{line}" }
  end
  abort "Ruby comments are forbidden:\n#{failures.join("\n")}" unless failures.empty?

  puts "Comment ratchet: zero discretionary Ruby comments."
end
