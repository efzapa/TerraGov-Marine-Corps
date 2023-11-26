/// Viable flags to go here are START_PROCESSING_ON_INIT, or START_PROCESSING_MANUALLY. See code\__DEFINES\machines.dm for more information on these flags.
var/processing_flags = START_PROCESSING_ON_INIT

/// What subsystem this machine will use, which is generally SSmachines or SSfastprocess. By default all machinery use SSmachines. This fires a machine's process() roughly every 2 seconds.
var/subsystem_type = /datum/controller/subsystem/machines

/obj/machinery/proc/begin_processing()
	var/datum/controller/subsystem/processing/subsystem = locate(subsystem_type) in Master.subsystems
	START_PROCESSING(subsystem, src)

/// Helper proc for telling a machine to stop processing with the subsystem type that is located in its `subsystem_type` var.
/obj/machinery/proc/end_processing()
	var/datum/controller/subsystem/processing/subsystem = locate(subsystem_type) in Master.subsystems
	STOP_PROCESSING(subsystem, src)
