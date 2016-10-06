json.extract! customer, :id, :name, :birthday, :postcode, :address_pref, :address_others, :phone_1, :phone_2, :mail_1, :mail_2, :created_at, :updated_at
json.url customer_url(customer, format: :json)