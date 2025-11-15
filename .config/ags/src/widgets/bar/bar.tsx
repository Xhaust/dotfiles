import { Astal } from "ags/gtk4"
import { createPoll } from "ags/time"
import { createBinding } from "ags"
import Battery from "gi://AstalBattery"

const clock = createPoll("", 1000, "date")

function BatteryLabel(){
    const battery = Battery.get_default()
    const percent = createBinding(
	battery, "percentage", 
    )((p) => `${Math.floor(p * 100)}%`)
    return (
	<label label={percent}/>
    )
}

export default function Bar() {
    const { TOP, LEFT, RIGHT } = Astal.WindowAnchor
    return(
      <window 
	visible 
	anchor={TOP | LEFT | RIGHT}
      >
        <label label={clock} />
	<BatteryLabel />
      </window>
    )
}
