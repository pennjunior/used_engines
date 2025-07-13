// app/javascript/controllers/cart_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["button", "delete"]


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

    remove(event) {
      event.preventDefault()

      const engineId = event.currentTarget.dataset.engineId // ✅ Must come first

      fetch(`/cart/remove/${engineId}`, {
        method: "DELETE",
        headers: {
          "X-CSRF-Token": document.querySelector("[name='csrf-token']").content
        }
      })
        .then(response => response.json())
        .then(data => {
          // Remove the item from DOM
          const itemEl = event.currentTarget.closest(".cart-item")
          if (itemEl) itemEl.remove()

          this.updateCartBadge(data.cart_count)

          if (data.cart_count === 0) {
            const panel = document.querySelector("#cart-dropdown")
            if (panel) panel.innerHTML = "<p>Your cart is empty.</p>"
          }
        })
    }


  updateCartBadge(count) {
    const badge = document.querySelector("[data-cart-badge-target='count']")
    if (badge) badge.textContent = count
  }
}
