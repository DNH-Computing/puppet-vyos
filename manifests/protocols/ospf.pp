class vyatta::protocols::ospf {
  if ! (defined(Concat::Fragment['ospf_header'])) {
    concat::fragment { 'ospf_header':
      target  => "${vyatta::configuration}",
      content => template('vyatta/ospf_header.erb'),
      order   => 61,
    }
    concat::fragment { 'ospf_trailer':
      target  => "${vyatta::configuration}",
      content => template('vyatta/ospf_trailer.erb'),
      order   => 66,
    }
  }
}
