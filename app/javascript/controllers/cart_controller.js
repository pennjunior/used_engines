// app/javascript/controllers/cart_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["button"]


  add(event) {
    event.preventDefault()
    const engineId = this.buttonTarget.dataset.engineId

    fetch(`/cart/add/${engineId}`, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "X-CSRF-Token": document.querySelector("[name='csrf-token']").content
      },
      body: JSON.stringify({ engine_id: engineId })
    })
      .then(response => response.json())
      .then(data => {
        // update button text or cart badge
        this.buttonTarget.innerText = "Added"
        this.updateCartBadge(data.cart_count)
      })
  }

  updateCartBadge(count) {
    const badge = document.querySelector("[data-cart-badge-target='count']")
    if (badge) badge.textContent = count
  }
}
