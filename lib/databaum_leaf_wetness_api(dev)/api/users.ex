# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule DatabaumLeafWetnessAPI(Dev).Api.Users do
  @moduledoc """
  API calls for all endpoints tagged `Users`.
  """

  alias DatabaumLeafWetnessAPI(Dev).Connection
  import DatabaumLeafWetnessAPI(Dev).RequestBuilder


  @doc """
  Me

  ## Parameters

  - connection (DatabaumLeafWetnessAPI(Dev).Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, DatabaumLeafWetnessAPI(Dev).Model.UserResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec me_api_v1_users_me_get(Tesla.Env.client, keyword()) :: {:ok, DatabaumLeafWetnessAPI(Dev).Model.UserResponse.t} | {:error, Tesla.Env.t}
  def me_api_v1_users_me_get(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/api/v1/users/me")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %DatabaumLeafWetnessAPI(Dev).Model.UserResponse{}}
    ])
  end
end
