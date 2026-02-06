# 2026-01-04T13:46:07.601471800
import vitis

client = vitis.create_client()
client.set_workspace(path="nexysA7_workspace")

platform = client.get_component(name="TMP3_platform")
status = platform.build()

status = platform.build()

comp = client.get_component(name="tmp3_monitor_app")
comp.build()

status = platform.build()

domain = platform.get_domain(name="standalone_microblaze_0")

status = domain.regenerate()

status = platform.build()

client.delete_component(name="tmp3_monitor_app")

client.delete_component(name="componentName")

client.delete_component(name="TMP3_platform")

client.delete_component(name="componentName")

vitis.dispose()

