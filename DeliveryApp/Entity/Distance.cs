namespace DeliveryApp.Entity
{
    public class Distance
    {
        public virtual int Id { get; protected set; }
        public virtual int CityFromId { get; set; }
        public virtual int CityToId { get; set; }
        public virtual int DistanceData { get; set; }
    }
}