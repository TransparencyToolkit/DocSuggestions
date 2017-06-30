require 'test_helper'

class DocSuggestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doc_suggestion = doc_suggestions(:one)
  end

  test "should get index" do
    get doc_suggestions_url
    assert_response :success
  end

  test "should get new" do
    get new_doc_suggestion_url
    assert_response :success
  end

  test "should create doc_suggestion" do
    assert_difference('DocSuggestion.count') do
      post doc_suggestions_url, params: { doc_suggestion: { email_pgp: @doc_suggestion.email_pgp, keywords: @doc_suggestion.keywords, title: @doc_suggestion.title, url: @doc_suggestion.url } }
    end

    assert_redirected_to doc_suggestion_url(DocSuggestion.last)
  end

  test "should show doc_suggestion" do
    get doc_suggestion_url(@doc_suggestion)
    assert_response :success
  end

  test "should get edit" do
    get edit_doc_suggestion_url(@doc_suggestion)
    assert_response :success
  end

  test "should update doc_suggestion" do
    patch doc_suggestion_url(@doc_suggestion), params: { doc_suggestion: { email_pgp: @doc_suggestion.email_pgp, keywords: @doc_suggestion.keywords, title: @doc_suggestion.title, url: @doc_suggestion.url } }
    assert_redirected_to doc_suggestion_url(@doc_suggestion)
  end

  test "should destroy doc_suggestion" do
    assert_difference('DocSuggestion.count', -1) do
      delete doc_suggestion_url(@doc_suggestion)
    end

    assert_redirected_to doc_suggestions_url
  end
end
