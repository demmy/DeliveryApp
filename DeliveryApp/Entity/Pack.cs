namespace DeliveryApp.Entity
{
    public class Pack
    {
        public virtual int Id { get; set; }
        public virtual string BarCode { get; set; }
        public virtual int Weight { get; set; }
        public virtual int OrderId { get; set; }
    }
}