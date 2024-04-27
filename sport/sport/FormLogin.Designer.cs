namespace sport
{
    partial class FormLogin
    {
        /// <summary>
        /// Обязательная переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormLogin));
            this.panelMain = new System.Windows.Forms.Panel();
            this.buttonGuest = new System.Windows.Forms.Button();
            this.labelPassword = new System.Windows.Forms.Label();
            this.labelLogin = new System.Windows.Forms.Label();
            this.labelName = new System.Windows.Forms.Label();
            this.buttonUpdate = new System.Windows.Forms.Button();
            this.buttonLogin = new System.Windows.Forms.Button();
            this.textBoxPassword = new System.Windows.Forms.TextBox();
            this.textBoxLogin = new System.Windows.Forms.TextBox();
            this.labelQapcha = new System.Windows.Forms.Label();
            this.pictureBoxQapcha = new System.Windows.Forms.PictureBox();
            this.textBoxQapcha = new System.Windows.Forms.TextBox();
            this.labelStort = new System.Windows.Forms.Label();
            this.pictureBoxLogo = new System.Windows.Forms.PictureBox();
            this.timer = new System.Windows.Forms.Timer(this.components);
            this.panelMain.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBoxQapcha)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBoxLogo)).BeginInit();
            this.SuspendLayout();
            // 
            // panelMain
            // 
            this.panelMain.BackColor = System.Drawing.Color.White;
            this.panelMain.Controls.Add(this.buttonGuest);
            this.panelMain.Controls.Add(this.labelPassword);
            this.panelMain.Controls.Add(this.labelLogin);
            this.panelMain.Controls.Add(this.labelName);
            this.panelMain.Controls.Add(this.buttonUpdate);
            this.panelMain.Controls.Add(this.buttonLogin);
            this.panelMain.Controls.Add(this.textBoxPassword);
            this.panelMain.Controls.Add(this.textBoxLogin);
            this.panelMain.Controls.Add(this.labelQapcha);
            this.panelMain.Controls.Add(this.pictureBoxQapcha);
            this.panelMain.Controls.Add(this.textBoxQapcha);
            this.panelMain.Location = new System.Drawing.Point(4, 100);
            this.panelMain.Name = "panelMain";
            this.panelMain.Size = new System.Drawing.Size(405, 286);
            this.panelMain.TabIndex = 10;
            // 
            // buttonGuest
            // 
            this.buttonGuest.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(73)))), ((int)(((byte)(140)))), ((int)(((byte)(81)))));
            this.buttonGuest.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.buttonGuest.Location = new System.Drawing.Point(130, 151);
            this.buttonGuest.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.buttonGuest.Name = "buttonGuest";
            this.buttonGuest.Size = new System.Drawing.Size(116, 27);
            this.buttonGuest.TabIndex = 20;
            this.buttonGuest.Text = "Войти как гость";
            this.buttonGuest.UseVisualStyleBackColor = false;
            // 
            // labelPassword
            // 
            this.labelPassword.AutoSize = true;
            this.labelPassword.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.labelPassword.ImageAlign = System.Drawing.ContentAlignment.TopCenter;
            this.labelPassword.Location = new System.Drawing.Point(55, 90);
            this.labelPassword.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labelPassword.Name = "labelPassword";
            this.labelPassword.Size = new System.Drawing.Size(48, 15);
            this.labelPassword.TabIndex = 18;
            this.labelPassword.Text = "Пароль";
            // 
            // labelLogin
            // 
            this.labelLogin.AutoSize = true;
            this.labelLogin.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.labelLogin.Location = new System.Drawing.Point(55, 60);
            this.labelLogin.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labelLogin.Name = "labelLogin";
            this.labelLogin.Size = new System.Drawing.Size(40, 15);
            this.labelLogin.TabIndex = 17;
            this.labelLogin.Text = "Логин";
            // 
            // labelName
            // 
            this.labelName.AutoSize = true;
            this.labelName.Font = new System.Drawing.Font("Comic Sans MS", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.labelName.Location = new System.Drawing.Point(158, 9);
            this.labelName.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labelName.Name = "labelName";
            this.labelName.Size = new System.Drawing.Size(62, 29);
            this.labelName.TabIndex = 16;
            this.labelName.Text = "Вход";
            // 
            // buttonUpdate
            // 
            this.buttonUpdate.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(73)))), ((int)(((byte)(140)))), ((int)(((byte)(81)))));
            this.buttonUpdate.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.buttonUpdate.Location = new System.Drawing.Point(270, 153);
            this.buttonUpdate.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.buttonUpdate.Name = "buttonUpdate";
            this.buttonUpdate.Size = new System.Drawing.Size(88, 27);
            this.buttonUpdate.TabIndex = 14;
            this.buttonUpdate.Text = "Обновить";
            this.buttonUpdate.UseVisualStyleBackColor = false;
            this.buttonUpdate.Visible = false;
            this.buttonUpdate.Click += new System.EventHandler(this.buttonUpdate_Click);
            // 
            // buttonLogin
            // 
            this.buttonLogin.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(73)))), ((int)(((byte)(140)))), ((int)(((byte)(81)))));
            this.buttonLogin.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.buttonLogin.Location = new System.Drawing.Point(130, 119);
            this.buttonLogin.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.buttonLogin.Name = "buttonLogin";
            this.buttonLogin.Size = new System.Drawing.Size(116, 27);
            this.buttonLogin.TabIndex = 13;
            this.buttonLogin.Text = "Вход";
            this.buttonLogin.UseVisualStyleBackColor = false;
            this.buttonLogin.Click += new System.EventHandler(this.buttonLogin_Click);
            // 
            // textBoxPassword
            // 
            this.textBoxPassword.Location = new System.Drawing.Point(132, 90);
            this.textBoxPassword.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.textBoxPassword.Name = "textBoxPassword";
            this.textBoxPassword.Size = new System.Drawing.Size(116, 23);
            this.textBoxPassword.TabIndex = 11;
            this.textBoxPassword.Text = "2L6KZG";
            // 
            // textBoxLogin
            // 
            this.textBoxLogin.Location = new System.Drawing.Point(132, 60);
            this.textBoxLogin.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.textBoxLogin.Name = "textBoxLogin";
            this.textBoxLogin.Size = new System.Drawing.Size(116, 23);
            this.textBoxLogin.TabIndex = 10;
            this.textBoxLogin.Text = "m4ic8j5qgstw@gmail.com";
            // 
            // labelQapcha
            // 
            this.labelQapcha.AutoSize = true;
            this.labelQapcha.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.labelQapcha.Location = new System.Drawing.Point(32, 187);
            this.labelQapcha.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labelQapcha.Name = "labelQapcha";
            this.labelQapcha.Size = new System.Drawing.Size(78, 15);
            this.labelQapcha.TabIndex = 19;
            this.labelQapcha.Text = "Ввдите капчу";
            this.labelQapcha.Visible = false;
            // 
            // pictureBoxQapcha
            // 
            this.pictureBoxQapcha.Location = new System.Drawing.Point(130, 120);
            this.pictureBoxQapcha.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.pictureBoxQapcha.Name = "pictureBoxQapcha";
            this.pictureBoxQapcha.Size = new System.Drawing.Size(117, 58);
            this.pictureBoxQapcha.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBoxQapcha.TabIndex = 15;
            this.pictureBoxQapcha.TabStop = false;
            this.pictureBoxQapcha.Visible = false;
            // 
            // textBoxQapcha
            // 
            this.textBoxQapcha.Location = new System.Drawing.Point(130, 184);
            this.textBoxQapcha.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.textBoxQapcha.Name = "textBoxQapcha";
            this.textBoxQapcha.Size = new System.Drawing.Size(116, 23);
            this.textBoxQapcha.TabIndex = 12;
            this.textBoxQapcha.Visible = false;
            // 
            // labelStort
            // 
            this.labelStort.AutoSize = true;
            this.labelStort.Font = new System.Drawing.Font("Comic Sans MS", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.labelStort.Location = new System.Drawing.Point(-1, 20);
            this.labelStort.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labelStort.Name = "labelStort";
            this.labelStort.Size = new System.Drawing.Size(296, 29);
            this.labelStort.TabIndex = 17;
            this.labelStort.Text = "ООО «Спортивные товары»";
            // 
            // pictureBoxLogo
            // 
            this.pictureBoxLogo.Image = global::sport.Properties.Resources.logo;
            this.pictureBoxLogo.Location = new System.Drawing.Point(302, 12);
            this.pictureBoxLogo.Name = "pictureBoxLogo";
            this.pictureBoxLogo.Size = new System.Drawing.Size(107, 82);
            this.pictureBoxLogo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBoxLogo.TabIndex = 18;
            this.pictureBoxLogo.TabStop = false;
            // 
            // timer
            // 
            this.timer.Interval = 1000;
            this.timer.Tick += new System.EventHandler(this.timer_Tick);
            // 
            // FormLogin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSize = true;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(118)))), ((int)(((byte)(227)))), ((int)(((byte)(131)))));
            this.ClientSize = new System.Drawing.Size(410, 383);
            this.Controls.Add(this.pictureBoxLogo);
            this.Controls.Add(this.labelStort);
            this.Controls.Add(this.panelMain);
            this.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.MaximumSize = new System.Drawing.Size(426, 422);
            this.MinimumSize = new System.Drawing.Size(426, 422);
            this.Name = "FormLogin";
            this.Text = "Авторизация";
            this.Load += new System.EventHandler(this.FormLogin_Load);
            this.panelMain.ResumeLayout(false);
            this.panelMain.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBoxQapcha)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBoxLogo)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panelMain;
        private System.Windows.Forms.Label labelQapcha;
        private System.Windows.Forms.Label labelPassword;
        private System.Windows.Forms.Label labelLogin;
        private System.Windows.Forms.Label labelName;
        private System.Windows.Forms.PictureBox pictureBoxQapcha;
        private System.Windows.Forms.Button buttonUpdate;
        private System.Windows.Forms.Button buttonLogin;
        private System.Windows.Forms.TextBox textBoxQapcha;
        private System.Windows.Forms.TextBox textBoxPassword;
        private System.Windows.Forms.TextBox textBoxLogin;
        private System.Windows.Forms.Label labelStort;
        private System.Windows.Forms.PictureBox pictureBoxLogo;
        private System.Windows.Forms.Button buttonGuest;
        private System.Windows.Forms.Timer timer;
    }
}

