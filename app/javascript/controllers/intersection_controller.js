import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.handleScroll()
    window.addEventListener('scroll', this.handleScroll.bind(this), { passive: true })
  }

  disconnect() {
    window.removeEventListener('scroll', this.handleScroll.bind(this))
  }

  handleScroll() {
    const rect = this.element.getBoundingClientRect()
    const windowHeight = window.innerHeight
    
    // Oblicz procent widoczności elementu (0 = poza ekranem u dołu, 1 = w pełni widoczny)
    const visiblePercent = Math.max(0, Math.min(1, 
      (windowHeight - rect.top) / (windowHeight * 0.5)
    ))
    
    if (visiblePercent > 0) {
      // Ustaw opacity i transform na podstawie scroll progress
      this.element.style.opacity = visiblePercent
      this.element.style.transform = `translateY(${30 * (1 - visiblePercent)}px)`
    }
  }
}