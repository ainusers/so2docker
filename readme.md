# 情境
java调用c++程序，c++程序在window环境中的格式为.dll，在linux环境中的格式为.so 
(注意：
1. 如果so文件为xxx，那么so文件放在linux的名字必须为libxxx.so
2. 其次java环境下，项目会自动加载一些系统目录下的依赖，如/usr/lib下面的
)

<h2>1. DOckerfile文件使用必备环境</h2>
  1. xxx.jar
  2. Dockerfile
  3. libxxx.so (最好是和Dockerfile文件放置于同一目录下，不然会报找不到so文件)
 
 <h2>2. 打包镜像</h2>
  1. 打包命令 </br>
    docker build -t xxx.jar
  2. 查看镜像 </br>
    docker images
 
 <h2>3. 启动镜像</h2>
  1. 启动命令 </br>
    docker run -dp 7788:7788 xxx.jar

 <h2>4. 拷贝镜像</h2>
  1. 拷贝命令 </br>
    docker save -o xxx.tar 镜像名称
  2. 查看拷贝 </br>
    该命令执行后，会在当前生成一个xxx.tar的镜像文件
    
  <h2>5. 导入镜像</h2>
   1. 导入命令 </br>
     docker load < xxx.tar
   2. 查看镜像 </br>
     docker images