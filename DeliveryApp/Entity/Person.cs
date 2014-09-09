using System.Collections.Generic;

namespace DeliveryApp.Entity
{
    public class Person
    {
        public virtual int Id { get; set; }
        public virtual string LastName { get; set; }
        public virtual string FirstName { get; set; }
        public virtual string MiddleName { get; set; }
        public virtual IList<Phone> Phones { get; set; }
    }
}