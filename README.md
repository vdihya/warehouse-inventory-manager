# warehouse-inventory-manager
CRUD operations in a warehouse-inventory-manager, for entering stock, client information, purchase information and to trigger delivery schedluling, involving a stored procedure to perform stock unit calculations and return values to a hibernate session


Spring MVC/Hibernate documentation is highly unreliable, due to which:
1. Foreign key mapping in entity classes (Bi-directional mapping) cannot be established without NPE
2. Foreign key Unidirectional mapping does not have standardized DataBinding PropertyEditor, MVC documentation has no standard format/convertible code
3. CascadeType absence is not accepted and leads to spurious records with duplicate values (not supported in Hibernate version 5.x)
6. MySQL datatypes to Object conversion not possible without boilerplate code
