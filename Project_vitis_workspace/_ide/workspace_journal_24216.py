# 2026-01-04T00:14:51.926363900
import vitis

client = vitis.create_client()
client.set_workspace(path="Project_vitis_workspace")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "system_TMP3_platform",hw_design = "$COMPONENT_LOCATION/../../../Hardware_vhdl_ip_files/pmod_digilent_TMP3_nexysA7/system_TMP3_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="system_TMP3_platform")
status = platform.build()

comp = client.create_app_component(name="TMP3_Monitor_App",platform = "$COMPONENT_LOCATION/../system_TMP3_platform/export/system_TMP3_platform/system_TMP3_platform.xpfm",domain = "standalone_microblaze_0",template = "hello_world")

status = platform.build()

comp = client.get_component(name="TMP3_Monitor_App")
comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../../Hardware_vhdl_ip_files/pmod_digilent_TMP3_nexysA7/system_TMP3_wrapper.xsa")

status = platform.build()

status = comp.clean()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../../Hardware_vhdl_ip_files/pmod_digilent_TMP3_nexysA7/system_TMP3_wrapper.xsa")

status = platform.build()

vitis.dispose()

