# billplz-ruby
Intergrate BillPlz API using Ruby 
<br /><br />
Introduction to API can read here: https://www.billplz.com/api
<br /><br />
API FLow:<br />
1) Customer visits your site.<br />
2) Customer chooses to make payment.<br />
3) Your site creates a Bill via API call.<br />
4) Billplz API returns Bill's URL.<br />
5) Your site redirects the customer to Bill's URL.<br />
6) The customer makes payment via payment option of choice.<br />
7) Billplz sends a server-side update to your site on Bill's status on payment failure or success.<br />
8a) Billplz redirects the customer back to your site if redirect_url is not empty, or<br />
8b) The customer will see Billplz receipt. <br />
