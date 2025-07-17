import { Controller } from "@hotwired/stimulus"
import { post } from "@rails/request.js"

export default class extends Controller {
  static values = { publishableKey: String, url: String };

  async connect() {
    console.log("Stripe Checkout controller connected");
    console.log(this.urlValue);
    console.log(this.publishableKeyValue);

    const stripe = Stripe(this.publishableKeyValue);

    const response = await post(this.urlValue);

    if (response.ok) {
      const data = await response.response.json();
      const { clientSecret } = data;

      const stripe = Stripe(this.publishableKeyValue);
      const checkout = await stripe.initEmbeddedCheckout({ clientSecret });
      checkout.mount(this.element);
    } else {
      console.error("Stripe checkout session failed", response);
    }


    const { clientSecret } = await response.json();  // Then use response

    const checkout = await stripe.initEmbeddedCheckout({
      clientSecret,
    });

    checkout.mount(this.element);
  }
}
