import { Astal } from "ags/gtk4"
import { createPoll } from "ags/time"
import { createBinding } from "ags"
import Battery from "gi://AstalBattery"

const clock = createPoll("", 1000, "date")

function BatteryLabel(){
    const percentage = createBinding(Battery.get_default(), "percentage")
    return <label label={percentage((p) => `${Math.round(p * 100)}%`)} />
}

export default function Bar() {
    const { TOP, LEFT, RIGHT } = Astal.WindowAnchor
    return(
      <window 
	visible 
	anchor={TOP | LEFT | RIGHT}
      >
	<centerbox>
	    <box $type="start">
	    </box>
	    <box $type="center">
		<label label={clock} />
	    </box>
	    <box $type="end">
		<BatteryLabel />
	    </box>
	</centerbox>
      </window>
    )
}
