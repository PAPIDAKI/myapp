json.extract! sale, :id, :date, :customer_code, :name, :descr, :doc_type, :quant, :ppy, :value, :city, :zip, :tel, :afm, :created_at, :updated_at
json.url sale_url(sale, format: :json)
