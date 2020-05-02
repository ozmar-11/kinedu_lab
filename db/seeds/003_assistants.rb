# frozen_string_literal: true

assistants = [
  {
    name: 'Idona Rodgers',
    group: '2',
    address: '684-3809 Commodo St.',
    phone: '1-695-273-9436'
  },
  {
    name: 'Basia Reeves',
    group: '2',
    address: '889-3375 Semper Av.',
    phone: '1-288-486-8146'
  },
  {
    name: 'Charlotte Skinner',
    group: '3',
    address: 'Ap #711-5535 Pellentesque St.',
    phone: '1-619-558-3983'
  },
  {
    name: 'Lysandra Solis',
    group: '4',
    address: 'P.O. Box 330, 663 Imperdiet, Av.',
    phone: '1-545-702-7245',
  },
  {
    name: 'Samantha Porter',
    group: '5',
    address: '325-1746 Vulputate Rd.',
    phone: '1-299-762-7562'
  },
  {
    name: 'Iliana Dillon',
    group: '4',
    address: '3044 Maecenas St.',
    phone: '1-267-433-8360'
  },
  {
    name: 'Aphrodite Ballard',
    group: '3',
    address: '525-3906 Aliquam Av.',
    phone: '1-185-833-0997'
  },
  {
    name: 'Francesca Baxter',
    group: '1',
    address: '331-3950 Cum Ave',
    phone: '1-375-506-2188'
  },
  {
    name: 'Ria Robles',
    group: '3',
    address: '7081 Velit Rd.',
    phone: '1-553-822-3077'
  },
  {
    name: 'Kay Brewer',
    group: '1',
    address: 'P.O. Box 406, 1165 Fermentum Ave',
    phone: '1-120-416-8056'
  }
]

assistants.each do |assistant|
  Assistant.find_or_create_by(assistant)
end
