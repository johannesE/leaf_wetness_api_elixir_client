# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule DatabaumLeafWetnessAPI(Dev).Api.Authentication do
  @moduledoc """
  API calls for all endpoints tagged `Authentication`.
  """

  alias DatabaumLeafWetnessAPI(Dev).Connection
  import DatabaumLeafWetnessAPI(Dev).RequestBuilder


  @doc """
  Login

  ## Parameters

  - connection (DatabaumLeafWetnessAPI(Dev).Connection): Connection to server
  - username (String.t): 
  - password (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :grant_type (String.t): 
    - :scope (String.t): 
    - :client_id (String.t): 
    - :client_secret (String.t): 
  ## Returns

  {:ok, DatabaumLeafWetnessAPI(Dev).Model.TokenResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec login_api_v1_auth_token_post(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, DatabaumLeafWetnessAPI(Dev).Model.HttpValidationError.t} | {:ok, DatabaumLeafWetnessAPI(Dev).Model.TokenResponse.t} | {:error, Tesla.Env.t}
  def login_api_v1_auth_token_post(connection, username, password, opts \\ []) do
    optional_params = %{
      :"grant_type" => :form,
      :"scope" => :form,
      :"client_id" => :form,
      :"client_secret" => :form
    }
    %{}
    |> method(:post)
    |> url("/api/v1/auth/token")
    |> add_param(:form, :"username", username)
    |> add_param(:form, :"password", password)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %DatabaumLeafWetnessAPI(Dev).Model.TokenResponse{}},
      { 422, %DatabaumLeafWetnessAPI(Dev).Model.HttpValidationError{}}
    ])
  end
end