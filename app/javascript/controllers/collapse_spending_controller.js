import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="collapse-spending"
export default class extends Controller {
  static targets = ["list"]
  connect() {
    console.log("ça marche")
  }

  displayList() {
    console.log(this.listTarget);
    this.listTarget.classList.toggle("--list-open")
  }
}
