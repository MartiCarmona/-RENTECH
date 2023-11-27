// app/javascript/controllers/rental_form_controller.js
import { Controller } from "stimulus";

export default class extends Controller {
  connect() {
    this.checkRentedStatus();
  }

  checkRentedStatus() {
    const form = this.element;
    const isRented = form.dataset.isRented === "true";

    if (isRented) {
      this.disableButton();
    }
  }

  disableButton() {
    const submitButton = this.element.querySelector('input[type="submit"]');
    submitButton.disabled = true;
  }
}
