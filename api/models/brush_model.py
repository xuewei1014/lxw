# coding:utf-8
import random
from datetime import datetime
from sqlalchemy import text,TIMESTAMP

from api.models.models import Base_model
from api.exts import db
from sqlalchemy.dialects.mysql import DOUBLE,LONGTEXT
# 个人信息
class yuangong(Base_model):
    __doc__ = u'''yuangong'''
    __tablename__ = 'yuangong'

    __loginUser__='yuangonggonghao'


    __authTables__={}
    __authPeople__='是'
    __authSeparate__='否'
    __thumbsUp__='否'
    __intelRecom__='否'
    __browseClick__='否'
    __foreEndListAuth__='否'
    __foreEndList__='否'
    __isAdmin__='否'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    yuangonggonghao=db.Column( db.VARCHAR(255), nullable=False,unique=True,comment='员工工号' )
    yuangongxingming=db.Column( db.VARCHAR(255), nullable=False, unique=False,comment='员工姓名' )
    mima=db.Column( db.VARCHAR(255), nullable=False, unique=False,comment='密码' )
    xingbie=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='性别' )
    touxiang=db.Column( db.Text,  nullable=True, unique=False,comment='头像' )
    nianling=db.Column( db.Integer,default=0,  nullable=True, unique=False,comment='年龄' )
    dianhuahaoma=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='电话号码' )


class chanpinfenlei(Base_model):
    __doc__ = u'''chanpinfenlei'''
    __tablename__ = 'chanpinfenlei'



    __authTables__={}
    __authPeople__='否'
    __authSeparate__='否'
    __thumbsUp__='否'
    __intelRecom__='否'
    __browseClick__='否'
    __foreEndListAuth__='否'
    __foreEndList__='否'
    __isAdmin__='否'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    chanpinfenlei=db.Column( db.VARCHAR(255), nullable=False, unique=False,comment='产品分类' )


class cangkuxinxi(Base_model):
    __doc__ = u'''cangkuxinxi'''
    __tablename__ = 'cangkuxinxi'



    __authTables__={}
    __authPeople__='否'
    __authSeparate__='否'
    __thumbsUp__='否'
    __intelRecom__='否'
    __browseClick__='否'
    __foreEndListAuth__='否'
    __foreEndList__='否'
    __isAdmin__='否'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    chanpinbianhao=db.Column( db.VARCHAR(255),  nullable=True,unique=True,comment='产品编号' )
    chanpinmingcheng=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='产品名称' )
    chanpinfenlei=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='产品分类' )
    shuliang=db.Column( db.Integer,default=0,  nullable=True, unique=False,comment='数量' )
    jiage=db.Column( db.Integer,default=0,  nullable=True, unique=False,comment='价格' )
    cunfangweizhi=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='存放位置' )
    chanpinxiangqing=db.Column( db.Text,  nullable=True, unique=False,comment='产品详情' )


class jinhuoxinxi(Base_model):
    __doc__ = u'''jinhuoxinxi'''
    __tablename__ = 'jinhuoxinxi'



    __authTables__={}
    __authPeople__='否'
    __authSeparate__='否'
    __thumbsUp__='否'
    __intelRecom__='否'
    __browseClick__='否'
    __foreEndListAuth__='否'
    __foreEndList__='否'
    __isAdmin__='否'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    jinhuobianhao=db.Column( db.VARCHAR(255),  nullable=True,unique=True,comment='进货编号' )
    chanpinmingcheng=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='产品名称' )
    chanpinfenlei=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='产品分类' )
    jinhuoshuliang=db.Column( db.Integer,default=0,  nullable=True, unique=False,comment='进货数量' )
    jiage=db.Column( db.Integer,default=0,  nullable=True, unique=False,comment='价格' )
    zongjiage=db.Column( db.Integer,default=0,  nullable=True, unique=False,comment='总价格' )
    jinhuoshijian=db.Column( db.Date,  nullable=True, unique=False,comment='进货时间' )


class chuhuoxinxi(Base_model):
    __doc__ = u'''chuhuoxinxi'''
    __tablename__ = 'chuhuoxinxi'



    __authTables__={}
    __authPeople__='否'
    __authSeparate__='否'
    __thumbsUp__='否'
    __intelRecom__='否'
    __browseClick__='否'
    __foreEndListAuth__='否'
    __foreEndList__='否'
    __isAdmin__='否'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    chuhuobianhao=db.Column( db.VARCHAR(255),  nullable=True,unique=True,comment='出货编号' )
    chanpinmingcheng=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='产品名称' )
    chanpinfenlei=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='产品分类' )
    chuhuoshuliang=db.Column( db.Integer,default=0,  nullable=True, unique=False,comment='出货数量' )
    jiage=db.Column( db.Integer,default=0,  nullable=True, unique=False,comment='价格' )
    zongjiage=db.Column( db.Integer,default=0,  nullable=True, unique=False,comment='总价格' )
    chuhuoshijian=db.Column( db.Date,  nullable=True, unique=False,comment='出货时间' )


