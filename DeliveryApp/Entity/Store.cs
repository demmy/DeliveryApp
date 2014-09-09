namespace DeliveryApp.Entity
{
    public class Store
    {
        public virtual int Id { get; set; }
        public virtual int CityId { get; set; }
        public virtual string Address { get; set; }
        public virtual int SheduleId { get; set; }
    }
}