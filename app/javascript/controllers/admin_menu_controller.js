import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.menu = this.element.closest('.admin-floating-menu')
  }

  toggle(event) {
    event.preventDefault()
    this.menu.classList.toggle('collapsed')
  }
}