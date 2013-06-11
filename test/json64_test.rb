require 'test_helper'
require 'base64'

class Json64Test < ActiveSupport::TestCase

  JSON_STRING = '{ "string": "string", "number": 12, "boolean": true, "array": [ 1, 2, 3 ], "object": { "key": "value", "nested": { "thing": "object" } }, "nuLL": null, "undef": "undefined", "nan": NaN }'
  JSON64 = "eyAic3RyaW5nIjogInN0cmluZyIsICJudW1iZXIiOiAxMiwgImJvb2xlYW4iOiB0cnVlLCAiYXJyYXkiOiBbIDEsIDIsIDMgXSwgIm9iamVjdCI6IHsgImtleSI6ICJ2YWx1ZSIsICJuZXN0ZWQiOiB7ICJ0aGluZyI6ICJvYmplY3QiIH0gfSwgIm51TEwiOiBudWxsLCAidW5kZWYiOiAidW5kZWZpbmVkIiwgIm5hbiI6IE5hTiB9"

  test "truth" do
    assert_kind_of Module, Json64
  end

  test "encoding" do
    assert_equal Base64.urlsafe_encode64(JSON_STRING), JSON64
  end

  test "decoding" do
  	assert_equal Base64.urlsafe_decode64(JSON64), JSON_STRING
  end

end




