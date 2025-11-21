module LandingHelper
  require 'base64'

  # ===== PREVIEW IMAGES =====

  def mentora_preview_images
    [
      'mentora_preview_0.png',
      'mentora_preview_1.png',
      'mentora_preview_5.png',
      'mentora_preview_2.png',
      'mentora_preview_3.png',
      'mentora_preview_7.png',
      'mentora_preview_4.png',
      'mentora_preview_6.png',
      'mentora_preview_8.png',
      'mentora_preview_9.png'
    ]
  end

  def eateat_preview_images
    [
      'eateat_preview_0.png',
      'eateat_preview_1.png',
      'eateat_preview_4.png',
      'eateat_preview_5.png'
    ]
  end

  def fate_whispers_preview_images
    [
      'fate_whispers_preview_0.png',
      'fate_whispers_preview_1.png',
      'fate_whispers_preview_2.png',
      'fate_whispers_preview_3.png',
      'fate_whispers_preview_4.png',
      'fate_whispers_preview_5.png',
      'fate_whispers_preview_6.png',
      'fate_whispers_preview_8.png',
      'fate_whispers_preview_7.png',
      'fate_whispers_preview_9.png',
    ]
  end

  def acrylmed_preview_images
    [
      'acrylmed_preview_0.png',
      'acrylmed_preview_2.png',
      'acrylmed_preview_3.png',
      'acrylmed_preview_4.png',
      'acrylmed_preview_5.png',
      'acrylmed_preview_6.png',
      'acrylmed_preview_7.png',
      'acrylmed_preview_8.png',
      'acrylmed_preview_9.png',
    ]
  end
  
  # ===== TECHNOLOGY ICONS =====

  def mentora_icons
    [
      { path: 'railsIcon.png', text: 'Rails', version: '7.1.3' },
      { path: 'rubyIcon.png', text: 'Ruby', version: '3.3.2' },
      { path: 'hotwireIcon.png', text: 'Hotwire', custom_class: 'hotwire-icon' },
      { path: 'turboIcon.png', text: 'Turbo', custom_class: 'turbo-icon' },
      { path: 'mySqlIcon.png', text: 'MySQL' },
      { path: 'cssIcon.png', text: 'CSS3' },
      { path: 'bootstrapIcon.png', text: 'Bootstrap', version: '5.1.3' },
      { path: 'htmlIcon.png', text: 'HTML5' }
    ]
  end
  
  def eateat_icons
    [
      { path: 'railsIcon.png', text: 'Rails' },
      { path: 'rubyIcon.png', text: 'Ruby' },
      { path: 'javascriptIcon.png', text: 'JavaScript' },
      { path: 'turboIcon.png', text: 'Turbo', custom_class: 'turbo-icon' },
      { path: 'cssIcon.png', text: 'CSS3' },
      { path: 'bootstrapIcon.png', text: 'Bootstrap' },
      { path: 'htmlIcon.png', text: 'HTML5' }
    ]
  end

  def fate_whispers_icons
    [
      { path: 'railsIcon.png', text: 'Rails', version: '7.1.3' },
      { path: 'rubyIcon.png', text: 'Ruby', version: '3.2.2' },
      { path: 'hotwireIcon.png', text: 'Hotwire', custom_class: 'hotwire-icon' },
      { path: 'turboIcon.png', text: 'Turbo', custom_class: 'turbo-icon' },
      { path: 'mySqlIcon.png', text: 'MySQL' },
      { path: 'cssIcon.png', text: 'CSS3' },
      { path: 'bootstrapIcon.png', text: 'Bootstrap'},
      { path: 'htmlIcon.png', text: 'HTML5' }
    ]
  end

  def acrylmed_icons
    [
      { path: 'railsIcon.png', text: 'Rails' },
      { path: 'rubyIcon.png', text: 'Ruby' },
      { path: 'javascriptIcon.png', text: 'JavaScript' },
      { path: 'cssIcon.png', text: 'CSS3' },
    ]
  end

  # ===== PROJECT TABS DATA =====

  def mentora_data
    {
      about: {
        description: 'Developed as my engineering thesis, Mentora is a comprehensive platform designed to streamline extracurricular education management. The system connects teachers, students, and parents in one unified environment, providing a centralized solution for organizing and managing private tutoring and supplementary educational activities. The platform addresses the challenges of coordinating schedules, tracking progress, and maintaining clear communication between all participants in the educational process.'
      },
      goal: {
        description: 'The primary goal of this project was to create an intuitive, all-in-one system that eliminates the complexity and administrative overhead of managing extracurricular learning. By automating lesson scheduling, enabling real-time communication, and providing transparent access to educational materials and progress reports, Mentora significantly reduces time spent on organizational tasks while improving coordination and information flow between teachers, students, and parents.'
      },
      implementation: {
        description: 'The platform is built using Ruby on Rails, leveraging Hotwire (Turbo and Stimulus) for dynamic frontend interactions without heavy JavaScript frameworks. MySQL serves as the relational database, managed through ActiveRecord ORM. Key technologies include IceCube for intelligent recurring lesson scheduling, CanCanCan for role-based authorization, Devise for secure user authentication and account management, and Turbo Streams for real-time updates. The system follows MVC architecture and Rails conventions, ensuring maintainable and scalable code.'
      }
    }
  end

  def eateat_data
    {
      about: {
        description: 'Eateat is a commercial marketplace platform designed for selling homemade food. The platform connects local chefs with customers seeking fresh, home-cooked meals. Chefs can create their profiles, add meal offerings, and manage their sales, while customers have access to a wide variety of homemade dishes available in their area. The platform supports local entrepreneurship and enables easy operation of a culinary business without the need for formal business registration. This project was developed by Smartshack company, where I was a member of the development team.'
      },
      goal: {
        description: 'The main goal of the platform is to create a friendly environment where people who can cook can easily share their culinary talents and earn from their passion. For customers, the platform offers convenient access to fresh, homemade food prepared by local chefs. The system enables full process management from browsing and searching for meals, through placing orders, to completing transactions. The platform aims to support local food entrepreneurs and make homemade food more accessible to everyone.'
      },
      integrations: {
        description: 'The platform integrates with a payment system that enables secure and seamless transaction processing. This integration allows chefs to receive payments directly and customers to complete purchases safely. The payment system handles the entire payment flow, ensuring reliable and secure financial transactions between chefs and customers on the marketplace.'
      }
    }
  end

  def fate_whispers_data
    {
      about: {
        description: 'Fate Whispers is a comprehensive commercial e-commerce platform designed for selling personalized fortunes and horoscopes. This project was developed as a client commission alongside a team of two other developer friends. The application features a multi-step fortune ordering process where users select from various thematic categories and fortune teller characters, followed by secure payment processing through multiple payment gateways including Przelewy24, PayPal, and Stripe.'
      },
      goal: {
        description: 'The primary objective was to create a scalable and user-friendly marketplace that handles complex business logic including token-based and cash payments, automated email delivery of fortune readings, and horoscope generation for all zodiac signs (daily, weekly, monthly). The platform supports both authenticated users with token management and guest purchases.'
      },
      features: {
        description: 'Key technical implementations include: asynchronous payment verification using Sidekiq background workers, multi-language support (Polish/English), comprehensive admin panel with real-time transaction monitoring, secure token-based public sharing system, automated mailer integration with delivery scheduling.'
      }
    }
  end

  def acrylmed_data
    {
      about: {
         description: 'Acrylmed (happool) is a commercial mobile-first application designed for pool maintenance and pool care product management. The system enables pool owners to easily calculate the correct dosage of pool maintenance products based on their pools water volume and current water parameters. This project was developed by Smartshack company, where I was a member of the development team.'
      },
      features: {
        description: "Each product in the Acrylmed line features a unique QR code on its bottle, which when scanned redirects users directly to the products calculator page within the application. The platform provides an intuitive, step-by-step interface that guides users through pool volume calculation, water parameter input, and precise dosage determination for various pool maintenance products including pH adjusters, chlorine products, algaecides, and flocculants."
      }
    }
  end

  # ===== PROJECT LINKS =====

  def mentora_links
    [
      { icon: 'github', url: 'https://github.com/bszarlowicz/ClassInsight', text: 'Checkout code!' },
      { icon: 'file-pdf-o', file: '/docs/mentora_docs.pdf', text: 'Checkout docs!' },
      { icon: 'download', file: '/docs/mentora_presentation.pptx', text: 'Checkout presentation!' },
      { icon: 'globe', url: nil, text: 'Try it!', sub_text: 'Soon...' }
    ]
  end

  def eateat_links
    [
      { icon: 'cutlery', url: "https://eateatall.com/", text: 'Visit EatEatAll!' },
      { icon: 'cloud', url: "https://smartshack.pl/", text: 'Visit Smartshack!' }
    ]
  end

  def fate_whispers_links
    [
      { icon: 'magic', url: "https://szeptylosu.pl/", text: 'Try it!' }
    ]
  end

  def acrylmed_links
    [
      { icon: 'tint', url: "https://app.happool.pl/", text: 'Try it!' },
      { icon: 'cloud', url: "https://smartshack.pl/", text: 'Visit Smartshack!' }
    ]
  end

  # ===== WAVE SVG PATTERNS =====

  def wave_patterns
    # Mentora - delikatne fale
    mentora_top_svg = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none"><path d="M0,60 C200,40 400,40 600,60 C800,80 1000,80 1200,60 L1200,120 L0,120 Z" fill="#47b278"/></svg>'
    mentora_bottom_svg = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none"><path d="M0,50 C150,0 350,100 600,50 C850,0 1050,100 1200,50 L1200,0 L0,0 Z" fill="#47b278"/></svg>'
    # eateat - delikatne fale
    eateat_top_svg = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none"><path d="M0,60 C200,20 400,100 600,60 C800,20 1000,100 1200,60 L1200,120 L0,120 Z" fill="#47b278"/></svg>'
    eateat_bottom_svg = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none"><path d="M0,50 C160,30 290,65 480,40 C620,20 750,70 920,50 C1080,30 1140,60 1200,50 L1200,0 L0,0 Z" fill="#47b278"/></svg>'
    # fate_whispers - delikatne fale
    fate_whispers_top_svg = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none"><path d="M0,60 C200,40 400,40 600,60 C800,80 1000,80 1200,60 L1200,120 L0,120 Z" fill="#47b278"/></svg>'
    fate_whispers_bottom_svg = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none"><path d="M0,50 C150,0 350,100 600,50 C850,0 1050,100 1200,50 L1200,0 L0,0 Z" fill="#47b278"/></svg>'
    acrylmed_top_svg = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none"><path d="M0,60 C200,40 400,40 600,60 C800,80 1000,80 1200,60 L1200,120 L0,120 Z" fill="#47b278"/></svg>'
    acrylmed_bottom_svg = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none"><path d="M0,50 C150,0 350,100 600,50 C850,0 1050,100 1200,50 L1200,0 L0,0 Z" fill="#47b278"/></svg>'
    
    {
      mentora: {
        top: "data:image/svg+xml;base64,#{Base64.strict_encode64(mentora_top_svg)}",
        bottom: "data:image/svg+xml;base64,#{Base64.strict_encode64(mentora_bottom_svg)}"
      },
      eateat: {
        top: "data:image/svg+xml;base64,#{Base64.strict_encode64(eateat_top_svg)}",
        bottom: "data:image/svg+xml;base64,#{Base64.strict_encode64(eateat_bottom_svg)}"
      },
      fate_whispers: {
        top: "data:image/svg+xml;base64,#{Base64.strict_encode64(fate_whispers_top_svg)}",
        bottom: "data:image/svg+xml;base64,#{Base64.strict_encode64(fate_whispers_bottom_svg)}"
      },
      acrylmed: {
        top: "data:image/svg+xml;base64,#{Base64.strict_encode64(acrylmed_top_svg)}",
        bottom: "data:image/svg+xml;base64,#{Base64.strict_encode64(acrylmed_bottom_svg)}"
      }
    }
  end

  # ===== COMPLETE PROJECT CONFIGURATIONS =====

  def mentora_project(selected_tab = 'about')
    {
      project_id: 'mentora',
      project_title: 'Mentora',
      project_subtitle: 'A Platform for Managing Extracurricular Learning (Engineering Thesis)',
      preview_images: mentora_preview_images,
      technologies: mentora_icons,
      tabs_data: mentora_data,
      selected_tab: selected_tab,
      links: mentora_links,
      wave_top: wave_patterns[:mentora][:top],
      wave_bottom: wave_patterns[:mentora][:bottom]
    }
  end
  
  def eateat_project(selected_tab = 'about')
    {
      project_id: 'eateat',
      project_title: 'Eateat',
      project_subtitle: 'Homemade Food Marketplace (Commercial project at Smartshack)',
      preview_images: eateat_preview_images,
      technologies: eateat_icons,
      tabs_data: eateat_data,
      selected_tab: selected_tab,
      links: eateat_links,
      wave_top: wave_patterns[:eateat][:top],
      wave_bottom: wave_patterns[:eateat][:bottom]
    }
  end

  def fate_whispers_project(selected_tab = 'about')
    {
      project_id: 'fate_whispers',
      project_title: 'Fate whispers',
      project_subtitle: 'Commercial e-commerce',
      preview_images: fate_whispers_preview_images,
      technologies: fate_whispers_icons,
      tabs_data: fate_whispers_data,
      selected_tab: selected_tab,
      links: fate_whispers_links,
      wave_top: wave_patterns[:fate_whispers][:top],
      wave_bottom: wave_patterns[:fate_whispers][:bottom]
    }
  end

  def acrylmed_project(selected_tab = 'about')
    {
      project_id: 'acrylmed',
      project_title: 'Acrylmed - happool',
      project_subtitle: 'Pool Care Application (Commercial project at Smartshack)',
      preview_images: acrylmed_preview_images,
      technologies: acrylmed_icons,
      tabs_data: acrylmed_data,
      selected_tab: selected_tab,
      links: acrylmed_links,
      wave_top: wave_patterns[:acrylmed][:top],
      wave_bottom: wave_patterns[:acrylmed][:bottom]
    }
  end

  # ===== HELPER METHODS =====

  def project_wave_styles(wave_top, wave_bottom)
    "style=\"--wave-top: url(#{wave_top}); --wave-bottom: url(#{wave_bottom});\"".html_safe
  end

end