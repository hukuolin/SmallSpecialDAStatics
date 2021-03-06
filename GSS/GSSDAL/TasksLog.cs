using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using GSS.DBUtility;
namespace GSSDAL
{

    /// <summary>
    /// 数据访问类:T_TasksLog
    /// </summary>
    public partial class T_TasksLog
    {
        public T_TasksLog()
        { }
        #region  Method
        /// <summary>
        /// 是否存在该记录
        /// </summary>
        public bool Exists(int F_LogID)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select count(1) from T_TasksLog");
            strSql.Append(" where F_LogID=@F_LogID");
            SqlParameter[] parameters = {
					new SqlParameter("@F_LogID", SqlDbType.Int,4)
};
            parameters[0].Value = F_LogID;

            return DbHelperSQL.Exists(strSql.ToString(), parameters);
        }


        /// <summary>
        /// 增加一条数据
        /// </summary>
        public int Add(GSSModel.TasksLog model)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("insert into T_TasksLog(");
            strSql.Append("F_ID,F_Title,F_Note,F_From,F_VipLevel,F_LimitType,F_LimitTime,F_Type,F_State,F_GameName,F_GameBigZone,F_GameZone,F_GUserID,F_GUserName,F_GRoleID,F_GRoleName,F_Telphone,F_GPeopleName,F_DutyMan,F_PreDutyMan,F_CreatMan,F_CreatTime,F_EditMan,F_EditTime,F_URInfo,F_Rowtype,F_CUserName,F_CPSWProtect,F_CPersonID,F_COther,F_OLastLoginTime,F_OCanRestor,F_OAlwaysPlace,F_TToolUsed,F_TUseData)");
            strSql.Append(" values (");
            strSql.Append("@F_ID,@F_Title,@F_Note,@F_From,@F_VipLevel,@F_LimitType,@F_LimitTime,@F_Type,@F_State,@F_GameName,@F_GameBigZone,@F_GameZone,@F_GUserID,@F_GUserName,@F_GRoleID,@F_GRoleName,@F_Telphone,@F_GPeopleName,@F_DutyMan,@F_PreDutyMan,@F_CreatMan,@F_CreatTime,@F_EditMan,@F_EditTime,@F_URInfo,@F_Rowtype,@F_CUserName,@F_CPSWProtect,@F_CPersonID,@F_COther,@F_OLastLoginTime,@F_OCanRestor,@F_OAlwaysPlace,@F_TToolUsed,@F_TUseData)");
            strSql.Append(";select @@IDENTITY");
            SqlParameter[] parameters = {
					new SqlParameter("@F_ID", SqlDbType.Int,4),
					new SqlParameter("@F_Title", SqlDbType.NVarChar,30),
					new SqlParameter("@F_Note", SqlDbType.NVarChar,500),
					new SqlParameter("@F_From", SqlDbType.Int,4),
					new SqlParameter("@F_VipLevel", SqlDbType.Int,4),
					new SqlParameter("@F_LimitType", SqlDbType.Int,4),
					new SqlParameter("@F_LimitTime", SqlDbType.SmallDateTime),
					new SqlParameter("@F_Type", SqlDbType.Int,4),
					new SqlParameter("@F_State", SqlDbType.Int,4),
					new SqlParameter("@F_GameName", SqlDbType.Int,4),
					new SqlParameter("@F_GameBigZone", SqlDbType.NVarChar,16),
					new SqlParameter("@F_GameZone", SqlDbType.NVarChar,16),
					new SqlParameter("@F_GUserID", SqlDbType.NVarChar,16),
					new SqlParameter("@F_GUserName", SqlDbType.NVarChar,16),
					new SqlParameter("@F_GRoleID", SqlDbType.NVarChar,16),
					new SqlParameter("@F_GRoleName", SqlDbType.NVarChar,16),
					new SqlParameter("@F_Telphone", SqlDbType.NVarChar,50),
					new SqlParameter("@F_GPeopleName", SqlDbType.NVarChar,16),
					new SqlParameter("@F_DutyMan", SqlDbType.Int,4),
					new SqlParameter("@F_PreDutyMan", SqlDbType.Int,4),
					new SqlParameter("@F_CreatMan", SqlDbType.Int,4),
					new SqlParameter("@F_CreatTime", SqlDbType.SmallDateTime),
					new SqlParameter("@F_EditMan", SqlDbType.Int,4),
					new SqlParameter("@F_EditTime", SqlDbType.SmallDateTime),
					new SqlParameter("@F_URInfo", SqlDbType.NVarChar,300),
					new SqlParameter("@F_Rowtype", SqlDbType.TinyInt,1),
					new SqlParameter("@F_CUserName", SqlDbType.Bit,1),
					new SqlParameter("@F_CPSWProtect", SqlDbType.Bit,1),
					new SqlParameter("@F_CPersonID", SqlDbType.Bit,1),
					new SqlParameter("@F_COther", SqlDbType.NVarChar,100),
					new SqlParameter("@F_OLastLoginTime", SqlDbType.NVarChar,50),
					new SqlParameter("@F_OCanRestor", SqlDbType.Bit,1),
					new SqlParameter("@F_OAlwaysPlace", SqlDbType.NVarChar,50),
					new SqlParameter("@F_TToolUsed", SqlDbType.Bit,1),
					new SqlParameter("@F_TUseData", SqlDbType.NVarChar,200)};
            parameters[0].Value = model.F_ID;
            parameters[1].Value = model.F_Title;
            parameters[2].Value = model.F_Note;
            parameters[3].Value = model.F_From;
            parameters[4].Value = model.F_VipLevel;
            parameters[5].Value = model.F_LimitType;
            parameters[6].Value = model.F_LimitTime;
            parameters[7].Value = model.F_Type;
            parameters[8].Value = model.F_State;
            parameters[9].Value = model.F_GameName;
            parameters[10].Value = model.F_GameBigZone;
            parameters[11].Value = model.F_GameZone;
            parameters[12].Value = model.F_GUserID;
            parameters[13].Value = model.F_GUserName;
            parameters[14].Value = model.F_GRoleID;
            parameters[15].Value = model.F_GRoleName;
            parameters[16].Value = model.F_Telphone;
            parameters[17].Value = model.F_GPeopleName;
            parameters[18].Value = model.F_DutyMan;
            parameters[19].Value = model.F_PreDutyMan;
            parameters[20].Value = model.F_CreatMan;
            parameters[21].Value = model.F_CreatTime;
            parameters[22].Value = model.F_EditMan;
            parameters[23].Value = model.F_EditTime;
            parameters[24].Value = model.F_URInfo;
            parameters[25].Value = model.F_Rowtype;
            parameters[26].Value = model.F_CUserName;
            parameters[27].Value = model.F_CPSWProtect;
            parameters[28].Value = model.F_CPersonID;
            parameters[29].Value = model.F_COther;
            parameters[30].Value = model.F_OLastLoginTime;
            parameters[31].Value = model.F_OCanRestor;
            parameters[32].Value = model.F_OAlwaysPlace;
            parameters[33].Value = model.F_TToolUsed;
            parameters[34].Value = model.F_TUseData;

