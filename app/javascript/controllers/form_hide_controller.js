import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form-hide"
export default class extends Controller {
  static targets = ["form"]
  toggle() {
    this.formTarget.classList.toggle("hide-form")
  }
}
