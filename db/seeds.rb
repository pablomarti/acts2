if Level.count == 0
	Level.create(name: "Root")
	Level.create(name: "Admin")
end

if User.count == 0
	root = User.new(email: "pablo.marti.dev@gmail.com", first_name: "Pablo", last_name: "Marti", password: "welcome123", level_id: Level.all.first.id)
	root.save

	a1 = User.new(email: "cesarmonico@ibvn.org", first_name: "Cesar", last_name: "Monico", password: "welcome123", level_id: Level.all.second.id)
	a1.save

	a2 = User.new(email: "davidaguilar@ibvn.org", first_name: "David", last_name: "Aguilar", password: "welcome123", level_id: Level.all.second.id)
	a2.save
end

if Country.count == 0
	Country.create!(name: "El Salvador", code: "sv")
	Country.create!(name: "Guatemala", code: "gt")
	Country.create!(name: "Costa Rica", code: "cr")
	Country.create!(name: "Nicaragua", code: "ni")
	Country.create!(name: "Colombia", code: "co")
end

if ChurchCampu.count == 0
	ChurchCampu.create!(country_id: Country.all[0].id, name: "Hotel")
	ChurchCampu.create!(country_id: Country.all[0].id, name: "Miralvalle")
	ChurchCampu.create!(country_id: Country.all[0].id, name: "Lourdes")
	ChurchCampu.create!(country_id: Country.all[0].id, name: "Apopa")
	ChurchCampu.create!(country_id: Country.all[1].id, name: "Ciudad de Guatemala")
	ChurchCampu.create!(country_id: Country.all[2].id, name: "San Jose")
	ChurchCampu.create!(country_id: Country.all[3].id, name: "Managua Los Robles")
	ChurchCampu.create!(country_id: Country.all[3].id, name: "Managua Bolonia")
	ChurchCampu.create!(country_id: Country.all[4].id, name: "Bogota")
end

if CdjArea.count == 0
	CdjArea.create!(name: "Actuacion")
	CdjArea.create!(name: "Oracion")
	CdjArea.create!(name: "Inscripcion")
	CdjArea.create!(name: "Seguridad")
	CdjArea.create!(name: "Consejeria")
	CdjArea.create!(name: "Valet Parking")
	CdjArea.create!(name: "Seguimiento")
	CdjArea.create!(name: "Construccion")
	CdjArea.create!(name: "Guarderia")
	CdjArea.create!(name: "Logistica")
	CdjArea.create!(name: "Otro")
end