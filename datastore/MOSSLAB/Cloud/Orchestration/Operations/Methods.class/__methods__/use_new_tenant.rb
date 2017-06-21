#
# Description: provide the dynamic list content from available tenants
#


dialog_field = $evm.object
list_values = {
  'required'   => true,
  'protected'   => false,
  'read_only'  => true,
  'value' => $evm.root['dialog_option_1_param_project_name'],
}
$evm.log(:info, "dialog_option_1_param_project_name is #{$evm.root['dialog_option_1_param_project_name']}")
list_values.each do |key, value| 
  $evm.log(:info, "Setting dialog variable #{key} to #{value}")
end
dialog_field['dialog_option_2_tenant_name'] = $evm.root['dialog_option_1_param_project_name']
