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
  
  # ===== TECHNOLOGY ICONS =====

  def mentora_icons
    [
      { path: 'railsIcon.png', text: 'Rails', version: '7.1.3' },
      { path: 'rubyIcon.png', text: 'Ruby', version: '3.3.2' },
      { path: 'javascriptIcon.png', text: 'JavaScript' },
      { path: 'mySqlIcon.png', text: 'MySQL', version: '0.5.4' },
      { path: 'cssIcon.png', text: 'CSS3' },
      { path: 'bootstrapIcon.png', text: 'Bootstrap', version: '5.1.3' },
      { path: 'htmlIcon.png', text: 'HTML5' }
    ]
  end

  # ===== PROJECT TABS DATA =====

  def mentora_data
    {
      about: {
        description: 'Leveraging the collected data, I have successfully created an extensive database of information regarding regions and subregions, encompassing both Poland (including municipalities, counties, cities, voivodeships) and the United States (including cities, counties, states). This database comprises crucial details for each of these locations, such as area, population, population density, GDP, and GDP per capita.'
      },
      goal: {
        description: 'I have developed a user-friendly interface facilitating easy browsing and comparison of the gathered data through various charts and statistics. This interactive panel allows for the visualization of key information, enhancing the comprehension and analysis of the accumulated data.'
      },
      algorithm: {
        description: 'I implemented a mechanism that, upon entering three variables—area, population, and GDP per capita—displays the 30 most closely matched locations. This tool enables swift and effective comparison of places based on selected criteria, proving particularly valuable for analysis and decision-making.'
      },
      test: {
        description: 'I implemented a mechanism that, upon entering three variables—area, population, and GDP per capita—displays the 30 most closely matched locations. This tool enables swift and effective comparison of places based on selected criteria, proving particularly valuable for analysis and decision-making.'
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

  # ===== WAVE SVG PATTERNS =====

  def wave_patterns
    # Mentora - delikatne fale
    mentora_top_svg = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none"><path d="M0,60 C200,40 400,40 600,60 C800,80 1000,80 1200,60 L1200,120 L0,120 Z" fill="#47b278"/></svg>'
    mentora_bottom_svg = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none"><path d="M0,50 C150,0 350,100 600,50 C850,0 1050,100 1200,50 L1200,0 L0,0 Z" fill="#47b278"/></svg>'
    
    {
      mentora: {
        top: "data:image/svg+xml;base64,#{Base64.strict_encode64(mentora_top_svg)}",
        bottom: "data:image/svg+xml;base64,#{Base64.strict_encode64(mentora_bottom_svg)}"
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

  # ===== HELPER METHODS =====

  def project_wave_styles(wave_top, wave_bottom)
    "style=\"--wave-top: url(#{wave_top}); --wave-bottom: url(#{wave_bottom});\"".html_safe
  end

end