using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using DeliveryApp;
using DeliveryApp.Entity;
using NHibernate;

namespace UIWinForm
{
    public partial class Form1 : Form
    {
        private readonly DbHelper dbHelper;
        public Form1()
        {
            InitializeComponent();
            dbHelper = new DbHelper();
        }

        private void button1_Click(object sender, EventArgs e)
        {
           List<OrderPresenter> orders = new List<OrderPresenter>();

            foreach (var order in dbHelper.GetAllOrder())
            {
                orders.Add(new OrderPresenter(order));
            }
            dataGridView1.DataSource = orders;
        }
    }
}
