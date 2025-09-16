const base = {
    get() {
        return {
            url : "http://localhost:8080/python1icx6/",
            name: "python1icx6",
            // 退出到首页链接
            indexUrl: ''
        };
    },
    getProjectName(){
        return {
            projectName: "基于Python的仓库管理"
        } 
    }
}
export default base
