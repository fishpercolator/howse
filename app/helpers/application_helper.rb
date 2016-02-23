module ApplicationHelper
  
  def areas
    [
      {name: 'Bramley Falls', rating: 'gold', time: '3 days', location: 'Bramley', pic: 'http://media.rightmove.co.uk/dir/38k/37026/37718175/37026_PUD150636_IMG_00_0000_max_656x437.JPG'},
      {name: 'Chapeltown Heights', rating: 'gold', time: '14 days', location: '1 mile from Headingley', pic: 'http://media.rightmove.co.uk/dir/60k/59925/52094350/59925_CRE1000112_IMG_01_0000_max_656x437.jpg'},
      {name: 'Horsforth Paddock', rating: 'bronze', time: '1 year', location: 'Horsforth', pic: 'http://media.rightmove.co.uk/dir/62k/61293/38390022/61293_25956895_IMG_01_0000_max_656x437.jpg'}
    ]
  end
  
  def properties_in(area)
    {
      'Bramley Falls' => [
        {name: '123 Truman Street', bids: 44, accessible: true, waited: '5 months', priority: 'B', pic: 'http://media.rightmove.co.uk/dir/38k/37026/37718175/37026_PUD150636_IMG_00_0000_max_656x437.JPG'},
        {name: '96 Cooper Close', bids: 12, accessible: false, waited: '14 days', priority: 'C', pic: 'http://media.rightmove.co.uk/dir/38k/37026/52880236/37026_PUD160048_IMG_00_0000_max_656x437.JPG'},
        {name: '22b Horne Way', bids: 99, accessible: false, waited: '2 years', priority: 'A', pic: 'http://media.rightmove.co.uk/dir/81k/80342/35923878/80342_59675_IMG_01_0000_max_656x437.jpg'}
      ],
      'Chapeltown Heights' => [
        {name: '66 Tremond Terrace', bids: 16, waited: '1 month', priority: 'A', pic: 'http://media.rightmove.co.uk/dir/60k/59925/52094350/59925_CRE1000112_IMG_01_0000_max_656x437.jpg'},
        {name: '2a Rosenfield Row', bids: 60, waited: '8 months', priority: 'B', pic: 'http://media.rightmove.co.uk/dir/38k/37038/52970257/37038_MOO120312_IMG_00_0000_max_656x437.JPG'},
        {name: '3 Hurley Avenue', bids: 19, waited: '3 years', priority: 'C', pic: 'http://media.rightmove.co.uk/dir/90k/89431/47196314/89431_595_IMG_11_0000_max_656x437.jpg'}
      ],
      'Horsforth Paddock' => [
        {name: 'Black Lodge', bids: 567, accessible: false, waited: '9 years', priority: 'B', pic: 'http://media.rightmove.co.uk/dir/62k/61293/38390022/61293_25956895_IMG_01_0000_max_656x437.jpg'}
      ]
    }[area]
  end
  
end
