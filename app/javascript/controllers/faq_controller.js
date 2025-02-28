import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["answer"];

  toggle(event) {
    const answer = event.currentTarget.nextElementSibling;
    answer.classList.toggle("hidden");
  }
}
