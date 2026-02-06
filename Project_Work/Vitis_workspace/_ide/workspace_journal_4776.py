# 2026-01-02T20:42:00.173638100
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_workspace")

platform = client.get_component(name="nexysA7_TMP3")
status = platform.build()

status = platform.build()

comp = client.get_component(name="tmp3_test")
status = comp.clean()

platform = client.get_component(name="nexys_tmp3_platform")
status = platform.build()

comp.build()

platform = client.get_component(name="nexysA7_TMP3")
status = platform.build()

status = platform.build()

status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

client.delete_component(name="nexys_tmp3_platform")

client.delete_component(name="componentName")

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "TMP3_J",hw_design = "$COMPONENT_LOCATION/../../../../../../Downloads/TEST_J_2021TMP3/TEST_J_2021TMP3/TEST_J_2021TMP3/TEST_J_2021TMP3_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="temp_platform")
status = platform.build()

platform = client.get_component(name="nexysA7_TMP3")
status = platform.build()

comp.build()

platform = client.get_component(name="TMP3_J")
status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = comp.clean()

vitis.dispose()

vitis.dispose()

