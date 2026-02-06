# 2026-01-04T04:04:06.561072100
import vitis

client = vitis.create_client()
client.set_workspace(path="Project_vitis_workspace")

platform = client.get_component(name="system_TMP3_platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../../Hardware_vhdl_ip_files/pmod_Tmp3/mb_iic_tmp3_wrapper.xsa")

status = platform.build()

vitis.dispose()

