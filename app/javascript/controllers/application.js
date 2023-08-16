import { Application } from "@hotwired/stimulus"

const application = Application.start()

import { Slideover } from "tailwindcss-stimulus-components"
application.register('slideover', Slideover)

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
