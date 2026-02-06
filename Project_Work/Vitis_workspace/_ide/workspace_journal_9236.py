# 2026-01-01T22:47:09.093912900
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_workspace")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "nexysA7_TMP3",hw_design = "$COMPONENT_LOCATION/../../../../Hardware_vhdl_ip_files/nexys_tmp3_hw/nexys_tmp3_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

vitis.dispose()

