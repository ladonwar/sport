namespace sport
{
    partial class FormMenu
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormMenu));
            this.dataGridViewProduct = new System.Windows.Forms.DataGridView();
            this.panelData = new System.Windows.Forms.Panel();
            this.labelName = new System.Windows.Forms.Label();
            this.buttonBack = new System.Windows.Forms.Button();
            this.buttonOrder = new System.Windows.Forms.Button();
            this.comboBoxFilter = new System.Windows.Forms.ComboBox();
            this.textBoxFilter = new System.Windows.Forms.TextBox();
            this.pictureBoxLogo = new System.Windows.Forms.PictureBox();
            this.labelStort = new System.Windows.Forms.Label();
            this.pictureBoxFoto = new System.Windows.Forms.PictureBox();
            this.labelNameProduct = new System.Windows.Forms.Label();
            this.labelProduct = new System.Windows.Forms.Label();
            this.labelCreater = new System.Windows.Forms.Label();
            this.labelPrice = new System.Windows.Forms.Label();
            this.labelDiscount = new System.Windows.Forms.Label();
            this.panelInfo = new System.Windows.Forms.Panel();
            this.panelDiscount = new System.Windows.Forms.Panel();
            this.panelFoto = new System.Windows.Forms.Panel();
            this.labelPoisk = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewProduct)).BeginInit();
            this.panelData.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBoxLogo)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBoxFoto)).BeginInit();
            this.panelInfo.SuspendLayout();
            this.panelDiscount.SuspendLayout();
            this.panelFoto.SuspendLayout();
            this.SuspendLayout();
            // 
            // dataGridViewProduct
            // 
            this.dataGridViewProduct.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(118)))), ((int)(((byte)(227)))), ((int)(((byte)(131)))));
            this.dataGridViewProduct.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewProduct.Location = new System.Drawing.Point(1, 3);
            this.dataGridViewProduct.Name = "dataGridViewProduct";
            this.dataGridViewProduct.Size = new System.Drawing.Size(718, 202);
            this.dataGridViewProduct.TabIndex = 0;
            this.dataGridViewProduct.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridViewProduct_CellClick);
            // 
            // panelData
            // 
            this.panelData.BackColor = System.Drawing.Color.White;
            this.panelData.Controls.Add(this.panelFoto);
            this.panelData.Controls.Add(this.panelDiscount);
            this.panelData.Controls.Add(this.panelInfo);
            this.panelData.Controls.Add(this.dataGridViewProduct);
            this.panelData.Location = new System.Drawing.Point(3, 121);
            this.panelData.Name = "panelData";
            this.panelData.Size = new System.Drawing.Size(722, 368);
            this.panelData.TabIndex = 1;
            // 
            // labelName
            // 
            this.labelName.AutoSize = true;
            this.labelName.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.labelName.Location = new System.Drawing.Point(637, 32);
            this.labelName.Name = "labelName";
            this.labelName.Size = new System.Drawing.Size(31, 15);
            this.labelName.TabIndex = 2;
            this.labelName.Text = "ФИО";
            // 
            // buttonBack
            // 
            this.buttonBack.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(73)))), ((int)(((byte)(140)))), ((int)(((byte)(81)))));
            this.buttonBack.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.buttonBack.Location = new System.Drawing.Point(3, 92);
            this.buttonBack.Name = "buttonBack";
            this.buttonBack.Size = new System.Drawing.Size(75, 23);
            this.buttonBack.TabIndex = 3;
            this.buttonBack.Text = "Назад";
            this.buttonBack.UseVisualStyleBackColor = false;
            // 
            // buttonOrder
            // 
            this.buttonOrder.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(73)))), ((int)(((byte)(140)))), ((int)(((byte)(81)))));
            this.buttonOrder.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.buttonOrder.Location = new System.Drawing.Point(386, 89);
            this.buttonOrder.Name = "buttonOrder";
            this.buttonOrder.Size = new System.Drawing.Size(75, 23);
            this.buttonOrder.TabIndex = 4;
            this.buttonOrder.Text = "Заказать";
            this.buttonOrder.UseVisualStyleBackColor = false;
            // 
            // comboBoxFilter
            // 
            this.comboBoxFilter.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(118)))), ((int)(((byte)(227)))), ((int)(((byte)(131)))));
            this.comboBoxFilter.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.comboBoxFilter.FormattingEnabled = true;
            this.comboBoxFilter.Items.AddRange(new object[] {
            "0-9.99%",
            "10-14.99%",
            "15%+"});
            this.comboBoxFilter.Location = new System.Drawing.Point(84, 92);
            this.comboBoxFilter.Name = "comboBoxFilter";
            this.comboBoxFilter.Size = new System.Drawing.Size(121, 23);
            this.comboBoxFilter.TabIndex = 5;
            this.comboBoxFilter.SelectedIndexChanged += new System.EventHandler(this.comboBoxFilter_SelectedIndexChanged);
            // 
            // textBoxFilter
            // 
            this.textBoxFilter.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(118)))), ((int)(((byte)(227)))), ((int)(((byte)(131)))));
            this.textBoxFilter.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.textBoxFilter.Location = new System.Drawing.Point(259, 93);
            this.textBoxFilter.Name = "textBoxFilter";
            this.textBoxFilter.Size = new System.Drawing.Size(100, 23);
            this.textBoxFilter.TabIndex = 6;
            this.textBoxFilter.TextChanged += new System.EventHandler(this.textBoxFilter_TextChanged);
            // 
            // pictureBoxLogo
            // 
            this.pictureBoxLogo.Image = global::sport.Properties.Resources.logo;
            this.pictureBoxLogo.Location = new System.Drawing.Point(344, 1);
            this.pictureBoxLogo.Name = "pictureBoxLogo";
            this.pictureBoxLogo.Size = new System.Drawing.Size(107, 82);
            this.pictureBoxLogo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBoxLogo.TabIndex = 20;
            this.pictureBoxLogo.TabStop = false;
            // 
            // labelStort
            // 
            this.labelStort.AutoSize = true;
            this.labelStort.Font = new System.Drawing.Font("Comic Sans MS", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.labelStort.Location = new System.Drawing.Point(13, 16);
            this.labelStort.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labelStort.Name = "labelStort";
            this.labelStort.Size = new System.Drawing.Size(296, 29);
            this.labelStort.TabIndex = 19;
            this.labelStort.Text = "ООО «Спортивные товары»";
            // 
            // pictureBoxFoto
            // 
            this.pictureBoxFoto.Location = new System.Drawing.Point(19, 13);
            this.pictureBoxFoto.Name = "pictureBoxFoto";
            this.pictureBoxFoto.Size = new System.Drawing.Size(100, 71);
            this.pictureBoxFoto.TabIndex = 1;
            this.pictureBoxFoto.TabStop = false;
            // 
            // labelNameProduct
            // 
            this.labelNameProduct.AutoSize = true;
            this.labelNameProduct.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.labelNameProduct.Location = new System.Drawing.Point(22, 17);
            this.labelNameProduct.Name = "labelNameProduct";
            this.labelNameProduct.Size = new System.Drawing.Size(125, 15);
            this.labelNameProduct.TabIndex = 2;
            this.labelNameProduct.Text = "Наименование товара";
            // 
            // labelProduct
            // 
            this.labelProduct.AutoSize = true;
            this.labelProduct.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.labelProduct.Location = new System.Drawing.Point(22, 32);
            this.labelProduct.Name = "labelProduct";
            this.labelProduct.Size = new System.Drawing.Size(100, 15);
            this.labelProduct.TabIndex = 3;
            this.labelProduct.Text = "Описание товара";
            // 
            // labelCreater
            // 
            this.labelCreater.AutoSize = true;
            this.labelCreater.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.labelCreater.Location = new System.Drawing.Point(22, 51);
            this.labelCreater.Name = "labelCreater";
            this.labelCreater.Size = new System.Drawing.Size(95, 15);
            this.labelCreater.TabIndex = 4;
            this.labelCreater.Text = "Производитель:";
            // 
            // labelPrice
            // 
            this.labelPrice.AutoSize = true;
            this.labelPrice.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.labelPrice.Location = new System.Drawing.Point(22, 71);
            this.labelPrice.Name = "labelPrice";
            this.labelPrice.Size = new System.Drawing.Size(37, 15);
            this.labelPrice.TabIndex = 5;
            this.labelPrice.Text = "Цена:";
            // 
            // labelDiscount
            // 
            this.labelDiscount.AutoSize = true;
            this.labelDiscount.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.labelDiscount.Location = new System.Drawing.Point(29, 32);
            this.labelDiscount.Name = "labelDiscount";
            this.labelDiscount.Size = new System.Drawing.Size(84, 15);
            this.labelDiscount.TabIndex = 6;
            this.labelDiscount.Text = "Размер скидки";
            // 
            // panelInfo
            // 
            this.panelInfo.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(118)))), ((int)(((byte)(227)))), ((int)(((byte)(131)))));
            this.panelInfo.Controls.Add(this.labelNameProduct);
            this.panelInfo.Controls.Add(this.labelProduct);
            this.panelInfo.Controls.Add(this.labelPrice);
            this.panelInfo.Controls.Add(this.labelCreater);
            this.panelInfo.Location = new System.Drawing.Point(187, 217);
            this.panelInfo.Name = "panelInfo";
            this.panelInfo.Size = new System.Drawing.Size(200, 100);
            this.panelInfo.TabIndex = 7;
            // 
            // panelDiscount
            // 
            this.panelDiscount.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(118)))), ((int)(((byte)(227)))), ((int)(((byte)(131)))));
            this.panelDiscount.Controls.Add(this.labelDiscount);
            this.panelDiscount.Location = new System.Drawing.Point(393, 217);
            this.panelDiscount.Name = "panelDiscount";
            this.panelDiscount.Size = new System.Drawing.Size(200, 100);
            this.panelDiscount.TabIndex = 8;
            // 
            // panelFoto
            // 
            this.panelFoto.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(118)))), ((int)(((byte)(227)))), ((int)(((byte)(131)))));
            this.panelFoto.Controls.Add(this.pictureBoxFoto);
            this.panelFoto.Location = new System.Drawing.Point(15, 217);
            this.panelFoto.Name = "panelFoto";
            this.panelFoto.Size = new System.Drawing.Size(153, 100);
            this.panelFoto.TabIndex = 9;
            // 
            // labelPoisk
            // 
            this.labelPoisk.AutoSize = true;
            this.labelPoisk.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.labelPoisk.Location = new System.Drawing.Point(211, 96);
            this.labelPoisk.Name = "labelPoisk";
            this.labelPoisk.Size = new System.Drawing.Size(42, 15);
            this.labelPoisk.TabIndex = 21;
            this.labelPoisk.Text = "Поиск";
            // 
            // FormMenu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(118)))), ((int)(((byte)(227)))), ((int)(((byte)(131)))));
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.labelPoisk);
            this.Controls.Add(this.pictureBoxLogo);
            this.Controls.Add(this.labelStort);
            this.Controls.Add(this.textBoxFilter);
            this.Controls.Add(this.comboBoxFilter);
            this.Controls.Add(this.buttonOrder);
            this.Controls.Add(this.buttonBack);
            this.Controls.Add(this.labelName);
            this.Controls.Add(this.panelData);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FormMenu";
            this.Text = "Продукты";
            this.Load += new System.EventHandler(this.FormMenu_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewProduct)).EndInit();
            this.panelData.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBoxLogo)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBoxFoto)).EndInit();
            this.panelInfo.ResumeLayout(false);
            this.panelInfo.PerformLayout();
            this.panelDiscount.ResumeLayout(false);
            this.panelDiscount.PerformLayout();
            this.panelFoto.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridViewProduct;
        private System.Windows.Forms.Panel panelData;
        private System.Windows.Forms.Label labelName;
        private System.Windows.Forms.Button buttonBack;
        private System.Windows.Forms.Button buttonOrder;
        private System.Windows.Forms.ComboBox comboBoxFilter;
        private System.Windows.Forms.TextBox textBoxFilter;
        private System.Windows.Forms.PictureBox pictureBoxLogo;
        private System.Windows.Forms.Label labelStort;
        private System.Windows.Forms.Panel panelFoto;
        private System.Windows.Forms.PictureBox pictureBoxFoto;
        private System.Windows.Forms.Panel panelDiscount;
        private System.Windows.Forms.Label labelDiscount;
        private System.Windows.Forms.Panel panelInfo;
        private System.Windows.Forms.Label labelNameProduct;
        private System.Windows.Forms.Label labelProduct;
        private System.Windows.Forms.Label labelPrice;
        private System.Windows.Forms.Label labelCreater;
        private System.Windows.Forms.Label labelPoisk;
    }
}