# 2026-01-02T21:13:26.658488500
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_workspace")

client.delete_component(name="temp_platform")

client.delete_component(name="temp_platform")

client.delete_component(name="nexysA7_TMP3")

client.delete_component(name="componentName")

platform = client.get_component(name="TMP3_J")
status = platform.build()

comp = client.get_component(name="tmp3_test")
comp.build()

comp = client.create_app_component(name="TMP3_application_component",platform = "$COMPONENT_LOCATION/../TMP3_J/export/TMP3_J/TMP3_J.xpfm",domain = "standalone_microblaze_0")

comp = client.get_component(name="TMP3_application_component")
status = comp.import_files(from_loc="", files=["C:\Users\User\Downloads\TEST_J_2021TMP3\TEST_J_2021TMP3\TEST_J_2021TMP3\TEST_J_2021TMP3.srcs"])

status = platform.build()

comp = client.get_component(name="TMP3_application_component")
comp.build()

client.delete_component(name="tmp3_test")

client.delete_component(name="componentName")

status = platform.build()

vitis.dispose()

vitis.dispose()

