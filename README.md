# nginx

git clone 
  將其拉下到本地

cd nginx
  進入資料夾

docker-compose up -d
  下載,創建容器並布屬

docker-compose down
  關掉全部的

docker ps -a 
  查看創立的容器狀態

docker restart *你命名的名稱*
  個別開啟

docker exec CONTAINER_NAME sh -c "mysqldump -uroot -p DB_NAME" > db.dump
  備份資料庫    檔案會儲存到HOST的硬碟上，而不是容器內的硬碟上
-> docker exec nginx-mysql-1 sh -c "mysqldump -uroot -proot mydatabase" > db.dump



docker exec -i CONTAINER_NAME sh -c "mysql -uroot -p DB_NAME" < db.dump
  還原資料庫
-> docker exec -i nginx-mysql-1 sh -c "mysql -uroot -proot mydatabase" < db.dump

