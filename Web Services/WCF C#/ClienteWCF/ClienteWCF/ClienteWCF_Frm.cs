using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ClienteWCF
{
    public partial class ClienteWCF_Frm : Form
    {
        public ClienteWCF_Frm()
        {
            InitializeComponent();
        }

        private void ClienteWCF_Frm_Load(object sender, EventArgs e)
        {
            MiClienteWCF.MiServicioClient MiWCFClient = new MiClienteWCF.MiServicioClient();

            dataGridView1.Refresh();
            dataGridView1.DataSource = MiWCFClient.DevuelveListaPersonas();
        }
    }
}
