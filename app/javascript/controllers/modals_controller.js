import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modals"
export default class extends Controller {
  connect() {
    // Bind handleEscape to this context
    this.handleEscape = this.handleEscape.bind(this);
    // Add event listener for ESC key
    document.addEventListener("keydown", this.handleEscape);
  }

  disconnect() {
    // Clean up event listener when controller disconnects
    document.removeEventListener("keydown", this.handleEscape);
  }

  handleEscape(e) {
    if (e.key === "Escape" || e.keyCode === 27) {
      const modal = document.getElementById("modal");
      if (modal && modal.innerHTML.trim() !== "") {
        modal.innerHTML = "";
      }
    }
  }

  // closeByOverlay(e){
  //   if (e.target.classList.contains("modal-overlay")) {
  //     e.preventDefault();
  //     const modal = document.getElementById("modal");
  //     modal.innerHTML = "";
  //   }
  // }

  close(e){
    e.preventDefault();
    const modal = document.getElementById("modal");
    modal.innerHTML = "";
  }
}