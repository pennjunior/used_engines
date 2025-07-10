// app/javascript/controllers/cart_badge_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["count", "panel"]

  toggle(event) {
    event.preventDefault()
    event.stopPropagation()
    this.panelTarget.classList.toggle("hidden")
  }

  update(newCount) {
    this.countTarget.textContent = newCount
  }
}
