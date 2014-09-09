using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using DeliveryApp.Entity;
using NHibernate;
using NHibernate.Cfg;
using NHibernate.Linq;

namespace DeliveryApp
{
    public class DbHelper
    {
        private readonly ISessionFactory sessionFactory;
        private Configuration nhConfig;

        public DbHelper()
        {
            nhConfig = new Configuration().Configure();
            nhConfig.AddAssembly(Assembly.GetExecutingAssembly());
            sessionFactory = nhConfig.BuildSessionFactory();
        }

        public IList<Order> GetAllOrder()
        {
            IList<Order> orders = new List<Order>();
            using (ISession session = sessionFactory.OpenSession())
            {
                orders = session.QueryOver<Order>().List<Order>();
            }
            return orders;
        }


        public Order GetOrder(int id)
        {
            var order = new Order();
            using (ISession session = sessionFactory.OpenSession())
            {
                order = session.QueryOver<Order>().Where(x => x.Id == id).SingleOrDefault();
            }
            return order;
        }

        public Store GetStore(int id)
        {
            var store = new Store();
            using (ISession session = sessionFactory.OpenSession())
            {
                store = session.QueryOver<Store>().Where(x => x.Id == id).SingleOrDefault();
            }
            return store;
        }

        public void AddOrder(string description, Person sender, Store senderStore, Person recipient,
            Store recipientStore,
            DateTime sendDate)
        {
            var order = new Order();

            using (ISession session = sessionFactory.OpenSession())
            {
                using (ITransaction tx = session.BeginTransaction())
                {
                    Person tmpSender = SearchPerson(sender.FirstName, sender.LastName, sender.MiddleName);
                    if (tmpSender != null)
                    {
                        sender = tmpSender;
                    }
                    Person tmpRecipient = SearchPerson(recipient.FirstName, recipient.LastName, recipient.MiddleName);
                    if (tmpRecipient != null)
                    {
                        recipient = tmpSender;
                    }


                    session.SaveOrUpdate(sender);
                    session.SaveOrUpdate(recipient);

                    order.Description = description;
                    order.SenderId = sender.Id;
                    order.RecipientId = recipient.Id;
                    order.SenderStoreId = senderStore.Id;
                    order.RecipientStoreId = recipientStore.Id;
                    order.ShippingDate = sendDate;
                    order.ReciveDate = DateTime.UtcNow;
                    order.SenderPerson = sender;
                    order.RecipientPerson = recipient;
                    order.SenderStore = senderStore;
                    order.RecipientStore = recipientStore;

                    session.SaveOrUpdate(order);

                    tx.Commit();
                }
            }
        }

        public Person SearchPerson(string firstName, string lastName, string middleName)
        {
            using (ISession session = sessionFactory.OpenSession())
            {
                return session.QueryOver<Person>()
                    .Where(p => p.FirstName == firstName && p.LastName == lastName && p.MiddleName == middleName)
                    .SingleOrDefault();
            }
        }

        public Order GetLastOrder()
        {
            using (ISession session = sessionFactory.OpenSession())
            {
                int? max = session.Query<Order>().Max(o => (int?) o.Id);
                if (max != null)
                {
                    return GetOrder((int) max);
                }
                return null;
            }
        }

        public void DeleteOrder(Order deleteOrder)
        {
            using (ISession session = sessionFactory.OpenSession())
            {
                using (ITransaction tx = session.BeginTransaction())
                {
                    session.Delete(deleteOrder);
                    tx.Commit();
                }
            }
        }
    }
}