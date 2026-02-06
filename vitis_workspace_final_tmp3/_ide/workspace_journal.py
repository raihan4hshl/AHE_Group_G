# 2026-01-15T13:40:06.543066800
import vitis

client = vitis.create_client()
client.set_workspace(path="workspace_project_final")

comp = client.get_component(name="tmp_app")
comp.build()

platform = client.get_component(name="platform_temp3")
status = platform.build()

status = platform.build()

status = comp.clean()

comp.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

