using System;
using System.Data;
namespace WSS.IDAL
{
	/// <summary>
	/// 接口层部门表
	/// </summary>
	public interface IDepartment
	{
		#region  成员方法
		/// <summary>
		/// 得到最大ID
		/// </summary>
		int GetMaxId();
		/// <summary>
		/// 是否存在该记录
		/// </summary>
		bool Exists(int F_DepartID);
		/// <summary>
		/// 增加一条数据
		/// </summary>
		int Add(WSS.Model.Department model);
		/// <summary>
		/// 更新一条数据
		/// </summary>
		bool Update(WSS.Model.Department model);
		/// <summary>
		/// 删除一条数据
		/// </summary>
		bool Delete(int F_DepartID);
		bool DeleteList(string F_DepartIDlist );
		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		WSS.Model.Department GetModel(int F_DepartID);
		/// <summary>
		/// 获得数据列表
		/// </summary>
		DataSet GetList(string strWhere);
		/// <summary>
		/// 获得前几行数据
		/// </summary>
		DataSet GetList(int Top,string strWhere,string filedOrder);
		/// <summary>
		/// 根据分页获得数据列表
		/// </summary>
		//DataSet GetList(int PageSize,int PageIndex,string strWhere);
		#endregion  成员方法
	} 
}
