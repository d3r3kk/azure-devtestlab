Param(
$Action,
$Name)

$taskAction = New-ScheduledTaskAction –Execute $Action
$taskTrigger = New-ScheduledTaskTrigger -AtLogOn
$scheduledTask = New-ScheduledTask -Action $taskAction -Trigger $taskTrigger
Register-ScheduledTask $Name -InputObject $scheduledTask

