# 2025-12-31T15:53:38.925885600
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_workspace")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "temp_platform",hw_design = "$COMPONENT_LOCATION/../../../../../../Downloads/TEST_J_2021TMP3/TEST_J_2021TMP3/TEST_J_2021TMP3/TEST_J_2021TMP3_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

vitis.dispose()

