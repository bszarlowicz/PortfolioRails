import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["star", "input"]
  static values = { rating: Number }

  connect() {
    this.updateStars(this.ratingValue)
  }

  hover(event) {
    const rating = parseInt(event.currentTarget.dataset.rating)
    this.updateStars(rating)
  }

  leave() {
    this.updateStars(this.ratingValue)
  }

  select(event) {
    const rating = parseInt(event.currentTarget.dataset.rating)
    this.ratingValue = rating
    this.inputTarget.value = rating
    this.updateStars(rating)
  }

  updateStars(rating) {
    this.starTargets.forEach((star, index) => {
      if (index < rating) {
        star.classList.remove('fa-star-o', 'star-empty')
        star.classList.add('fa-star', 'star-filled')
      } else {
        star.classList.remove('fa-star', 'star-filled')
        star.classList.add('fa-star-o', 'star-empty')
      }
    })
  }
}