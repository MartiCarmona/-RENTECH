import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

export default class extends Controller {
  connect() {
    flatpickr(this.element, {
      mode: "range",
      dateFormat: "Y-m-d"
    });
  }
}
