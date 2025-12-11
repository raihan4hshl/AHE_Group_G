# 2025-11-06T15:46:47.849280700
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Workspaces")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "hello_demo",hw_design = "$COMPONENT_LOCATION/../../Vivado_Projects/Microblaze_IP/Microblaze_task_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

status = client.delete_platform_repos(platform=["D:\Advanced_Hardware_Engineering\Vitis_Workspaces\hello_demo\export\hello_demo"])

status = client.add_platform_repos(platform=["d:\Advanced_Hardware_Engineering\Vitis_Workspaces\hello_demo"])

status = client.delete_platform_repos(platform=["d:\Advanced_Hardware_Engineering\Vitis_Workspaces\hello_demo"])

status = client.add_platform_repos(platform=["d:\Advanced_Hardware_Engineering\Vitis_Workspaces\hello_demo"])

platform = client.get_component(name="hello_demo")
status = platform.build()

vitis.dispose()

