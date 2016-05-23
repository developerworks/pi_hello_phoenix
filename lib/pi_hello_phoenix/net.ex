defmodule PiHelloPhoenix.Net do
  alias Nerves.Networking
  alias Nerves.SSDPServer
  alias Nerves.Lib.UUID

  @interface :eth0

  def start(_type, _args) do
    unless :os.type == {:unix, :darwin} do
      {:ok, _} = Networking.setup @interface
    end
    publish_node_via_ssdp(@interface)
    {:ok, self}
  end

  defp publish_node_via_ssdp(_iface) do
    usn = "uuid:" <> UUID.generate
    st = "urn:nerves-project-org:service:cell:1"
    _fields = ["x-node": (node |> to_string) ]
    {:ok, _} = SSDPServer.publish usn, st
  end
end
