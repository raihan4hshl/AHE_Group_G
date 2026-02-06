# 2026-01-13T13:56:54.805464
import vitis

client = vitis.create_client()
client.set_workspace(path="workspace_project_final")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "platform_temp3",hw_design = "$COMPONENT_LOCATION/../../../Documents/GitHub/Hardware_vhdl_ip_files/tmp3_pmod_design_final/tmp3_system_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="platform_temp3")
status = platform.build()

comp = client.create_app_component(name="tmp_app",platform = "$COMPONENT_LOCATION/../platform_temp3/export/platform_temp3/platform_temp3.xpfm",domain = "standalone_microblaze_0",template = "hello_world")

comp = client.get_component(name="tmp_app")
comp.build()

comp.build()

vitis.dispose()

