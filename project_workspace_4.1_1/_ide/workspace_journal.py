# 2026-01-04T18:20:22.068473700
import vitis

client = vitis.create_client()
client.set_workspace(path="project_workspace_4.1_1")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "pmod_TMP3_platform",hw_design = "$COMPONENT_LOCATION/../../../Hardware_vhdl_ip_files/tmp3_pmod_4.1_1/tmp3_design_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="pmod_TMP3_platform")
status = platform.build()

comp = client.create_app_component(name="TMP3_monitor_app",platform = "$COMPONENT_LOCATION/../pmod_TMP3_platform/export/pmod_TMP3_platform/pmod_TMP3_platform.xpfm",domain = "standalone_microblaze_0",template = "hello_world")

status = platform.build()

status = platform.build()

comp = client.get_component(name="TMP3_monitor_app")
comp.build()

vitis.dispose()

