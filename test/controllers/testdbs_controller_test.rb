require 'test_helper'

class TestdbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testdb = testdbs(:one)
  end

  test "should get index" do
    get testdbs_url
    assert_response :success
  end

  test "should get new" do
    get new_testdb_url
    assert_response :success
  end

  test "should create testdb" do
    assert_difference('Testdb.count') do
      post testdbs_url, params: { testdb: { name: @testdb.name, text: @testdb.text, yes: @testdb.yes } }
    end

    assert_redirected_to testdb_url(Testdb.last)
  end

  test "should show testdb" do
    get testdb_url(@testdb)
    assert_response :success
  end

  test "should get edit" do
    get edit_testdb_url(@testdb)
    assert_response :success
  end

  test "should update testdb" do
    patch testdb_url(@testdb), params: { testdb: { name: @testdb.name, text: @testdb.text, yes: @testdb.yes } }
    assert_redirected_to testdb_url(@testdb)
  end

  test "should destroy testdb" do
    assert_difference('Testdb.count', -1) do
      delete testdb_url(@testdb)
    end

    assert_redirected_to testdbs_url
  end
end
