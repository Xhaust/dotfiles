import app from "ags/gtk4/app"
import Bar from "./src/widgets/bar"

app.start({
    main() {
	return <Bar />
    },
})
