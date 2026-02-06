# 2026-01-04T04:08:21.696020600
import vitis

client = vitis.create_client()
client.set_workspace(path="nexysA7_workspace")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "TMP3_platform",hw_design = "$COMPONENT_LOCATION/../../../Hardware_vhdl_ip_files/pmod_Tmp3/mb_iic_tmp3_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="TMP3_platform")
status = platform.build()

comp = client.create_app_component(name="tmp3_monitor_app",platform = "$COMPONENT_LOCATION/../TMP3_platform/export/TMP3_platform/TMP3_platform.xpfm",domain = "standalone_microblaze_0",template = "hello_world")

status = platform.build()

comp = client.get_component(name="tmp3_monitor_app")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

