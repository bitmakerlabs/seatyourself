# Seat Yourself

## Need to have
* <del>As a visitor, when I go to the homepage, I am presented with a list of restaurants.</del>
* <del>As a visitor, I do not have the option of making a reservation. (Needs an Account)</del>
* <del>As a visitor, I want to sign up for a customer account so that I can make reservations online.</del>
* <del>As a user I can login and logout.</del>
* As a customer, when I go to a restaurant's page, I can make a reservation for the time and party size of my choice.
* <del>As a customer, if I try to make a reservation outside of a restaurant's opening hours, the reservation will not be made and I will be shown a message indicating why.</del>
* As a customer, if I try to make a reservation at a time when a restaurant is already at max capacity, the reservation will not be made and I will be shown a message indicating why.
* As a customer, if I try to make a reservation for a date in the past, the reservation will not be made and I will be shown a message indicating why.
* <del>As a restaurant owner, when I go to my restaurant's edit page, I can set the opening and closing times of my restaurant.</del>
* <del>As a restaurant owner, when I go to my restaurant's edit page, I can set the maximum capacity of my restaurant.</del>


## Nice to have
* As a visitor, when I click on a restaurant, I am presented with:
  * address
  * neighbourhood
  * price range
  * summary
  * menu
a list of available time slots
* As a customer I can go to a page to see a list of the reservations I’ve booked.
* Replace booking-times with ONLY AVAILABLE time slots.
* As a customer, when I make a reservation, I want to be shown a confirmation message with the details of my reservation.
* As a restaurant owner, when I go to my profile, I want to see a list of upcoming reservations for the next week.
* As a restaurant owner, when I go to my restaurant's edit page, I can set the minimum and maximum party size that a reservation can be made for.

## Happy to have
* As a customer, when I make a reservation at a restaurant, I want to receive loyalty points.
* As a customer, when I go to my profile, I want to see my loyalty points.
* As a restaurant owner, when I go to my profile, I want to see a list of customers who have made reservations at my restaurant in order of loyalty points.

## Views

### User / Client
* Homepage / index (Not logged in)
* Restaurant / show (Not logged in)
  - Book / new-reservation (Needs to be logged in)
* Signup / new (new accounts) (Not logged in)


### Restaurant / Owner
* Homepage / index (Not logged in)
* Restaurant / show/edit (Needs to be logged in)
* Signup / new (Not logged in)
* Create / new-restaurant (Needs to be logged in)


## Keywords
* User
  - Name
  - Phone Number
  - Email address
  - User type (customer, owner)

* Restaurant
  - Name
  - open_time
  - close_time
  - seats
  - address
  - user_id(owner)
  - menu

* Reservation
  - user_id(customer)
  - restaurant_id
  - date
  - time
  - party_size
