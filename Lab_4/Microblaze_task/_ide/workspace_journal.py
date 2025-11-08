# 2025-11-03T14:06:39.993062300
import vitis

client = vitis.create_client()
client.set_workspace(path="Microblaze_task")

vitis.dispose()

