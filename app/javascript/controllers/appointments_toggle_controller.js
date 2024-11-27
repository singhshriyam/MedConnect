import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["userAppointments", "doctorAppointments"];

  showUserAppointments() {
    this.userAppointmentsTarget.style.display = "block";
    this.doctorAppointmentsTarget.style.display = "none";
  }

  showDoctorAppointments() {
    this.userAppointmentsTarget.style.display = "none";
    this.doctorAppointmentsTarget.style.display = "block";
  }

  toggle() {
    if (this.userAppointmentsTarget.style.display === "block") {
      this.showDoctorAppointments();
    } else {
      this.showUserAppointments();
    }
  }
}
