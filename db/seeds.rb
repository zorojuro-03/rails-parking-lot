PT1 = ParkingType.where(name: "BIKE").first_or_create
PT2 = ParkingType.where(name: "CAR").first_or_create

ParkingSlot.where(name: "B1", parking_type_id: PT1.id).first_or_create
ParkingSlot.where(name: "B2", parking_type_id: PT1.id).first_or_create
ParkingSlot.where(name: "B3", parking_type_id: PT1.id).first_or_create
ParkingSlot.where(name: "B4", parking_type_id: PT1.id).first_or_create
ParkingSlot.where(name: "B5", parking_type_id: PT1.id).first_or_create
ParkingSlot.where(name: "B6", parking_type_id: PT1.id).first_or_create
ParkingSlot.where(name: "B7", parking_type_id: PT1.id).first_or_create
ParkingSlot.where(name: "B8", parking_type_id: PT1.id).first_or_create
ParkingSlot.where(name: "B9", parking_type_id: PT1.id).first_or_create
ParkingSlot.where(name: "B10", parking_type_id: PT1.id).first_or_create

ParkingSlot.where(name: "C1", parking_type_id: PT2.id).first_or_create
ParkingSlot.where(name: "C2", parking_type_id: PT2.id).first_or_create
ParkingSlot.where(name: "C3", parking_type_id: PT2.id).first_or_create
ParkingSlot.where(name: "C4", parking_type_id: PT2.id).first_or_create
ParkingSlot.where(name: "C5", parking_type_id: PT2.id).first_or_create
ParkingSlot.where(name: "C6", parking_type_id: PT2.id).first_or_create
ParkingSlot.where(name: "C7", parking_type_id: PT2.id).first_or_create
ParkingSlot.where(name: "C8", parking_type_id: PT2.id).first_or_create
ParkingSlot.where(name: "C9", parking_type_id: PT2.id).first_or_create
ParkingSlot.where(name: "C10", parking_type_id: PT2.id).first_or_create