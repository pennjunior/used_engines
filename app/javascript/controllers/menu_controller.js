// app/javascript/controllers/menu_controller.js
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["menu", "dropdown"];

  connect() {
    console.log("1 menu logged");
    // Ensure the mobile menu and dropdowns are initially hidden
    this.menuTarget.classList.add("hidden");
    this.dropdownTargets.forEach((dropdown) => dropdown.classList.add("hidden"));
  }

  toggleMenu() {
    // Toggle the mobile menu visibility
    // console.log("menu 1 clicked");
    this.menuTarget.classList.toggle("show");
  }

  toggleDropdown(event) {
    // Prevent the default anchor behavior
    // console.log("profile 1 clicked");
    event.preventDefault();

    // Toggle the visibility of the dropdown menu
    const dropdown = event.currentTarget.nextElementSibling;
    if (dropdown) {
      dropdown.classList.toggle("show");
    }
  }
}