class rukuxinxi(Base_model):
    __doc__ = u'''rukuxinxi'''
    __tablename__ = 'rukuxinxi'



    __authTables__={'yuangonggonghao':'yuangong',}
    __authPeople__='否'
    __authSeparate__='否'
    __thumbsUp__='否'
    __intelRecom__='否'
    __browseClick__='否'
    __foreEndListAuth__='否'
    __foreEndList__='否'
    __isAdmin__='否'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    rukubianhao=db.Column( db.VARCHAR(255),  nullable=True,unique=True,comment='入库编号' )
    chanpinmingcheng=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='产品名称' )
    chanpinfenlei=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='产品分类' )
    shuliang=db.Column( db.Integer,default=0,  nullable=True, unique=False,comment='数量' )
    rukushijian=db.Column( db.Date,  nullable=True, unique=False,comment='入库时间' )
    yuangonggonghao=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='员工工号' )
    yuangongxingming=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='员工姓名' )


class chukuxinxi(Base_model):
    __doc__ = u'''chukuxinxi'''
    __tablename__ = 'chukuxinxi'



    __authTables__={'yuangonggonghao':'yuangong',}
    __authPeople__='否'
    __authSeparate__='否'
    __thumbsUp__='否'
    __intelRecom__='否'
    __browseClick__='否'
    __foreEndListAuth__='否'
    __foreEndList__='否'
    __isAdmin__='否'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    chukubianhao=db.Column( db.VARCHAR(255),  nullable=True,unique=True,comment='出库编号' )
    chanpinmingcheng=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='产品名称' )
    chanpinfenlei=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='产品分类' )
    shuliang=db.Column( db.Integer,default=0,  nullable=True, unique=False,comment='数量' )
    chukushijian=db.Column( db.Date,  nullable=True, unique=False,comment='出库时间' )
    yuangonggonghao=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='员工工号' )
    yuangongxingming=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='员工姓名' )


class jieyongxinxi(Base_model):
    __doc__ = u'''jieyongxinxi'''
    __tablename__ = 'jieyongxinxi'



    __authTables__={'yuangonggonghao':'yuangong',}
    __authPeople__='否'
    __authSeparate__='否'
    __thumbsUp__='否'
    __intelRecom__='否'
    __browseClick__='否'
    __foreEndListAuth__='否'
    __foreEndList__='否'
    __isAdmin__='否'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    jieyongbianhao=db.Column( db.VARCHAR(255),  nullable=True,unique=True,comment='借用编号' )
    chanpinfenlei=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='产品分类' )
    chanpinmingcheng=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='产品名称' )
    jieyongyongtu=db.Column( db.Text,  nullable=True, unique=False,comment='借用用途' )
    shenqingshijian=db.Column( db.Date,  nullable=True, unique=False,comment='申请时间' )
    yuangonggonghao=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='员工工号' )
    yuangongxingming=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='员工姓名' )
    sfsh=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='是否审核' )
    shhf=db.Column( db.Text,  nullable=True, unique=False,comment='审核回复' )


class guihaixinxi(Base_model):
    __doc__ = u'''guihaixinxi'''
    __tablename__ = 'guihaixinxi'



    __authTables__={'yuangonggonghao':'yuangong',}
    __authPeople__='否'
    __authSeparate__='否'
    __thumbsUp__='否'
    __intelRecom__='否'
    __browseClick__='否'
    __foreEndListAuth__='否'
    __foreEndList__='否'
    __isAdmin__='否'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    jieyongbianhao=db.Column( db.VARCHAR(255),  nullable=True,unique=True,comment='借用编号' )
    chanpinmingcheng=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='产品名称' )
    chanpinfenlei=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='产品分类' )
    chanpinzhuangtai=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='产品状态' )
    guihaishijian=db.Column( db.Date,  nullable=True, unique=False,comment='归还时间' )
    yuangonggonghao=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='员工工号' )
    yuangongxingming=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='员工姓名' )


class shijianfenlei(Base_model):
    __doc__ = u'''shijianfenlei'''
    __tablename__ = 'shijianfenlei'



    __authTables__={}
    __authPeople__='否'
    __authSeparate__='否'
    __thumbsUp__='否'
    __intelRecom__='否'
    __browseClick__='否'
    __foreEndListAuth__='否'
    __foreEndList__='否'
    __isAdmin__='否'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    shijianfenlei=db.Column( db.VARCHAR(255), nullable=False, unique=False,comment='事件分类' )


class shijianjilu(Base_model):
    __doc__ = u'''shijianjilu'''
    __tablename__ = 'shijianjilu'



    __authTables__={'yuangonggonghao':'yuangong',}
    __authPeople__='否'
    __authSeparate__='否'
    __thumbsUp__='否'
    __intelRecom__='否'
    __browseClick__='否'
    __foreEndListAuth__='否'
    __foreEndList__='否'
    __isAdmin__='否'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    jilubianhao=db.Column( db.VARCHAR(255),  nullable=True,unique=True,comment='记录编号' )
    shijianmingcheng=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='事件名称' )
    shijianfenlei=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='事件分类' )
    shijianneirong=db.Column( db.Text,  nullable=True, unique=False,comment='事件内容' )
    jilushijian=db.Column( db.Date,  nullable=True, unique=False,comment='记录时间' )
    yuangonggonghao=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='员工工号' )
    yuangongxingming=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='员工姓名' )


