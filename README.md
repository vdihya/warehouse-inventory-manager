# warehouse-operations-manager
simulating operations in a warehouse, involves entering stock, client information, purchase information and consequently triggering deliveries, includes dynamic stock values (updation upon taking stock off the shelf and reshelving them upon return/cancelation of a particular purchase) 
-------------------------------------------------------------------------------------------------------------------------------------------
Spring MVC/Hibernate documentation is highly unreliable, due to which:
1. Foreign key mapping in entity classes (Bi-directional mapping) cannot be established without NPE
2. Foreign key Unidirectional mapping does not have standardized DataBinding PropertyEditor, MVC documentation has no standard format/convertible code
3. CascadeType absence is not accepted and leads to spurious records with duplicate values (not supported in Hibernate version 5.x)
6. MySQL datatypes to Object conversion not possible without boilerplate code

