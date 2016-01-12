class PaymentsController < ApplicationController
  def index
    url_collection = 'https://www.billplz.com/api/v2/collections'
    url_bill = 'https://www.billplz.com/api/v2/bills'
    api_key = 'YOUR-API-SECRECT-KEY' #You can get in your billplz setting account
  
    title = "Anything to explainn about your bill"
    
    #Create collection ID
    @collection = HTTParty.post(url_collection.to_str,
                  :body  => { :title => title }.to_json,
                  :basic_auth => { :username => api_key },
                  :headers => { 'Content-Type' => 'application/json', 'Accept' => 'application/json' })
        
    #Create Bill
    @bill = HTTParty.post(url_bill.to_str,
            :body  => { :collection_id => @collection.parsed_response["id"], :email=> "email@gmail.com", :name=> "John Smith", :amount=>  "260", :callback_url=>  "YOUR RETURN URL"}.to_json,
            :basic_auth => { :username => api_key },
            :headers => { 'Content-Type' => 'application/json', 'Accept' => 'application/json' })
        
    redirect_to @bill.parsed_response["url"]
  end
end
