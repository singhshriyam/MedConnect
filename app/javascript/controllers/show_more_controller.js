import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-more"
export default class extends Controller {
  static targets = ["restReviews"]
  connect() {

  }
  seeMore() {
    if (this.restReviewsTarget.classList.contains("d-none") )  {
      this.restReviewsTarget.classList.remove("d-none")
    } else {
      this.restReviewsTarget.classList.add("d-none")
    }
  }
}
