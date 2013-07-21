Equipment
GET /equipment?
Gets list of equipment
Parameters:
- sort
- search
- filter

Returns:
list of equipment objects

GET /equipment/:id
Gets equipment object with ID
Returns: 
equipment object

POST /equipment
Creates new equipment object

Returns:
equipment object

POST /equipment/:id
Updates equipment object
Parameters:
- name
- serial
- longtext
- label
- category

Returns:
equipment object

User

Note


Checkout


POST /checkout
Parameters:
- user id
- equipment ids
- start date
- end date

Returns:
checkout object

GET /checkout/:id
Returns:
checkout object