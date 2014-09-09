using System;

namespace DeliveryApp.Entity
{
    public class Order
    {
        public virtual int Id { get; set; }
        public virtual string Description { get; set; }
        public virtual int SenderId { get; set; }
        public virtual int RecipientId { get; set; }
        public virtual int SenderStoreId { get; set; }
        public virtual int RecipientStoreId { get; set; }
        public virtual DateTime ShippingDate { get; set; }
        public virtual DateTime ReciveDate { get; set; }

        public virtual Person SenderPerson { get; set; }
        public virtual Person RecipientPerson { get; set; }
        public virtual Store SenderStore { get; set; }
        public virtual Store RecipientStore { get; set; }
    }
}