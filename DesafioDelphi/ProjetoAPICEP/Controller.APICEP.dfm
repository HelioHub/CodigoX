object DMAPICEP: TDMAPICEP
  Height = 186
  Width = 448
  object RESTClient1: TRESTClient
    Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Params = <>
    SynchronizedEvents = False
    Left = 56
    Top = 30
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 136
    Top = 30
  end
  object RESTResponse1: TRESTResponse
    Left = 224
    Top = 30
  end
end
