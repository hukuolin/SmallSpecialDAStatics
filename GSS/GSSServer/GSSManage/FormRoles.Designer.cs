﻿namespace GSSServer.GSSManage
{
    partial class FormRoles
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
            this.toolStripButtonDelete = new System.Windows.Forms.ToolStripButton();
            this.toolStripButtonEdit = new System.Windows.Forms.ToolStripButton();
            this.toolStrip1 = new System.Windows.Forms.ToolStrip();
            this.toolStripButtonAdd = new System.Windows.Forms.ToolStripButton();
            this.toolStripButtonRefresh = new System.Windows.Forms.ToolStripButton();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.fRoleIDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.fRoleNameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.fIsUsedDataGridViewCheckBoxColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.fPowerDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.toolStrip1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // toolStripButtonDelete
            // 
            this.toolStripButtonDelete.Image = global::GSSServer.Properties.Resources.DEL;
            this.toolStripButtonDelete.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonDelete.Name = "toolStripButtonDelete";
            this.toolStripButtonDelete.Padding = new System.Windows.Forms.Padding(5, 0, 0, 0);
            this.toolStripButtonDelete.Size = new System.Drawing.Size(54, 22);
            this.toolStripButtonDelete.Text = "删除";
            this.toolStripButtonDelete.Click += new System.EventHandler(this.toolStripButtonDelete_Click);
            // 
            // toolStripButtonEdit
            // 
            this.toolStripButtonEdit.Image = global::GSSServer.Properties.Resources.People;
            this.toolStripButtonEdit.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonEdit.Name = "toolStripButtonEdit";
            this.toolStripButtonEdit.Padding = new System.Windows.Forms.Padding(5, 0, 0, 0);
            this.toolStripButtonEdit.Size = new System.Drawing.Size(84, 22);
            this.toolStripButtonEdit.Text = "查看/修改";
            this.toolStripButtonEdit.Click += new System.EventHandler(this.toolStripButtonEdit_Click);
            // 
            // toolStrip1
            // 
            this.toolStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripButtonAdd,
            this.toolStripButtonEdit,
            this.toolStripButtonDelete,
            this.toolStripButtonRefresh});
            this.toolStrip1.Location = new System.Drawing.Point(0, 0);
            this.toolStrip1.Name = "toolStrip1";
            this.toolStrip1.Size = new System.Drawing.Size(568, 25);
            this.toolStrip1.TabIndex = 13;
            this.toolStrip1.Text = "toolStrip1";
            // 
            // toolStripButtonAdd
            // 
            this.toolStripButtonAdd.Image = global::GSSServer.Properties.Resources.OK;
            this.toolStripButtonAdd.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonAdd.Name = "toolStripButtonAdd";
            this.toolStripButtonAdd.Padding = new System.Windows.Forms.Padding(5, 0, 0, 0);
            this.toolStripButtonAdd.Size = new System.Drawing.Size(54, 22);
            this.toolStripButtonAdd.Text = "新增";
            this.toolStripButtonAdd.Click += new System.EventHandler(this.toolStripButtonAdd_Click);
            // 
            // toolStripButtonRefresh
            // 
            this.toolStripButtonRefresh.Image = global::GSSServer.Properties.Resources.Refresh;
            this.toolStripButtonRefresh.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonRefresh.Name = "toolStripButtonRefresh";
            this.toolStripButtonRefresh.Padding = new System.Windows.Forms.Padding(5, 0, 0, 0);
            this.toolStripButtonRefresh.Size = new System.Drawing.Size(78, 22);
            this.toolStripButtonRefresh.Text = "刷新数据";
            this.toolStripButtonRefresh.Click += new System.EventHandler(this.toolStripButtonRefresh_Click);
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.AllowUserToResizeRows = false;
            this.dataGridView1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.fRoleIDDataGridViewTextBoxColumn,
            this.fRoleNameDataGridViewTextBoxColumn,
            this.fIsUsedDataGridViewCheckBoxColumn,
            this.fPowerDataGridViewTextBoxColumn});
            this.dataGridView1.Location = new System.Drawing.Point(6, 20);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.RowHeadersVisible = false;
            this.dataGridView1.RowTemplate.Height = 23;
            this.dataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView1.Size = new System.Drawing.Size(532, 304);
            this.dataGridView1.TabIndex = 7;
            this.dataGridView1.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellDoubleClick);
            // 
            // fRoleIDDataGridViewTextBoxColumn
            // 
            this.fRoleIDDataGridViewTextBoxColumn.DataPropertyName = "F_RoleID";
            this.fRoleIDDataGridViewTextBoxColumn.HeaderText = "角色编号";
            this.fRoleIDDataGridViewTextBoxColumn.Name = "fRoleIDDataGridViewTextBoxColumn";
            this.fRoleIDDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // fRoleNameDataGridViewTextBoxColumn
            // 
            this.fRoleNameDataGridViewTextBoxColumn.DataPropertyName = "F_RoleName";
            this.fRoleNameDataGridViewTextBoxColumn.HeaderText = "角色名称";
            this.fRoleNameDataGridViewTextBoxColumn.Name = "fRoleNameDataGridViewTextBoxColumn";
            this.fRoleNameDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // fIsUsedDataGridViewCheckBoxColumn
            // 
            this.fIsUsedDataGridViewCheckBoxColumn.DataPropertyName = "F_IsUsed";
            this.fIsUsedDataGridViewCheckBoxColumn.HeaderText = "是否启用";
            this.fIsUsedDataGridViewCheckBoxColumn.Name = "fIsUsedDataGridViewCheckBoxColumn";
            this.fIsUsedDataGridViewCheckBoxColumn.ReadOnly = true;
            // 
            // fPowerDataGridViewTextBoxColumn
            // 
            this.fPowerDataGridViewTextBoxColumn.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.fPowerDataGridViewTextBoxColumn.DataPropertyName = "F_Power";
            this.fPowerDataGridViewTextBoxColumn.HeaderText = "角色权限";
            this.fPowerDataGridViewTextBoxColumn.Name = "fPowerDataGridViewTextBoxColumn";
            this.fPowerDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // groupBox1
            // 
            this.groupBox1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.groupBox1.Controls.Add(this.dataGridView1);
            this.groupBox1.Location = new System.Drawing.Point(12, 28);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(544, 330);
            this.groupBox1.TabIndex = 14;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "列表";
            // 
            // FormRoles
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(568, 370);
            this.Controls.Add(this.toolStrip1);
            this.Controls.Add(this.groupBox1);
            this.Name = "FormRoles";
            this.ShowInTaskbar = false;
            this.Text = "角色管理";
            this.Load += new System.EventHandler(this.FormRoles_Load);
            this.toolStrip1.ResumeLayout(false);
            this.toolStrip1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ToolStripButton toolStripButtonDelete;
        private System.Windows.Forms.ToolStripButton toolStripButtonEdit;
        private System.Windows.Forms.ToolStrip toolStrip1;
        private System.Windows.Forms.ToolStripButton toolStripButtonAdd;
        private System.Windows.Forms.ToolStripButton toolStripButtonRefresh;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DataGridViewTextBoxColumn fRoleIDDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn fRoleNameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewCheckBoxColumn fIsUsedDataGridViewCheckBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn fPowerDataGridViewTextBoxColumn;

    }
}