# Inheritance

#### Definitions

A class can inherit another class when there is an is-a relationship between them. The inherited class will automatically receive all the methods defined in the parent class. To inherit from a class use the syntax class ChildClassName < ParentClassName in the class definition.

When the child class defines a method that is already defined by the parent class, then the new method overrides the parent method.

Sometimes a method that overrides an inherited method would want to call the parent method. In our example, the initialize method in ComputerDepartment wanted to call the original initialize. For this we can call super. It will always refer to the method of the same name from the parent class.
