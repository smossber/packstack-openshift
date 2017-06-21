#
# Description: <Method description here>
#
task = $evm.root['service_template_provision_task']

dialog_entries = task.dialog_options

$evm.log(:info, 'Inspecting task dialog before parser')
$evm.log(:info, dialog_entries.inspect)
$evm.log(:info, 'Inspecting dialog_option_2_tenant_name before parser')
$evm.log(:info, dialog_entries['dialog_option_2_tenant_name'])
$evm.log(:info, 'Inspecting dialog_option_1_param_project_name before parser')
$evm.log(:info, dialog_entries['dialog_option_1_param_project_name'])

task.set_dialog_option('dialog_option_2_tenant_name', dialog_entries['dialog_option_1_param_project_name'])
$evm.log(:info, 'Inspecting dialog_option_2_tenant_name after fix!')
$evm.log(:info, dialog_entries['dialog_option_2_tenant_name'])
