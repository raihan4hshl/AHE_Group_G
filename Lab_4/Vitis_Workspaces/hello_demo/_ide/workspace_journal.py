# 2025-11-06T15:57:14.785098700
import vitis

client = vitis.create_client()
client.set_workspace(path="hello_demo")

comp = client.create_app_component(name="hello_demo_app",platform = "$COMPONENT_LOCATION/../export/hello_demo/hello_demo.xpfm",domain = "standalone_microblaze_0")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "hello_world",hw_design = "$COMPONENT_LOCATION/../../../Vivado_Projects/Microblaze_IP/Microblaze_task_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="hello_world")
status = platform.build()

vitis.dispose()

