import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.boundHandleScroll = this.handleScroll.bind(this)
    this.handleScroll()
    window.addEventListener('scroll', this.boundHandleScroll, { passive: true })
  }

  disconnect() {
    window.removeEventListener('scroll', this.boundHandleScroll)
  }

  handleScroll() {
    const rect = this.element.getBoundingClientRect()
    const windowHeight = window.innerHeight
    
    const visiblePercent = Math.max(0, Math.min(1, 
      (windowHeight - rect.top) / (windowHeight * 0.5)
    ))
    
    this.element.style.opacity = visiblePercent
    this.element.style.transform = `translateY(${30 * (1 - visiblePercent)}px)`
  }
}