import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="carousel"
export default class extends Controller {
  static targets = ["button"];

  connect() {
    this.setInterval();
    console.log("we logged carousel");
  }

  setInterval() {
    this.interval = setInterval(() => {
      const checkedButton = this.buttonTargets.find(btn => btn.checked);
      let nextButton;
      if (checkedButton) {
        const currentIndex = this.buttonTargets.indexOf(checkedButton);
        nextButton = this.buttonTargets[(currentIndex + 1) % this.buttonTargets.length];
      }

      if (nextButton) {
        nextButton.checked = true;
      }
    }, 100000);
  }

  disconnect() {
    clearInterval(this.interval);
  }
}
