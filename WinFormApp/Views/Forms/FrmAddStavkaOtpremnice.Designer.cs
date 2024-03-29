﻿namespace WinFormApp.Views.Forms
{
    partial class FrmAddStavkaOtpremnice
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.cbOtpremnica = new System.Windows.Forms.ComboBox();
            this.cbOsnovnoSredstvo = new System.Windows.Forms.ComboBox();
            this.dateDatumIzdavanja = new System.Windows.Forms.DateTimePicker();
            this.txtKolicina = new System.Windows.Forms.TextBox();
            this.btnDodajStavku = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(171, 83);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(109, 25);
            this.label1.TabIndex = 0;
            this.label1.Text = "Otpremnica:";
            // 
            // label2
            // 
            this.label2.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(171, 150);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(76, 25);
            this.label2.TabIndex = 1;
            this.label2.Text = "Količina:";
            // 
            // label3
            // 
            this.label3.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(171, 232);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(153, 25);
            this.label3.TabIndex = 2;
            this.label3.Text = "Datum izdavanja: ";
            // 
            // label4
            // 
            this.label4.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(171, 316);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(167, 25);
            this.label4.TabIndex = 3;
            this.label4.Text = "Osnovno sredstvo: ";
            // 
            // cbOtpremnica
            // 
            this.cbOtpremnica.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.cbOtpremnica.FormattingEnabled = true;
            this.cbOtpremnica.Location = new System.Drawing.Point(461, 75);
            this.cbOtpremnica.Name = "cbOtpremnica";
            this.cbOtpremnica.Size = new System.Drawing.Size(295, 33);
            this.cbOtpremnica.TabIndex = 4;
            // 
            // cbOsnovnoSredstvo
            // 
            this.cbOsnovnoSredstvo.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.cbOsnovnoSredstvo.FormattingEnabled = true;
            this.cbOsnovnoSredstvo.Location = new System.Drawing.Point(461, 308);
            this.cbOsnovnoSredstvo.Name = "cbOsnovnoSredstvo";
            this.cbOsnovnoSredstvo.Size = new System.Drawing.Size(295, 33);
            this.cbOsnovnoSredstvo.TabIndex = 5;
            // 
            // dateDatumIzdavanja
            // 
            this.dateDatumIzdavanja.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.dateDatumIzdavanja.Location = new System.Drawing.Point(461, 226);
            this.dateDatumIzdavanja.Name = "dateDatumIzdavanja";
            this.dateDatumIzdavanja.Size = new System.Drawing.Size(295, 31);
            this.dateDatumIzdavanja.TabIndex = 6;
            // 
            // txtKolicina
            // 
            this.txtKolicina.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.txtKolicina.Location = new System.Drawing.Point(461, 144);
            this.txtKolicina.Name = "txtKolicina";
            this.txtKolicina.Size = new System.Drawing.Size(295, 31);
            this.txtKolicina.TabIndex = 7;
            // 
            // btnDodajStavku
            // 
            this.btnDodajStavku.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnDodajStavku.Location = new System.Drawing.Point(306, 440);
            this.btnDodajStavku.Name = "btnDodajStavku";
            this.btnDodajStavku.Size = new System.Drawing.Size(198, 51);
            this.btnDodajStavku.TabIndex = 8;
            this.btnDodajStavku.Text = "Dodaj stavku ";
            this.btnDodajStavku.UseVisualStyleBackColor = true;
            this.btnDodajStavku.Click += new System.EventHandler(this.btnDodajStavku_Click);
            // 
            // FrmAddStavkaOtpremnice
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(10F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 612);
            this.Controls.Add(this.btnDodajStavku);
            this.Controls.Add(this.txtKolicina);
            this.Controls.Add(this.dateDatumIzdavanja);
            this.Controls.Add(this.cbOsnovnoSredstvo);
            this.Controls.Add(this.cbOtpremnica);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "FrmAddStavkaOtpremnice";
            this.Text = "FrmAddStavkaOtpremnice";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Label label1;
        private Label label2;
        private Label label3;
        private Label label4;
        private ComboBox cbOtpremnica;
        private ComboBox cbOsnovnoSredstvo;
        private DateTimePicker dateDatumIzdavanja;
        private TextBox txtKolicina;
        private Button btnDodajStavku;
    }
}