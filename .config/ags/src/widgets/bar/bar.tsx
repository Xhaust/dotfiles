import { Astal } from "ags/gtk4"
import { createPoll } from "ags/time"

export default function Bar() {
    const { TOP, LEFT, RIGHT } = Astal.WindowAnchor
    const clock = createPoll("", 1000, "date")
    return(
      <window visible anchor={TOP | LEFT | RIGHT}>
        <label label={clock} />
      </window>
    )
}
