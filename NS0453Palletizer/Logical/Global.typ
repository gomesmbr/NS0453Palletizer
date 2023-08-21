
TYPE
	IHMCmdInType : 	STRUCT 
		SpeedUp : DINT;
		SpeedDown : DINT;
		Start : DINT;
		Stop : DINT;
		F1 : DINT;
		F2 : DINT;
		F3 : DINT;
		F4 : DINT;
		F5 : DINT;
		F6 : DINT;
		Plane2 : DINT;
		Ctrl : DINT;
		PositionScreen : DINT;
		ProjectScreen : DINT;
		VariableMonitor : DINT;
		CustomerSetting : DINT;
		ApplicationScreen : DINT;
		AlarmScreen : DINT;
		Cancel : DINT;
		Manual : DINT;
		Automatic : DINT;
	END_STRUCT;
	IHMCmdOutType : 	STRUCT 
		Run : DINT;
		Error : DINT;
		Motion : DINT;
		Process : DINT;
		Plane2 : DINT;
	END_STRUCT;
	IHMCmdTyoe : 	STRUCT 
		Input : IHMCmdInType;
		Output : IHMCmdOutType;
	END_STRUCT;
	RobotControlType : 	STRUCT 
		IHMCmd : IHMCmdTyoe;
	END_STRUCT;
	IHMInOutRobotType : 	STRUCT 
		Input : IHMInputRobotType;
		Output : IHMOutputRobotType;
	END_STRUCT;
	IHMInputRobotType : 	STRUCT 
		ServoOn : DINT; (*Servo Off -> 0 / Servo On -> 1 / Servo fault ->2 *)
		ProgramActive : DINT; (*Program Off -> 0 / Program Active ->1 / Program Fault -> 2*)
		ManualAutomatic : DINT; (*Stop -> 0 / Manual Off -> 1 / Manual Active -> 2 / Manual Fault -> 3 / Automatic Off -> 4 / Automatic Active -> 5 / Automatic Fault -> 6*)
		PorcentVelocity : DINT; (*Velocity in Automatic or Manual *)
		F1F2 : DINT; (*Jog Q1 Inactive-> 0 / Jog Q1 Active-> 1 / Jog Q4 Inactive -> 2 / Jog Q4 Active -> 3 / Jog X Inactive -> 4 / Jog X Active -> 5 / Jog C Inactive -> 6  / Jog C Active -> 6 *)
		F3F4 : DINT; (*Jog Q2 Inactive -> 0 / Jog Q2 Active -> 1 / Jog Y Inactive -> 2 / Jog Y Active -> 3*)
		F5F6 : DINT; (*Jog Q3 Inactive -> 0 / Jog Q3 Active -> 1 / Jog Z Inactive -> 2 / Jog Z Active -> 3*)
		VariableMonitor : DINT; (*Inactive*)
		PositioningScreen : DINT; (*Jog -> 0 / World -> 1 / Tools -> 2*)
		StartStop : DINT; (*Stop -> 0 / Start -> 1*)
		CustomerSettingsServicePage : DINT; (*Inactive*)
		Cancel2Plane : DINT; (*Inactive*)
		Error : DINT; (*Inactive*)
		SecondFunction : BOOL;
		EnableQ4 : BOOL;
		EnableC : BOOL;
	END_STRUCT;
	IHMOutputRobotType : 	STRUCT 
		VelocityPercent : DINT;
	END_STRUCT;
END_TYPE
