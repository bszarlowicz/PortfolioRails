import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["content"]
  static values = {
    projectData: Object
  }

  connect() {
    this.updateContent(this.getActiveTab())
  }

  selectTab(event) {
    event.preventDefault()
    const tab = event.currentTarget.dataset.tab
    
    this.updateActiveButton(event.currentTarget)
    this.updateContent(tab)
  }

  updateActiveButton(clickedButton) {
    this.element.querySelectorAll('.tab-button').forEach(button => {
      button.classList.remove('active')
    })
    clickedButton.classList.add('active')
  }

  updateContent(tab) {
    const description = this.projectDataValue[tab]?.description
    if (description && this.hasContentTarget) {
      this.contentTarget.textContent = description
    }
  }

  getActiveTab() {
    const activeButton = this.element.querySelector('.tab-button.active')
    return activeButton?.dataset.tab || 'about'
  }
}