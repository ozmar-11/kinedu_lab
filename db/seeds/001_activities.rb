# frozen_string_literal: true

activities = [
  {
    name: 'Actividad de grupo',
    description: 'A aliquet scelerisque per adipiscing proin id a condimentum scelerisque parturient a lobortis a eget condimentum venenatis parturient adipiscing velit dictumst.'
  },
  {
      name: 'Tomar alimentos',
      description: 'Dis inceptos euismod pharetra nibh pulvinar ad non platea tristique imperdiet parturient vestibulum a nascetur lorem sem.Adipiscing id proin velit.'
  },
  {
    name: 'Ejercicios de destreza manual',
    description: 'A ad hendrerit phasellus arcu sem consequat parturient inceptos parturient ac facilisi suscipit nec dictum non urna vestibulum posuere eget.'
  },
  {
    name: 'Lectura',
    description: 'Mi scelerisque semper suspendisse praesent nullam leo habitant arcu fermentum condimentum in vestibulum nam ad ipsum convallis orci mi adipiscing a a.Justo vulputate neque parturient quam.'
  },
  {
    name: 'Siesta',
    description: 'Tellus a volutpat condimentum nibh habitant a sapien porta parturient maecenas praesent dapibus ullamcorper dictumst eget vitae.'
  },
  {
    name: 'Dinámica al aire libre',
    description: 'A aliquet scelerisque per adipiscing proin id a condimentum scelerisque parturient a lobortis a eget condimentum venenatis parturient adipiscing velit dictumst.'
  },
  {
    name: 'Dibujar',
    description: 'Mi blandit mattis himenaeos consequat facilisis eu elit venenatis mattis rhoncus sagittis dapibus aliquet a a feugiat scelerisque lacinia cubilia orci.'
  },
  {
    name: 'Juego',
    description: 'Lobortis a velit a suspendisse tristique elit metus parturient scelerisque a fermentum vestibulum inceptos cum sociosqu consectetur.'
  }
]

activities.each do |activity|
  Activity.find_or_create_by(activity)
end
