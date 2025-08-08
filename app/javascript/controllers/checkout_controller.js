// app/javascript/controllers/checkout_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = { cartId: String }  // Add this line
  
  open() {
    console.log("Pay button clicked!")
    const frame = this.element.querySelector("#checkout-modal-frame")
    const cartId = this.cartIdValue  // Change this line
    console.log("Frame:", frame, "Cart ID:", cartId)
    
    if (frame && cartId) {
      frame.src = `/carts/${cartId}/purchases/new`
    } else {
      console.error("Frame or cart ID not found", { frame, cartId })
    }
  }
  
  close() {
    const frame = this.element.querySelector("#checkout-modal-frame")
    if (frame) {
      frame.innerHTML = ""
    }
  }
}