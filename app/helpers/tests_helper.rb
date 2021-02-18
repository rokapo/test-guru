module TestsHelper
  def test_header(test)
    action = test.new_record? ? 'Create' : 'Edit'

    "<h1>#{action} #{test.title} Test</h1>".html_safe
  end
end
