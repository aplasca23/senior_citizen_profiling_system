﻿using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SCProfilingSystem.Models;
using SCProfilingSystem.Repositories;

namespace SCProfilingSystem.Pages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private void ResetForm()
        {
            txtseniorID.Text = string.Empty;
            txtfirstname.Text = string.Empty;
            txtmiddlename.Text = string.Empty;
            txtlastname.Text = string.Empty;
            rblGender.ClearSelection();
            txtDob.Text = string.Empty;
            rblMS.ClearSelection();
            txtcontactnum.Text = string.Empty;
            txtreligion.Text = string.Empty;
            txtbarangay.Text = string.Empty;
            txtmunicipality.Text = string.Empty;
            txtprovince.Text = string.Empty;
            fuPhoto.Attributes.Clear();
        }

        protected async void btnRegister_Onclick(object sender, EventArgs e)
        {
            try
            {
                var senior = new SeniorsModel()
                {
                    SeniorID = txtseniorID.Text,
                    FirstName = txtfirstname.Text,
                    MiddleName = txtmiddlename.Text,
                    LastName = txtlastname.Text,
                    Gender = rblGender.SelectedItem.Value,
                    DOB = Convert.ToDateTime(txtDob.Text, CultureInfo.InvariantCulture),
                    MaritialStatus = rblMS.SelectedItem.Value,
                    ContactNum = txtcontactnum.Text,
                    Religion = txtreligion.Text,
                    Occupation = txtoccupation.Text,
                    Barangay = txtbarangay.Text,
                    Municipality = txtmunicipality.Text,
                    Province = txtprovince.Text,
                    Photo = fuPhoto.FileBytes
                };
                await SeniorsRepository.InsertSeniorAsync(senior);
                Response.Write(@"<script>alert('Record Successfully Created!');</script>");
                ResetForm();
            }
            catch (Exception exception)
            {
                Response.Write($@"<script>alert('${exception.Message}');</script>");
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}