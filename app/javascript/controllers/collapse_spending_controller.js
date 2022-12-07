import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="collapse-spending"
export default class extends Controller {
  static targets = ["list", "arrow"]
  connect() {
    console.log("ça marche")
  }

  displayList() {
    console.log(this.listTarget);
    this.listTarget.classList.toggle("--list-open")
    this.arrowTarget.classList.toggle("--rotate-arrow")
  }
}
