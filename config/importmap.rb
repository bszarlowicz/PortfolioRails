# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin "jquery", to: "jquery.min.js", preload: true
pin "jquery_ujs", to: "jquery_ujs.js", preload: true
pin "bootstrap", to: "https://ga.jspm.io/npm:bootstrap@5.1.3/dist/js/bootstrap.esm.js"
pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.11.2/lib/index.js"
pin "select2", to: "select2.js", preload: true
pin "trix"
pin "@rails/actiontext", to: "actiontext.esm.js"
pin "slim-select" # @2.9.0
pin "@splidejs/splide", to: "https://ga.jspm.io/npm:@splidejs/splide@4.1.4/dist/js/splide.esm.js"
pin "@splidejs/splide/css", to: "https://ga.jspm.io/npm:@splidejs/splide@4.1.4/dist/css/splide.min.css"
pin_all_from "app/javascript/controllers", under: "controllers"
