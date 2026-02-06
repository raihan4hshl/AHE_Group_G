# 2025-12-31T19:28:23.419538800
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_workspace")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "nexys_tmp3_platform",hw_design = "$COMPONENT_LOCATION/../../../../../../Downloads/TEST_J_2021TMP3/TEST_J_2021TMP3/TEST_J_2021TMP3/TEST_J_2021TMP3_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="nexys_tmp3_platform")
status = platform.update_desc(desc="")

comp = client.create_app_component(name="tmp3_test",platform = "$COMPONENT_LOCATION/../nexys_tmp3_platform/export/nexys_tmp3_platform/nexys_tmp3_platform.xpfm",domain = "standalone_microblaze_0")

vitis.dispose()

