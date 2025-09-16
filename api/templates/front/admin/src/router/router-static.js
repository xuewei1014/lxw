import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import rukuxinxi from '@/views/modules/rukuxinxi/list'
    import yuangong from '@/views/modules/yuangong/list'
    import chanpinfenlei from '@/views/modules/chanpinfenlei/list'
    import jieyongxinxi from '@/views/modules/jieyongxinxi/list'
    import jinhuoxinxi from '@/views/modules/jinhuoxinxi/list'
    import chuhuoxinxi from '@/views/modules/chuhuoxinxi/list'
    import shijianjilu from '@/views/modules/shijianjilu/list'
    import cangkuxinxi from '@/views/modules/cangkuxinxi/list'
    import shijianfenlei from '@/views/modules/shijianfenlei/list'
    import chukuxinxi from '@/views/modules/chukuxinxi/list'
    import guihaixinxi from '@/views/modules/guihaixinxi/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '系统首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '系统首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/rukuxinxi',
        name: '入库信息',
        component: rukuxinxi
      }
      ,{
	path: '/yuangong',
        name: '员工',
        component: yuangong
      }
      ,{
	path: '/chanpinfenlei',
        name: '产品分类',
        component: chanpinfenlei
      }
      ,{
	path: '/jieyongxinxi',
        name: '借用信息',
        component: jieyongxinxi
      }
      ,{
	path: '/jinhuoxinxi',
        name: '进货信息',
        component: jinhuoxinxi
      }
      ,{
	path: '/chuhuoxinxi',
        name: '出货信息',
        component: chuhuoxinxi
      }
      ,{
	path: '/shijianjilu',
        name: '事件记录',
        component: shijianjilu
      }
      ,{
	path: '/cangkuxinxi',
        name: '仓库信息',
        component: cangkuxinxi
      }
      ,{
	path: '/shijianfenlei',
        name: '事件分类',
        component: shijianfenlei
      }
      ,{
	path: '/chukuxinxi',
        name: '出库信息',
        component: chukuxinxi
      }
      ,{
	path: '/guihaixinxi',
        name: '归还信息',
        component: guihaixinxi
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '系统首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})
const originalPush = VueRouter.prototype.push
//修改原型对象中的push方法
VueRouter.prototype.push = function push(location) {
   return originalPush.call(this, location).catch(err => err)
}
export default router;
