// toggle_controller.js
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["filterForm", "toggleButton", "closeButton"];

  connect() {
    console.log("ToggleController connected now");
  }

  showFilterForm() {
    this.filterFormTarget.style.display = "block";
    this.toggleButtonTarget.style.display = "none";
  }

  hideFilterForm() {
    this.filterFormTarget.style.display = "none";
    this.toggleButtonTarget.style.display = "block";
  }


}
