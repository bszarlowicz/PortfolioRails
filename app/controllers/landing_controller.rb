class LandingController < ApplicationController
  def index
    @selected_topic_trichologist = params[:trichologist_tab] || 'about'
    @selected_topic_region_hub = params[:region_hub_tab] || 'about'
    @selected_topic_delivery_app = params[:delivery_app_tab] || 'about'
    @selected_topic_drag_and_drop = params[:drag_and_drop_tab] || 'about'
    @selected_topic_pomodoro = params[:pomodoro_tab] || 'about'

    @trichologist_icons = [
      { path: 'railsIcon.png', text: 'Rails', version: '7.1.1' },
      { path: 'rubyIcon.png', text: 'Ruby', version: '3.2.2' },
      { path: 'javascriptIcon.png', text: 'JavaScript' },
      { path: 'mySqlIcon.png', text: 'MySQL', version: '0.5.4' },
      { path: 'cssIcon.png', text: 'CSS3' },
      { path: 'bootstrapIcon.png', text: 'Bootstrap', version: '5.3.2' },
      { path: 'htmlIcon.png', text: 'HTML5' }
    ]

    @region_hub_icons = [
      { path: 'railsIcon.png', text: 'Rails', version: '7.0.7' },
      { path: 'rubyIcon.png', text: 'Ruby', version: '3.1.2' },
      { path: 'javascriptIcon.png', text: 'JavaScript' },
      { path: 'sqlIcon.png', text: 'sqlite3', version: '1.4' },
      { path: 'cssIcon.png', text: 'CSS3' },
      { path: 'bootstrapIcon.png', text: 'Bootstrap', version: '5.3.2' },
      { path: 'htmlIcon.png', text: 'HTML5' }
    ]

    @delivery_app_icons = [
      { path: 'reactIcon.png', text: 'React', version: '^18.2.0' },
      { path: 'nodejsIcon.png', text: 'Node.js', version: '18.17.1' },
      { path: 'javascriptIcon.png', text: 'JavaScript' },
      { path: 'mySqlIcon.png', text: 'MySQL' },
      { path: 'cssIcon.png', text: 'CSS3' },
      { path: 'bootstrapIcon.png', text: 'Bootstrap', version: '5.3.2' },
      { path: 'htmlIcon.png', text: 'HTML5' }
    ]

    @drag_and_drop_icons = [
      { path: 'railsIcon.png', text: 'Rails', version: '7.1.2' },
      { path: 'rubyIcon.png', text: 'Ruby', version: '3.2.2' },
      { path: 'javascriptIcon.png', text: 'JavaScript' },
      { path: 'sqlIcon.png', text: 'sqlite3', version: '1.4' },
      { path: 'htmlIcon.png', text: 'HTML5' },
      { path: 'bootstrapIcon.png', text: 'Bootstrap', version: '5.1.3' },
      { path: 'cssIcon.png', text: 'CSS3' }
    ]

    @pomodoro_app_icons = [
      { path: 'javascriptIcon.png', text: 'JavaScript', version: 'Vanilla' },
      { path: 'cssIcon.png', text: 'CSS3' },
      { path: 'htmlIcon.png', text: 'HTML5' }
    ]

    @delivery_app_team = [
      { profile_img: 'profileImg.jpg', github_link: 'https://www.linkedin.com/in/bartosz-szarlowicz/' },
      { profile_img: 'Antek.png', github_link: 'https://www.linkedin.com/in/antoni-walach/' },
      { profile_img: 'Maciek.jpg', github_link: 'https://www.linkedin.com/in/maciej-walczak-388895270/' }
    ]

    @project_one = {
      about: {
        description: 'I was a member of the development team that focused on building an application based on Ruby on Rails technology. Our application was designed with the aim of facilitating research and efficiently collecting diverse data, including tracking user activity on the website.'
      },
      goal: {
        description: 'We emphasized delivering innovative solutions that not only provided a clear user interface but also a functional admin panel, offering full control over the data. Our goal was to make our application not only technologically advanced but also user-friendly, meeting expectations, and providing convenient data management tools.'
      }
    }

    @project_two = {
      about: {
        description: 'Leveraging the collected data, I have successfully created an extensive database of information regarding regions and subregions, encompassing both Poland (including municipalities, counties, cities, voivodeships) and the United States (including cities, counties, states). This database comprises crucial details for each of these locations, such as area, population, population density, GDP, and GDP per capita.'
      },
      goal: {
        description: 'I have developed a user-friendly interface facilitating easy browsing and comparison of the gathered data through various charts and statistics. This interactive panel allows for the visualization of key information, enhancing the comprehension and analysis of the accumulated data.'
      },
      algorithm: {
        description: 'I implemented a mechanism that, upon entering three variables—area, population, and GDP per capita—displays the 30 most closely matched locations. This tool enables swift and effective comparison of places based on selected criteria, proving particularly valuable for analysis and decision-making.'
      }
    }

    @project_three = {
      about: {
        description: 'Software for courier companies, enabling the management of the courier delivery process. The project involves three types of user accounts: customer, courier, and admin. The customer can place orders, monitor the status of their parcels, and rate the performance of couriers. The courier has the ability to accept new orders, update parcel statuses, and access the history of completed deliveries. The administrator has access to and the ability to modify data regarding customers, parcels, orders, and payments.'
      },
      goal: {
        description: 'The software aims to streamline the parcel delivery process through a simple, intuitive interface. The scope of the project includes creating a comprehensive shipment management system that enables customers to quickly submit parcels for delivery and provides couriers with a convenient way to fulfill shipments. Our priority is to ensure a comprehensive tool for customer handling and to facilitate flexible work for couriers.'
      },
      purpose: {
        description: 'This project was implemented as part of the Programming Engineering course, which is part of the curriculum for the 3rd year of Computer Science in Computer Engineering at the Krakow University of Technology.'
      }
    }

    @project_four = {
      about: {
        description: 'The Pomodoro Technique is a time management method based on several minutes of focused work, broken by a few minutes of breaks. Longer breaks, typically 15 to 30 minutes, are taken after four consecutive work intervals. This is my first application written using Vanilla JavaScript. The process of creating this tool allowed me to learn the basic principles of JavaScript.'
      }
    }

    @project_five = {
      about: {
        description: "The application allows users to create sentences from which random words are selected (the quantity depends on the sentence's length). Random words are extracted from the sentence, leaving gaps in their place, and then transferred to the bottom section as movable blocks. The user's task is to arrange the words in the correct gaps to form a valid sentence."
      },
      goal: {
        description: 'This application was created to learn the drag and drop mechanism of HTML elements using HTML Drag and Drop API with vanilla JavaScript.'
      },
      docker: {
        description: 'In this project, I implemented a Docker configuration for a Rails 7 application, providing step-by-step instructions for setting up the environment on a Windows system. By combining Rails 7 and Docker, the project aims to streamline development and enhance portability across different environments'
      }
    }
  end
end