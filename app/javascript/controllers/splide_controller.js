import { Controller } from '@hotwired/stimulus';
import { Splide } from '@splidejs/splide';

export default class extends Controller {
  static targets = ["left", "right"];

  connect() {
    const splideElement = this.element.querySelector('.splide');

    this.splide = new Splide(splideElement, {
      direction: 'ttb',
      height: '10rem',
      wheel: true,
      waitForTransition: true,
      wheelMinThreshold: 30,
      perPage: 1,
      releaseWheel: false,
      autoplay: true,
    });

    this.splide.on('moved', (newIndex) => this.updateSideTexts(newIndex));
    this.splide.mount();

    this.updateSideTexts(this.splide.index);
  }

  updateSideTexts(index) {
    const slides = this.element.querySelectorAll('.splide__slide');
    const slide = slides[index];

    if (!slide) return;

    if (this.hasLeftTarget) {
      this.leftTarget.textContent = slide.dataset.left || '';
    }
    if (this.hasRightTarget) {
      this.rightTarget.textContent = slide.dataset.right || '';
    }
  }
}
