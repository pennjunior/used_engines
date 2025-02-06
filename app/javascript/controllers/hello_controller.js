import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("we logged in");
    this.element.textContent = "Hello World! we wanna check the controller"
  }
}
