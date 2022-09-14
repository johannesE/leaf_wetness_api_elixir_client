# NOTE: This file is auto generated by OpenAPI Generator 6.1.1-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DatabaumLeafWetnessAPI.Api.Authentication do
  @moduledoc """
  API calls for all endpoints tagged `Authentication`.
  """

  alias DatabaumLeafWetnessAPI.Connection
  import DatabaumLeafWetnessAPI.RequestBuilder

  @doc """
  Login

  ### Parameters

  - `connection` (DatabaumLeafWetnessAPI.Connection): Connection to server
  - `username` (String.t): 
  - `password` (String.t): 
  - `opts` (keyword): Optional parameters
    - `:grant_type` (String.t): 
    - `:scope` (String.t): 
    - `:client_id` (String.t): 
    - `:client_secret` (String.t): 

  ### Returns

  - `{:ok, DatabaumLeafWetnessAPI.Model.TokenResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec login_api_v1_auth_token_post(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, DatabaumLeafWetnessAPI.Model.TokenResponse.t} | {:ok, DatabaumLeafWetnessAPI.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def login_api_v1_auth_token_post(connection, username, password, opts \\ []) do
    optional_params = %{
      :grant_type => :form,
      :scope => :form,
      :client_id => :form,
      :client_secret => :form
    }

    request =
      %{}
      |> method(:post)
      |> url("/api/v1/auth/token")
      |> add_param(:form, :username, username)
      |> add_param(:form, :password, password)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %DatabaumLeafWetnessAPI.Model.TokenResponse{}},
      {422, %DatabaumLeafWetnessAPI.Model.HttpValidationError{}}
    ])
  end
end
