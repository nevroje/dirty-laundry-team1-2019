class TimeSlotController < ApplicationController
    def create_booking
        room = LaundryRoom.find(params[:laundry_room_id])
        slot = Time.zone.parse(params[:time])
        slot_to_book = room.schedule
                       .occurrences(3.week.from_now)
                       .detect { |occ| occ.beginning_of_hour.localtime == slot.localtime }
    end
end