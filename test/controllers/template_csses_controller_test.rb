require 'test_helper'

class TemplateCssesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @template_css = template_csses(:one)
  end

  test "should get index" do
    get template_csses_url
    assert_response :success
  end

  test "should get new" do
    get new_template_css_url
    assert_response :success
  end

  test "should create template_css" do
    assert_difference('TemplateCss.count') do
      post template_csses_url, params: { template_css: { name: @template_css.name } }
    end

    assert_redirected_to template_css_url(TemplateCss.last)
  end

  test "should show template_css" do
    get template_css_url(@template_css)
    assert_response :success
  end

  test "should get edit" do
    get edit_template_css_url(@template_css)
    assert_response :success
  end

  test "should update template_css" do
    patch template_css_url(@template_css), params: { template_css: { name: @template_css.name } }
    assert_redirected_to template_css_url(@template_css)
  end

  test "should destroy template_css" do
    assert_difference('TemplateCss.count', -1) do
      delete template_css_url(@template_css)
    end

    assert_redirected_to template_csses_url
  end
end
