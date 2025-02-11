require "test_helper"

class CarOrderMailerTest < ActionMailer::TestCase
  test "new_order" do
    mail = CarOrderMailer.new_order
    assert_equal "New order", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
