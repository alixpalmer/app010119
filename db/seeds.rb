
User.destroy_all
Report.destroy_all
Room.destroy_all
Roomitem.destroy_all

Taytay = User.create!(name: 'taytay', email: 'tairtidhar01@gmail.com', password: 'password')

Report1 = Report.new(lessor_id: taytay.user_id, tenant_id: 2, status: "approved", address: "1 Hell St", created_at: "5/1/2019", updated_at: "6/1/2019")
Report.user = taytay

Bedroom = Room.new(report_id: 1, name: "Bedroom",  created_at: "5/1/2019", updated_at: "6/1/2019")
Report1.room = Bedroom

Bed = Roomitem.new(report_id: 1, name: "Bed", status: "clean")
Bedroom.room_item = Bed
Report1.save
