# Testowe opinie
reviews_data = [
  {
    reviewer_name: "Anna",
    reviewer_surname: "Kowalska",
    description: "Bartosz is an exceptional developer with great attention to detail. His code is clean, well-documented, and follows best practices. Working with him was a pleasure!",
    overall_rating: 5,
    cooperation_type: "Full-time colleague",
    worked_with_me: true,
    visible: true
  },
  {
    reviewer_name: "Piotr",
    reviewer_surname: "Nowak",
    description: "Outstanding problem-solving skills and deep knowledge of Ruby on Rails. Bartosz delivered the project ahead of schedule and exceeded our expectations.",
    overall_rating: 5,
    cooperation_type: "Client",
    worked_with_me: true,
    visible: true
  },
  {
    reviewer_name: "Maria",
    reviewer_surname: "Wiśniewska",
    description: "Great communication and technical expertise. Bartosz helped us modernize our legacy Rails application with minimal disruption to our business.",
    overall_rating: 4,
    cooperation_type: "Project Manager",
    worked_with_me: true,
    visible: true
  },
  {
    reviewer_name: "Tomasz",
    reviewer_surname: "Lewandowski",
    description: "Professional, reliable, and skilled. Bartosz's contributions to our team were invaluable. He's always willing to help and share his knowledge.",
    overall_rating: 5,
    cooperation_type: "Team Lead",
    worked_with_me: true,
    visible: true
  },
  {
    reviewer_name: "Katarzyna",
    reviewer_surname: "Dąbrowska",
    description: "Excellent full-stack developer with strong frontend skills. The UI components Bartosz created were both beautiful and performant.",
    overall_rating: 5,
    cooperation_type: "Designer",
    worked_with_me: true,
    visible: true
  },
  {
    reviewer_name: "Michał",
    reviewer_surname: "Zieliński",
    description: "Bartosz is a talented developer who writes maintainable code. His work on our API integration was flawless and well-tested.",
    overall_rating: 4,
    cooperation_type: "Backend Developer",
    worked_with_me: true,
    visible: true
  },
  {
    reviewer_name: "Agnieszka",
    reviewer_surname: "Szymańska",
    description: "Very professional and easy to work with. Bartosz delivered high-quality features consistently and was always open to feedback.",
    overall_rating: 5,
    cooperation_type: "Product Owner",
    worked_with_me: true,
    visible: true
  },
  {
    reviewer_name: "Jakub",
    reviewer_surname: "Woźniak",
    description: "Solid Rails developer with good understanding of modern web technologies. Great team player who contributes to code reviews thoughtfully.",
    overall_rating: 4,
    cooperation_type: "Senior Developer",
    worked_with_me: true,
    visible: true
  },
  {
    reviewer_name: "Magdalena",
    reviewer_surname: "Kozłowska",
    description: "Bartosz's expertise in Rails and JavaScript frameworks helped us launch our MVP successfully. Highly recommend working with him!",
    overall_rating: 5,
    cooperation_type: "Startup Founder",
    worked_with_me: true,
    visible: true
  },
  {
    reviewer_name: "Paweł",
    reviewer_surname: "Jankowski",
    description: "Knowledgeable developer with strong debugging skills. Bartosz helped resolve several critical production issues quickly and efficiently.",
    overall_rating: 5,
    cooperation_type: "DevOps Engineer",
    worked_with_me: true,
    visible: true
  },
  {
    reviewer_name: "Ewa",
    reviewer_surname: "Mazur",
    description: "Great developer who understands business needs. Bartosz translated our requirements into elegant technical solutions.",
    overall_rating: 4,
    cooperation_type: "Business Analyst",
    worked_with_me: true,
    visible: true
  },
  {
    reviewer_name: "Marcin",
    reviewer_surname: "Krawczyk",
    description: "Bartosz is a skilled full-stack developer with excellent problem-solving abilities. His work ethic and dedication are commendable.",
    overall_rating: 5,
    cooperation_type: "CTO",
    worked_with_me: true,
    visible: true
  },
  {
    reviewer_name: "Joanna",
    reviewer_surname: "Piotrowska",
    description: "Professional and competent developer. Bartosz's code reviews were always constructive and helped improve our codebase quality.",
    overall_rating: 4,
    cooperation_type: "Frontend Developer",
    worked_with_me: true,
    visible: true
  },
  {
    reviewer_name: "Krzysztof",
    reviewer_surname: "Grabowski",
    description: "Excellent technical skills combined with good soft skills. Bartosz is someone you want on your team for challenging projects.",
    overall_rating: 5,
    cooperation_type: "Engineering Manager",
    worked_with_me: true,
    visible: true
  },
  {
    reviewer_name: "Aleksandra",
    reviewer_surname: "Pawłowska",
    description: "Bartosz delivered a complex e-commerce feature that worked perfectly from day one. His attention to edge cases was impressive.",
    overall_rating: 5,
    cooperation_type: "QA Engineer",
    worked_with_me: true,
    visible: true
  }
]

puts "Creating #{reviews_data.length} reviews..."

reviews_data.each do |review_data|
  Review.create!(review_data)
end

puts "✓ Created #{Review.count} reviews successfully!"