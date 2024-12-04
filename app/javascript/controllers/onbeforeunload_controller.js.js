// app/javascript/controllers/onbeforeunload_controller.js
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    window.onbeforeunload = () => {
      navigator.sendBeacon("/questions/delete_all");
    };
  }
}
