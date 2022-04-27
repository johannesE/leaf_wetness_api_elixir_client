# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule DatabaumLeafWetnessAPI(Dev).Model.ValidationError do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"loc",
    :"msg",
    :"type"
  ]

  @type t :: %__MODULE__{
    :"loc" => [DatabaumLeafWetnessAPI(Dev).Model.ValidationErrorLocInner.t],
    :"msg" => String.t,
    :"type" => String.t
  }
end

defimpl Poison.Decoder, for: DatabaumLeafWetnessAPI(Dev).Model.ValidationError do
  import DatabaumLeafWetnessAPI(Dev).Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"loc", :list, DatabaumLeafWetnessAPI(Dev).Model.ValidationErrorLocInner, options)
  end
end

