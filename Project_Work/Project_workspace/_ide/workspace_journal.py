# 2026-01-03T15:13:39.383695600
import vitis

client = vitis.create_client()
client.set_workspace(path="Project_workspace")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "Nexys_TMP3_Platform",hw_design = "$COMPONENT_LOCATION/../../../../Hardware_vhdl_ip_files/nexys_tmp3_hw/nexysA7_tmp3_wrapper_2.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="Nexys_TMP3_Platform")
status = platform.build()

vitis.dispose()

vitis.dispose()

