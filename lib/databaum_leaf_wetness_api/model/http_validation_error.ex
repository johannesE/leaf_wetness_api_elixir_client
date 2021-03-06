# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule DatabaumLeafWetnessAPI.Model.HttpValidationError do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"errors"
  ]

  @type t :: %__MODULE__{
    :"errors" => [DatabaumLeafWetnessAPI.Model.ValidationError.t] | nil
  }
end

defimpl Poison.Decoder, for: DatabaumLeafWetnessAPI.Model.HttpValidationError do
  import DatabaumLeafWetnessAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"errors", :list, DatabaumLeafWetnessAPI.Model.ValidationError, options)
  end
end

