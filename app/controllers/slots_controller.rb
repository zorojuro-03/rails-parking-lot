class SlotsController < ApplicationController
  
  def get_all_slots
    @slots = ParkingSlot.all
    final_data = []
    for slot in @slots
      final_data.append({
        id: slot&.id,
        name: slot&.name,
        parking_type: slot&.parking_type&.name
      })
    end
    render json: {data: final_data}, status: 200
  end

  def available_slots
    @slots = ParkingSlot.where(vehicle_number: nil)
    final_data = []
    for slot in @slots
      final_data.append({
        id: slot&.id,
        name: slot&.name,
        parking_type: slot&.parking_type&.name
      })
    end
    render json: {data: final_data}, status: 200
  end
  
  def park_vehicle
    if params[:vehicle_number].length !=4
      return render json: {message: "Please provide valid vehicle number"}, status: 400
    end
    @slot = ParkingSlot.where(vehicle_number: params[:vehicle_number]).first
    if @slot
      return render json: {message: "Vehicle already parked"}, status: 400
    end
    @slot = ParkingSlot.where(id: params[:parking_slot_id]).first
    if !@slot
      return render json: {message: "Please select another slot"}, status: 400
    end
    @slot.vehicle_number = params[:vehicle_number]
    if @slot.save
      render json: {data: @slot}, status: 200
    else
      render json: {message: "Something went wrong!"}, status: 404
    end
  end
  
  def unpark_vehicle
    @slot = ParkingSlot.where(vehicle_number: params[:vehicle_number]).first
    @slot.vehicle_number = nil
    if @slot.save
      render json: {message: "Unparked"}, status: 200
    else
      render json: {message: "Something went wrong"}, status: 404
    end
  end
  
  def search_vehicle
    @slot = ParkingSlot.where(vehicle_number: params[:vehicle_number]).first
    if !@slot
      render json: {message: "Vehicle is not parked"}, status: 400
    else
      render json: {message: "Vehicle is at "+@slot.name}, status: 200
    end
  end
end