import { Application } from "@hotwired/stimulus"
import AppointmentsToggleController from "./appointments_toggle_controller.js"
// Stimulus.register("appointments-toggle", AppointmentsToggleController)

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
