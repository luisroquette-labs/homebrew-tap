require "minitest/autorun"
require_relative "check_comments"

class CommentLintTest < Minitest::Test
  def test_preserves_ruby_directive
    assert_empty comment_locations("# frozen_string_literal: true\nputs 'ok'\n")
  end

  def test_detects_actual_comment
    assert_equal [2], comment_locations("puts 'ok'\n# old\n")
  end

  def test_ignores_hash_inside_string
    assert_empty comment_locations("url = 'https://example.com/#fragment'\n")
  end
end
