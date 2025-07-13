// app/javascript/controllers/cart_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["badge"]

  added(event) {
    event.preventDefault()
    const url = event.target.action

    fetch(url, {
      method: "POST",
      headers: {
        "X-CSRF-Token": document.querySelector("[name='csrf-token']").content
      }
    })
      .then(res => res.json())
      .then(data => {
        this.badgeTarget.textContent = data.count
      })
  }
}
