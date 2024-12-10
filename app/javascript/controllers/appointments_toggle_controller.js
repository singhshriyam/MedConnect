// import { Controller } from "@hotwired/stimulus"

// export default class extends Controller {
//   static targets = ["userAppointments", "doctorAppointments"];

//   showUserAppointments() {
//     this.userAppointmentsTarget.style.opacity = "1";
//     this.doctorAppointmentsTarget.style.opacity = "0";
//   }

//   showDoctorAppointments() {
//     this.userAppointmentsTarget.style.opacity = "0";
//     this.doctorAppointmentsTarget.style.opacity = "1";
//   }

//   toggle() {
//     console.log(this.userAppointmentsTarget.style.opacity);
//     if (this.userAppointmentsTarget.style.opacity === "1") {
//       this.showDoctorAppointments();
//       console.log("showDoctor");
//     } else {
//       this.showUserAppointments();
//       console.log("showUser");
//     }
//   }
// }

import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["userAppointments", "doctorAppointments"];

  toggle() {
    console.log("clicked");

    this.userAppointmentsTarget.classList.toggle('hidden');
    this.doctorAppointmentsTarget.classList.toggle('hidden');
  }
}
