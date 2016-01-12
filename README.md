# billplz-ruby
Intergrate BillPlz API using Ruby 

Introduction to API can read here: https://www.billplz.com/api

API FLow:
1) Customer visits your site.
2) Customer chooses to make payment.
3) Your site creates a Bill via API call.
4) Billplz API returns Bill's URL.
5) Your site redirects the customer to Bill's URL.
6) The customer makes payment via payment option of choice.
7) Billplz sends a server-side update to your site on Bill's status on payment failure or success.
8a) Billplz redirects the customer back to your site if redirect_url is not empty, or
8b) The customer will see Billplz receipt. 
