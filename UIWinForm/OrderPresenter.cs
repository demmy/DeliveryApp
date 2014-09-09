using System;
using System.Linq;
using DeliveryApp.Entity;

namespace UIWinForm
{
    public class OrderPresenter
    {
        public OrderPresenter(Order order)
        {
            Id = order.Id;
            Description = order.Description;
            SenderId = order.SenderId;
            SenderName = string.Format("{0} {1} {2}",order.SenderPerson.FirstName,order.SenderPerson.MiddleName,order.SenderPerson.LastName);
            foreach (var phone in order.SenderPerson.Phones)
            {
                SenderPhones += phone.PhoneData+";";    
            }
            
            RecipientId = order.RecipientId;
            RecipientName = string.Format("{0} {1} {2}", order.RecipientPerson.FirstName, order.RecipientPerson.MiddleName, order.RecipientPerson.LastName); ;
            foreach (var phone in order.RecipientPerson.Phones)
            {
                RecipientPhones += phone.PhoneData + ";";
            }
            SenderStoreId = order.SenderStoreId;
            SenderStoreAddress = order.SenderStore.Address;
            RecipientStoreId = order.RecipientId;
            RecipientStoreAddress = order.RecipientStore.Address;
            ShippingDate = order.ShippingDate;
            RecievingDate = order.ReciveDate;
        }

        public int Id { get; set; }
        public string Description { get; set; }
        public int SenderId { get; set; }
        public string SenderName { get; set; }
        public string SenderPhones { get; set; }
        public int RecipientId { get; set; }
        public string RecipientName { get; set; }
        public string RecipientPhones { get; set; }
        public int SenderStoreId { get; set; }
        public string SenderStoreAddress { get; set; }
        public int RecipientStoreId { get; set; }
        public string RecipientStoreAddress { get; set; }
        public DateTime ShippingDate { get; set; }
        public DateTime RecievingDate { get; set; }
    }
}