            object obj = DbHelperSQL.GetSingle(strSql.ToString(), parameters);
            if (obj == null)
            {
                return 0;
            }
            else
            {
                return Convert.ToInt32(obj);
            }
        }
        /// <summary>
        /// 更新一条数据
        /// </summary>
        public bool Update(GSSModel.TasksLog model)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update T_TasksLog set ");
            strSql.Append("F_ID=@F_ID,");
            strSql.Append("F_Title=@F_Title,");
            strSql.Append("F_Note=@F_Note,");
            strSql.Append("F_From=@F_From,");
            strSql.Append("F_VipLevel=@F_VipLevel,");
            strSql.Append("F_LimitType=@F_LimitType,");
            strSql.Append("F_LimitTime=@F_LimitTime,");
            strSql.Append("F_Type=@F_Type,");
            strSql.Append("F_State=@F_State,");
            strSql.Append("F_GameName=@F_GameName,");
            strSql.Append("F_GameBigZone=@F_GameBigZone,");
            strSql.Append("F_GameZone=@F_GameZone,");
            strSql.Append("F_GUserID=@F_GUserID,");
            strSql.Append("F_GUserName=@F_GUserName,");
            strSql.Append("F_GRoleID=@F_GRoleID,");
            strSql.Append("F_GRoleName=@F_GRoleName,");
            strSql.Append("F_Telphone=@F_Telphone,");
            strSql.Append("F_GPeopleName=@F_GPeopleName,");
            strSql.Append("F_DutyMan=@F_DutyMan,");
            strSql.Append("F_PreDutyMan=@F_PreDutyMan,");
            strSql.Append("F_CreatMan=@F_CreatMan,");
            strSql.Append("F_CreatTime=@F_CreatTime,");
            strSql.Append("F_EditMan=@F_EditMan,");
            strSql.Append("F_EditTime=@F_EditTime,");
            strSql.Append("F_URInfo=@F_URInfo,");
            strSql.Append("F_Rowtype=@F_Rowtype,");
            strSql.Append("F_CUserName=@F_CUserName,");
            strSql.Append("F_CPSWProtect=@F_CPSWProtect,");
            strSql.Append("F_CPersonID=@F_CPersonID,");
            strSql.Append("F_COther=@F_COther,");
            strSql.Append("F_OLastLoginTime=@F_OLastLoginTime,");
            strSql.Append("F_OCanRestor=@F_OCanRestor,");
            strSql.Append("F_OAlwaysPlace=@F_OAlwaysPlace,");
            strSql.Append("F_TToolUsed=@F_TToolUsed,");
            strSql.Append("F_TUseData=@F_TUseData");
            strSql.Append(" where F_LogID=@F_LogID");
            SqlParameter[] parameters = {
					new SqlParameter("@F_ID", SqlDbType.Int,4),
					new SqlParameter("@F_Title", SqlDbType.NVarChar,30),
					new SqlParameter("@F_Note", SqlDbType.NVarChar,500),
					new SqlParameter("@F_From", SqlDbType.Int,4),
					new SqlParameter("@F_VipLevel", SqlDbType.Int,4),
					new SqlParameter("@F_LimitType", SqlDbType.Int,4),
					new SqlParameter("@F_LimitTime", SqlDbType.SmallDateTime),
					new SqlParameter("@F_Type", SqlDbType.Int,4),
					new SqlParameter("@F_State", SqlDbType.Int,4),
					new SqlParameter("@F_GameName", SqlDbType.Int,4),
					new SqlParameter("@F_GameBigZone", SqlDbType.NVarChar,16),
					new SqlParameter("@F_GameZone", SqlDbType.NVarChar,16),
					new SqlParameter("@F_GUserID", SqlDbType.NVarChar,16),
					new SqlParameter("@F_GUserName", SqlDbType.NVarChar,16),
					new SqlParameter("@F_GRoleID", SqlDbType.NVarChar,16),
					new SqlParameter("@F_GRoleName", SqlDbType.NVarChar,16),
					new SqlParameter("@F_Telphone", SqlDbType.NVarChar,50),
					new SqlParameter("@F_GPeopleName", SqlDbType.NVarChar,16),
					new SqlParameter("@F_DutyMan", SqlDbType.Int,4),
					new SqlParameter("@F_PreDutyMan", SqlDbType.Int,4),
					new SqlParameter("@F_CreatMan", SqlDbType.Int,4),
					new SqlParameter("@F_CreatTime", SqlDbType.SmallDateTime),
					new SqlParameter("@F_EditMan", SqlDbType.Int,4),
					new SqlParameter("@F_EditTime", SqlDbType.SmallDateTime),
					new SqlParameter("@F_URInfo", SqlDbType.NVarChar,300),
					new SqlParameter("@F_Rowtype", SqlDbType.TinyInt,1),
					new SqlParameter("@F_CUserName", SqlDbType.Bit,1),
					new SqlParameter("@F_CPSWProtect", SqlDbType.Bit,1),
					new SqlParameter("@F_CPersonID", SqlDbType.Bit,1),
					new SqlParameter("@F_COther", SqlDbType.NVarChar,100),
					new SqlParameter("@F_OLastLoginTime", SqlDbType.NVarChar,50),
					new SqlParameter("@F_OCanRestor", SqlDbType.Bit,1),
					new SqlParameter("@F_OAlwaysPlace", SqlDbType.NVarChar,50),
					new SqlParameter("@F_TToolUsed", SqlDbType.Bit,1),
					new SqlParameter("@F_TUseData", SqlDbType.NVarChar,200),
					new SqlParameter("@F_LogID", SqlDbType.Int,4)};
            parameters[0].Value = model.F_ID;
            parameters[1].Value = model.F_Title;
            parameters[2].Value = model.F_Note;
            parameters[3].Value = model.F_From;
            parameters[4].Value = model.F_VipLevel;
            parameters[5].Value = model.F_LimitType;
            parameters[6].Value = model.F_LimitTime;
            parameters[7].Value = model.F_Type;
            parameters[8].Value = model.F_State;
            parameters[9].Value = model.F_GameName;
            parameters[10].Value = model.F_GameBigZone;
            parameters[11].Value = model.F_GameZone;
            parameters[12].Value = model.F_GUserID;
            parameters[13].Value = model.F_GUserName;
            parameters[14].Value = model.F_GRoleID;
            parameters[15].Value = model.F_GRoleName;
            parameters[16].Value = model.F_Telphone;
            parameters[17].Value = model.F_GPeopleName;
            parameters[18].Value = model.F_DutyMan;
            parameters[19].Value = model.F_PreDutyMan;
            parameters[20].Value = model.F_CreatMan;
            parameters[21].Value = model.F_CreatTime;
            parameters[22].Value = model.F_EditMan;
            parameters[23].Value = model.F_EditTime;
            parameters[24].Value = model.F_URInfo;
            parameters[25].Value = model.F_Rowtype;
            parameters[26].Value = model.F_CUserName;
            parameters[27].Value = model.F_CPSWProtect;
            parameters[28].Value = model.F_CPersonID;
            parameters[29].Value = model.F_COther;
            parameters[30].Value = model.F_OLastLoginTime;
            parameters[31].Value = model.F_OCanRestor;
            parameters[32].Value = model.F_OAlwaysPlace;
            parameters[33].Value = model.F_TToolUsed;
            parameters[34].Value = model.F_TUseData;
            parameters[35].Value = model.F_LogID;

            int rows = DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }


        /// <summary>
        /// 编辑工单历史
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public int EditTaskLog(GSSModel.Tasks model)
        {
            int rowsAffected = 0;
            SqlParameter[] parameters = {
					new SqlParameter("@F_Title", SqlDbType.NVarChar,30),
					new SqlParameter("@F_Note", SqlDbType.VarChar),
					new SqlParameter("@F_From", SqlDbType.Int,4),
					new SqlParameter("@F_VipLevel", SqlDbType.Int,4),
					new SqlParameter("@F_LimitType", SqlDbType.Int,4),
					new SqlParameter("@F_LimitTime", SqlDbType.DateTime),
					new SqlParameter("@F_Type", SqlDbType.Int,4),
					new SqlParameter("@F_State", SqlDbType.Int,4),
					new SqlParameter("@F_GameName", SqlDbType.Int,4),
					new SqlParameter("@F_GameBigZone", SqlDbType.NVarChar,16),
					new SqlParameter("@F_GameZone", SqlDbType.NVarChar,16),
					new SqlParameter("@F_GUserID", SqlDbType.NVarChar,16),
					new SqlParameter("@F_GUserName", SqlDbType.NVarChar,16),
					new SqlParameter("@F_GRoleID", SqlDbType.NVarChar,16),
					new SqlParameter("@F_GRoleName", SqlDbType.NVarChar,16),
					new SqlParameter("@F_Telphone", SqlDbType.NVarChar,16),
					new SqlParameter("@F_GPeopleName", SqlDbType.NVarChar,16),
					new SqlParameter("@F_DutyMan", SqlDbType.Int,4),
					new SqlParameter("@F_PreDutyMan", SqlDbType.Int,4),
					new SqlParameter("@F_CreatMan", SqlDbType.Int,4),
					new SqlParameter("@F_CreatTime", SqlDbType.DateTime),
					new SqlParameter("@F_EditMan", SqlDbType.Int,4),
					new SqlParameter("@F_EditTime", SqlDbType.DateTime),
					new SqlParameter("@F_URInfo", SqlDbType.VarChar),
					new SqlParameter("@F_Rowtype", SqlDbType.TinyInt,1),
					new SqlParameter("@F_CUserName", SqlDbType.Bit,1),
					new SqlParameter("@F_CPSWProtect", SqlDbType.Bit,1),
					new SqlParameter("@F_CPersonID", SqlDbType.Bit,1),
					new SqlParameter("@F_COther", SqlDbType.NVarChar,500),
					new SqlParameter("@F_OLastLoginTime", SqlDbType.NVarChar,50),
					new SqlParameter("@F_OCanRestor", SqlDbType.Bit,1),
					new SqlParameter("@F_OAlwaysPlace", SqlDbType.NVarChar,50),
					new SqlParameter("@F_TToolUsed", SqlDbType.Bit,1),
					new SqlParameter("@F_TUseData", SqlDbType.VarChar),
					new SqlParameter("@F_ID", SqlDbType.Int,4)};
            parameters[0].Value = model.F_Title;
            parameters[1].Value = model.F_Note;
            parameters[2].Value = model.F_From;
            parameters[3].Value = model.F_VipLevel;
            parameters[4].Value = model.F_LimitType;
            parameters[5].Value = model.F_LimitTime;
            parameters[6].Value = model.F_Type;
            parameters[7].Value = model.F_State;
            parameters[8].Value = model.F_GameName;
            parameters[9].Value = model.F_GameBigZone;
            parameters[10].Value = model.F_GameZone;
            parameters[11].Value = model.F_GUserID;
            parameters[12].Value = model.F_GUserName;
            parameters[13].Value = model.F_GRoleID;
            parameters[14].Value = model.F_GRoleName;
            parameters[15].Value = model.F_Telphone;
            parameters[16].Value = model.F_GPeopleName;
            parameters[17].Value = model.F_DutyMan;
            parameters[18].Value = model.F_PreDutyMan;
            parameters[19].Value = model.F_CreatMan;
            parameters[20].Value = model.F_CreatTime;
            parameters[21].Value = model.F_EditMan;
            parameters[22].Value = model.F_EditTime;
            parameters[23].Value = model.F_URInfo;
            parameters[24].Value = model.F_Rowtype;
            parameters[25].Value = model.F_CUserName;
            parameters[26].Value = model.F_CPSWProtect;
            parameters[27].Value = model.F_CPersonID;
            parameters[28].Value = model.F_COther;
            parameters[29].Value = model.F_OLastLoginTime;
            parameters[30].Value = model.F_OCanRestor;
            parameters[31].Value = model.F_OAlwaysPlace;
            parameters[32].Value = model.F_TToolUsed;
            parameters[33].Value = model.F_TUseData;
            parameters[34].Value = model.F_ID;


            try
            {
                DbHelperSQL.RunProcedure("GSS_TasksLog_Update", parameters, out rowsAffected);
                return rowsAffected;
            }
            catch (System.Exception ex)
            {
                return 0;
            }

        }

        /// <summary>
        /// 删除一条数据
        /// </summary>
        public bool Delete(int F_LogID)
        {

            StringBuilder strSql = new StringBuilder();
            strSql.Append("delete from T_TasksLog ");
            strSql.Append(" where F_LogID=@F_LogID");
            SqlParameter[] parameters = {
					new SqlParameter("@F_LogID", SqlDbType.Int,4)
};
            parameters[0].Value = F_LogID;

            int rows = DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        /// <summary>
        /// 删除一条数据
        /// </summary>
        public bool DeleteList(string F_LogIDlist)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("delete from T_TasksLog ");
            strSql.Append(" where F_LogID in (" + F_LogIDlist + ")  ");
            int rows = DbHelperSQL.ExecuteSql(strSql.ToString());
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }


        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public GSSModel.TasksLog GetModel(int F_LogID)
        {

            StringBuilder strSql = new StringBuilder();
            strSql.Append("select  top 1 F_LogID,F_ID,F_Title,F_Note,F_From,F_VipLevel,F_LimitType,F_LimitTime,F_Type,F_State,F_GameName,F_GameBigZone,F_GameZone,F_GUserID,F_GUserName,F_GRoleID,F_GRoleName,F_Telphone,F_GPeopleName,F_DutyMan,F_PreDutyMan,F_CreatMan,F_CreatTime,F_EditMan,F_EditTime,F_URInfo,F_Rowtype,F_CUserName,F_CPSWProtect,F_CPersonID,F_COther,F_OLastLoginTime,F_OCanRestor,F_OAlwaysPlace,F_TToolUsed,F_TUseData from T_TasksLog ");
            strSql.Append(" where F_LogID=@F_LogID");
            SqlParameter[] parameters = {
					new SqlParameter("@F_LogID", SqlDbType.Int,4)
};
            parameters[0].Value = F_LogID;

            GSSModel.TasksLog model = new GSSModel.TasksLog();
            DataSet ds = DbHelperSQL.Query(strSql.ToString(), parameters);
            if (ds.Tables[0].Rows.Count > 0)
            {
                if (ds.Tables[0].Rows[0]["F_LogID"].ToString() != "")
                {
                    model.F_LogID = int.Parse(ds.Tables[0].Rows[0]["F_LogID"].ToString());
                }
                if (ds.Tables[0].Rows[0]["F_ID"].ToString() != "")
                {
                    model.F_ID = int.Parse(ds.Tables[0].Rows[0]["F_ID"].ToString());
                }
                if (ds.Tables[0].Rows[0]["F_Title"] != null)
                {
                    model.F_Title = ds.Tables[0].Rows[0]["F_Title"].ToString();
                }
                if (ds.Tables[0].Rows[0]["F_Note"] != null)
                {
                    model.F_Note = ds.Tables[0].Rows[0]["F_Note"].ToString();
                }
                if (ds.Tables[0].Rows[0]["F_From"].ToString() != "")
                {
                    model.F_From = int.Parse(ds.Tables[0].Rows[0]["F_From"].ToString());
                }
                if (ds.Tables[0].Rows[0]["F_VipLevel"].ToString() != "")
                {
                    model.F_VipLevel = int.Parse(ds.Tables[0].Rows[0]["F_VipLevel"].ToString());
                }
                if (ds.Tables[0].Rows[0]["F_LimitType"].ToString() != "")
                {
                    model.F_LimitType = int.Parse(ds.Tables[0].Rows[0]["F_LimitType"].ToString());
                }
                if (ds.Tables[0].Rows[0]["F_LimitTime"].ToString() != "")
                {
                    model.F_LimitTime = DateTime.Parse(ds.Tables[0].Rows[0]["F_LimitTime"].ToString());
                }
                if (ds.Tables[0].Rows[0]["F_Type"].ToString() != "")
                {
                    model.F_Type = int.Parse(ds.Tables[0].Rows[0]["F_Type"].ToString());
                }
                if (ds.Tables[0].Rows[0]["F_State"].ToString() != "")
                {
                    model.F_State = int.Parse(ds.Tables[0].Rows[0]["F_State"].ToString());
                }
                if (ds.Tables[0].Rows[0]["F_GameName"].ToString() != "")
                {
                    model.F_GameName = int.Parse(ds.Tables[0].Rows[0]["F_GameName"].ToString());
                }
                if (ds.Tables[0].Rows[0]["F_GameBigZone"] != null)
                {
                    model.F_GameBigZone = ds.Tables[0].Rows[0]["F_GameBigZone"].ToString();
                }
                if (ds.Tables[0].Rows[0]["F_GameZone"] != null)
                {
                    model.F_GameZone = ds.Tables[0].Rows[0]["F_GameZone"].ToString();
                }
                if (ds.Tables[0].Rows[0]["F_GUserID"] != null)
                {
                    model.F_GUserID = ds.Tables[0].Rows[0]["F_GUserID"].ToString();
                }
                if (ds.Tables[0].Rows[0]["F_GUserName"] != null)
                {
                    model.F_GUserName = ds.Tables[0].Rows[0]["F_GUserName"].ToString();
                }
                if (ds.Tables[0].Rows[0]["F_GRoleID"] != null)
                {
                    model.F_GRoleID = ds.Tables[0].Rows[0]["F_GRoleID"].ToString();
                }
                if (ds.Tables[0].Rows[0]["F_GRoleName"] != null)
                {
                    model.F_GRoleName = ds.Tables[0].Rows[0]["F_GRoleName"].ToString();
                }
                if (ds.Tables[0].Rows[0]["F_Telphone"] != null)
                {
                    model.F_Telphone = ds.Tables[0].Rows[0]["F_Telphone"].ToString();
                }
                if (ds.Tables[0].Rows[0]["F_GPeopleName"] != null)
                {
                    model.F_GPeopleName = ds.Tables[0].Rows[0]["F_GPeopleName"].ToString();
                }
                if (ds.Tables[0].Rows[0]["F_DutyMan"].ToString() != "")
                {
                    model.F_DutyMan = int.Parse(ds.Tables[0].Rows[0]["F_DutyMan"].ToString());
                }
                if (ds.Tables[0].Rows[0]["F_PreDutyMan"].ToString() != "")
                {
                    model.F_PreDutyMan = int.Parse(ds.Tables[0].Rows[0]["F_PreDutyMan"].ToString());
                }
                if (ds.Tables[0].Rows[0]["F_CreatMan"].ToString() != "")
                {
                    model.F_CreatMan = int.Parse(ds.Tables[0].Rows[0]["F_CreatMan"].ToString());
                }
                if (ds.Tables[0].Rows[0]["F_CreatTime"].ToString() != "")
                {
                    model.F_CreatTime = DateTime.Parse(ds.Tables[0].Rows[0]["F_CreatTime"].ToString());
                }
                if (ds.Tables[0].Rows[0]["F_EditMan"].ToString() != "")
                {
                    model.F_EditMan = int.Parse(ds.Tables[0].Rows[0]["F_EditMan"].ToString());
                }
                if (ds.Tables[0].Rows[0]["F_EditTime"].ToString() != "")
                {
                    model.F_EditTime = DateTime.Parse(ds.Tables[0].Rows[0]["F_EditTime"].ToString());
                }
                if (ds.Tables[0].Rows[0]["F_URInfo"] != null)
                {
                    model.F_URInfo = ds.Tables[0].Rows[0]["F_URInfo"].ToString();
                }
                if (ds.Tables[0].Rows[0]["F_Rowtype"].ToString() != "")
                {
                    model.F_Rowtype = int.Parse(ds.Tables[0].Rows[0]["F_Rowtype"].ToString());
                }
                if (ds.Tables[0].Rows[0]["F_CUserName"].ToString() != "")
                {
                    if ((ds.Tables[0].Rows[0]["F_CUserName"].ToString() == "1") || (ds.Tables[0].Rows[0]["F_CUserName"].ToString().ToLower() == "true"))
                    {
                        model.F_CUserName = true;
                    }
                    else
                    {
                        model.F_CUserName = false;
                    }
                }
                if (ds.Tables[0].Rows[0]["F_CPSWProtect"].ToString() != "")
                {
                    if ((ds.Tables[0].Rows[0]["F_CPSWProtect"].ToString() == "1") || (ds.Tables[0].Rows[0]["F_CPSWProtect"].ToString().ToLower() == "true"))
                    {
                        model.F_CPSWProtect = true;
                    }
                    else
                    {
                        model.F_CPSWProtect = false;
                    }
                }
                if (ds.Tables[0].Rows[0]["F_CPersonID"].ToString() != "")
                {
                    if ((ds.Tables[0].Rows[0]["F_CPersonID"].ToString() == "1") || (ds.Tables[0].Rows[0]["F_CPersonID"].ToString().ToLower() == "true"))
                    {
                        model.F_CPersonID = true;
                    }
                    else
                    {
                        model.F_CPersonID = false;
                    }
                }
                if (ds.Tables[0].Rows[0]["F_COther"] != null)
                {
                    model.F_COther = ds.Tables[0].Rows[0]["F_COther"].ToString();
                }
                if (ds.Tables[0].Rows[0]["F_OLastLoginTime"] != null)
                {
                    model.F_OLastLoginTime = ds.Tables[0].Rows[0]["F_OLastLoginTime"].ToString();
                }
                if (ds.Tables[0].Rows[0]["F_OCanRestor"].ToString() != "")
                {
                    if ((ds.Tables[0].Rows[0]["F_OCanRestor"].ToString() == "1") || (ds.Tables[0].Rows[0]["F_OCanRestor"].ToString().ToLower() == "true"))
                    {
                        model.F_OCanRestor = true;
                    }
                    else
                    {
                        model.F_OCanRestor = false;
                    }
                }
                if (ds.Tables[0].Rows[0]["F_OAlwaysPlace"] != null)
                {
                    model.F_OAlwaysPlace = ds.Tables[0].Rows[0]["F_OAlwaysPlace"].ToString();
                }
                if (ds.Tables[0].Rows[0]["F_TToolUsed"].ToString() != "")
                {
                    if ((ds.Tables[0].Rows[0]["F_TToolUsed"].ToString() == "1") || (ds.Tables[0].Rows[0]["F_TToolUsed"].ToString().ToLower() == "true"))
                    {
                        model.F_TToolUsed = true;
                    }
                    else
                    {
                        model.F_TToolUsed = false;
                    }
                }
                if (ds.Tables[0].Rows[0]["F_TUseData"] != null)
                {
                    model.F_TUseData = ds.Tables[0].Rows[0]["F_TUseData"].ToString();
                }
                return model;
            }
            else
            {
                return null;
            }
        }

        /// <summary>
        /// 获得数据列表
        /// </summary>
        public DataSet GetList(string strWhere)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select F_LogID,F_ID,F_Title,F_Note,F_From,F_VipLevel,F_LimitType,F_LimitTime,F_Type,F_State,F_GameName,F_GameBigZone,F_GameZone,F_GUserID,F_GUserName,F_GRoleID,F_GRoleName,F_Telphone,F_GPeopleName,F_DutyMan,F_PreDutyMan,F_CreatMan,F_CreatTime,F_EditMan,F_EditTime,F_URInfo,F_Rowtype,F_CUserName,F_CPSWProtect,F_CPersonID,F_COther,F_OLastLoginTime,F_OCanRestor,F_OAlwaysPlace,F_TToolUsed,F_TUseData ");
            strSql.Append(" FROM T_TasksLog ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            return DbHelperSQL.Query(strSql.ToString());
        }

        /// <summary>
        /// 获得前几行数据
        /// </summary>
        public DataSet GetList(int Top, string strWhere, string filedOrder)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select ");
            if (Top > 0)
            {
                strSql.Append(" top " + Top.ToString());
            }
            strSql.Append(" F_LogID,F_ID,F_Title,F_Note,F_From,F_VipLevel,F_LimitType,F_LimitTime,F_Type,F_State,F_GameName,F_GameBigZone,F_GameZone,F_GUserID,F_GUserName,F_GRoleID,F_GRoleName,F_Telphone,F_GPeopleName,F_DutyMan,F_PreDutyMan,F_CreatMan,F_CreatTime,F_EditMan,F_EditTime,F_URInfo,F_Rowtype,F_CUserName,F_CPSWProtect,F_CPersonID,F_COther,F_OLastLoginTime,F_OCanRestor,F_OAlwaysPlace,F_TToolUsed,F_TUseData ");
            strSql.Append(" FROM T_TasksLog ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            strSql.Append(" order by " + filedOrder);
            return DbHelperSQL.Query(strSql.ToString());
        }

        /*
        /// <summary>
        /// 分页获取数据列表
        /// </summary>
        public DataSet GetList(int PageSize,int PageIndex,string strWhere)
        {
            SqlParameter[] parameters = {
                    new SqlParameter("@tblName", SqlDbType.VarChar, 255),
                    new SqlParameter("@fldName", SqlDbType.VarChar, 255),
                    new SqlParameter("@PageSize", SqlDbType.Int),
                    new SqlParameter("@PageIndex", SqlDbType.Int),
                    new SqlParameter("@IsReCount", SqlDbType.Bit),
                    new SqlParameter("@OrderType", SqlDbType.Bit),
                    new SqlParameter("@strWhere", SqlDbType.VarChar,1000),
                    };
            parameters[0].Value = "T_TasksLog";
            parameters[1].Value = "F_LogID";
            parameters[2].Value = PageSize;
            parameters[3].Value = PageIndex;
            parameters[4].Value = 0;
            parameters[5].Value = 0;
            parameters[6].Value = strWhere;	
            return DbHelperSQL.RunProcedure("UP_GetRecordByPage",parameters,"ds");
        }*/

        #endregion  Method
    }
}

