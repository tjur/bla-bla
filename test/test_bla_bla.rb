require 'test/unit'
require 'bla-bla'

class TestBlaBla < Test::Unit::TestCase

  def setup
    @bla = BlaBla.new
  end

  def test_author
    author = @bla.author
    assert_equal(author.split.size, 2)
    assert_equal(author.split.keep_if{ |s| s == s.capitalize }.size, 2)
  end

  def test_title
    title = @bla.title
    assert_equal([1, 2, 3, 4, 5].member?(title.split.size), true)
    assert_equal(title[0] == title[0].capitalize, true)
  end

  def test_sentence
    sentence = @bla.sentence
    assert_equal([5, 6, 7, 8, 9, 10].member?(sentence.split.size), true)
    assert_equal(sentence[0] == sentence[0].capitalize, true)
  end

  def test_content
    content = @bla.content
    assert_equal([1, 2, 3, 4, 5].member?(content.split(".").size), true)
    assert_equal(content.split(".").keep_if{ |sent| [5, 6, 7, 8, 9, 10].member?(sent.split.size) }.size == content.split(".").size, true)
    assert_equal(content.split(".").keep_if{ |sent| sent[0] == sent[0].capitalize}.size == content.split(".").size, true)
  end
end

