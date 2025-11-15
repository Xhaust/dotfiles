import app from "ags/gtk4/app"
import Bar from "./src/widgets/bar/bar.tsx"

app.start({
    main() {
	return <Bar />
    },
})
