Config = {}
Config.Locale = 'en'

Config.money = 500 -- How much the repair costs
Config.disableinventory = false -- Disable inventory while repairing?
Config.RepairingTime = 15000 -- How much time does the player need to wait until the repair is done
Config.Cashregister = false -- Enable if you have cs_cashregister

-- Repair locations
Config.Repair = {
 	{x = -72.71, y = -1339.19, z = 29.25},
	{x = 1178.54, y = 2639.99, z = 37.75},
	{x = 107.48, y = 6624.79, z = 31.78},
	{x = 1144.47, y = -780.49, z = 57.59},
	{x = -1155.01, y = -2006.99, z = 13.17},
	{x = 733.99, y = -1085.0, z = 22.16},
	{x=1774.0,  y=3333.0,  z=41.0},
	{x=2006.0,  y=3792.0,  z=32.0},
	{x=258.0,   y=2594.0,  z=44.0}
}

Config.Language = {
	['pl'] = {
		['blipname'] = 'Mechanik lokalny',
		['fix'] = 'Napraw Pojazd',
		['header'] = 'Naprawa',
		['areyousure'] = 'Czy napewno chcesz naprawić pojazd za kwotę ',
		['notenoughmoney'] = 'Nie posiadasz wystarczającej ilości pieniędzy',
		['repairinprogress'] = 'Trwa naprawianie pojazdu...',
		['invoiceheader'] = 'Faktura',
		['invoicemessage'] = 'Czy chcesz opłacić fakture o wysokości ',
		['paid'] = 'Obywatel opłacił zamówienie o Wysokości: ',
		['paid_target'] = 'Opłaciłeś zamówienie o Wysokości: ',
	},
	['en'] = {
		['blipname'] = 'Local Mechanic',
		['fix'] = 'Repair Vehicle',
		['header'] = 'Repair',
		['areyousure'] = 'Are you sure you want to repair the vehicle for the amount of ',
		['notenoughmoney'] = 'You do not have enough money',
		['repairinprogress'] = 'Vehicle repair in progress...',
		['invoiceheader'] = 'Invoice',
		['invoicemessage'] = 'Do you want to pay the invoice in the amount of ',
		['paid'] = 'You have paid for an order amounting to: ',
		['paid_target'] = 'You have paid for an order amounting to: ',
	},
	['de'] = {
		['blipname'] = 'Lokaler Mechaniker',
		['fix'] = 'Fahrzeug reparieren',
		['header'] = 'Reparatur',
		['areyousure'] = 'Sind Sie sicher, dass Sie das Fahrzeug für den Betrag reparieren möchten ',
		['notenoughmoney'] = 'Sie haben nicht genügend Geld',
		['repairinprogress'] = 'Fahrzeugreparatur läuft...',
		['invoiceheader'] = 'Rechnung',
		['invoicemessage'] = 'Möchten Sie die Rechnung in Höhe von bezahlen ',
		['paid'] = 'Sie haben für eine Bestellung in Höhe von bezahlt: ',
		['paid_target'] = 'Sie haben für eine Bestellung in Höhe von bezahlt: ',
	},
	['es'] = {
		['blipname'] = 'Mecánico Local',
		['fix'] = 'Reparar Vehículo',
		['header'] = 'Reparación',
		['areyousure'] = '¿Estás seguro de que quieres reparar el vehículo por la cantidad de ',
		['notenoughmoney'] = 'No tienes suficiente dinero',
		['repairinprogress'] = 'Reparación del vehículo en curso...',
		['invoiceheader'] = 'Factura',
		['invoicemessage'] = '¿Quieres pagar la factura por un monto de ',
		['paid'] = 'Ha pagado por un pedido por un monto de: ',
		['paid_target'] = 'Ha pagado por un pedido por un monto de: ',
	}
}