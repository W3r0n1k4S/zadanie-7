Feature: Product Search and Purchase Process

Background:
Given the user is logged in to the favorite online store


Scenario: Searching for a product
Given the user is on the homepage of the favorite online store
When the user enters the name of the product in the search field
And clicks the "Search" button
Then the user should see a list of products matching the entered name

Scenario: Adding a product to the cart
Given the user is on the page with search results
When the user finds the product they want to buy
And clicks the "Add to Cart" button
Then the product should be added to the shopping cart

Scenario: Proceeding to checkout
Given the user is on the shopping cart page
When the user clicks the "Proceed to Checkout" button
Then the user should be redirected to the checkout page

Scenario: Completing the purchase
Given the user is on the checkout page
When the user provides their personal information and shipping address
And selects the payment method
And clicks the "Place Order" button
Then the order should be successfully placed
And the user should receive a confirmation of the purchase

Scenario: Validating the purchase
Given the user receives a purchase confirmation
When the user checks their order history in their profile
Then the user should find the latest order
And verify that the order details match the information provided during payment
And ensure that the order has been successfully processed