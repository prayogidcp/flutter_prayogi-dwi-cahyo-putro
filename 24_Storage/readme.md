# (24) Storage

### NO. URUT : 1_017FLC_30

### NAMA : PRAYOGI DWI CAHYO PUTRO

## Summary

### **Penyimpanan Local**
Penyimpanan Local diperlukan untuk efisiensi penggunaan data internet, ada beberapa cara pengimplementasian penyimpanan local, contohnya :
- Shared Preferences
    - Menyimpan data yang sederhana
    - penyimpanan dengan format key-value
    - Menyimpan tipe data dasar seperti teks, angka, dan bool
    - Contohny seperti menyimpan data login dan menyimpan riwayat pencarian

    Implementasi Shared Preferences :
    - Menambahkan Package shared_preference
    - Membuat properti baru untuk TextEditingController dan ditambahkan pada TextFormField
    - Membuat method dispose() untuk menghindari kebocoran memori
        ```
        @override
        void dispose(){
            _nameController.dispose();
        super.dispose();
        }
        ```
    - Membuat variabel baru untuk menyimpan SharedPreference dan nilai bool untuk newUser
        ```
        late SharedPreference logindata;
        late bool newUser;
        ```
    - Membuat method baru dengan checkLogin()
        ```
        void checkLogin() async {
            logindata = await SharedPreference.getInstace();
            newUser = logindata.getBool("Login") ?? true;

            if(newUser == false){
                Navigator.pushAndRemoveUntil(
                    context, MaterialPageRoute(
                        builder : (context) => const HomePage()
                    ),
                    (route) => false;
                )
            }
        }
        ```
    - Memanggil method checkLogin() di method initState()
        ```
        @override
        void initState(){
            super.initState();
            checkLogin;
        }
        ```
    - Membuat variabel username baru untuk menampung input dari user pada properi onPressed ElevatedButton
        ```
        ElevatedButton(
            onPressed : (){
                final isValidForm = formKey.curentState!.validate();

                String username = _nameController.text;
                if (isValidForm){
                    Navigator.pushAndRemoveUntil(
                        context, MaterialPageRoute(
                            builder : (context) => HomePage()
                        ),
                        (route) => false;
                    )
                }
            },
            child : Text("Login")
        )
        ```
    - Membuat setBool dan setString baru di dalam blok kode if dan membuat navigasi untuk ke halaman HomePage
        ```
        ElevatedButton(
            onPressed : (){
                final isValidForm = formKey.curentState!.validate();

                String username = _nameController.text;
                if (isValidForm){
                    logindata.setBool("Login", false);
                    logindata.setString("username", username);
                    Navigator.pushAndRemoveUntil(
                        context, MaterialPageRoute(
                            builder : (context) => HomePage()
                        ),
                        (route) => false;
                    )
                }
            },
            child : Text("Login")
        )
        ```
    - Membuat file home_page.dart dan tambahkan UI
        ```
        Scaffold(
            appBar : AppBar(
                title : const Text("Home Page")
            ),
            body : Center(
                Column(
                    children : [
                        const Text("Selamat Datang!"),
                        const SizedBox(
                            height : 20
                        ),
                        const Text("username"),
                        ElevatedButton(
                            onPressed : (){},
                            child : const Text("Logout")
                        )
                    ]
                )
            )
        );
        ```
    - Membuat variabel baru untuk menyimpan SharedPreference dan username
        ```
        late SharedPreference logindata;
        String username = "";
        ```
    - Membuat method baru initial() dan dipanggil pada method initState()
        ```
        @override
        void initState(){
            super.initState();
            intial();
        }

        void initial() async{
            logindata = await SharedPreference.getInstance();
            setSate((){
                username = logindata.getString("username").toString();
            })
        }
        ```
    - Mengganti text "username" menjadi variabel username
    - Menambahkan method setBool dan remove pada ElevatedButton
        ```
        Text(username),
            ElevatedButton(
                onPressed : (){
                    logindata.setBool("login", true);
                    logindata.remove("username");
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(
                            builder : (context) => LoginScreen()
                        )
                    )
                },
                child : const Text("Logout")
        ```

- Local Database (SQLite)
    - Menyimpan dan meminta data dalam jumlah besar pada local device
    - Local Database bersifat Private
    - Menggunakan SQLite database melalui package sqflite
    - SQLite adalah database open source yang mendukung insert, read, update dan remove data

    Implementasi SQLite :
    - Menambahkan package sqflite
    - Membuat/modifikasi model yang sudah ada dan membuat fungsi toMap dan fromMap
        ```
        clas TaskModel{
            late int? id;
            late String taskName;

            TaskModel({
                this. id, required this.taskName
            });

            Map<String, dynamic> toMap(){
                return {
                    "id" : id,
                    "taskName" : taskName
                };
            }

            TaskModel.fromMap(Map<String, dynamic> map){
                id = map["id"];
                taskName = map["taskName"];
            }
        }
        ```
    - Membuat folder baru dengan nama helper dan buat file database_helper.dart
    - Membuat class baru DatabaseHelper dan tambahkan factory constructor
        ```
        class DatabaseHelper{
            static DatabaseHelper? _databaseHelper;

            DatabaseHelper._internal(){
                _databaseHelper = this;
            }
            factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._internal();
        }
        ```
    - Membuat objek database
        ```
        class DatabaseHelper{
            static DatabaseHelper? _databaseHelper;

            statistic late Database _database;
            DatabaseHelper._internal(){
                _databaseHelper = this;
            }
            factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._internal();

            Future<Database> get database async {
                _database = await _initializeDb();
                return _database;
            }
        }
        ```
    - Membuka koneksi ke database dan membuat tabelny
        ```
        final String _tableName = "tasks";

        Future<Database> _initializeDb() async {
            var db = openDatabase(
                join(await getDatabasePath(), "task_db.db"), 
                onCreate : (db, version)async{
                    await db.execute(
                        '''CREATE TABLE $_tableName(
                            id INTEGER PRIMARY KEY,
                            taskName TEXT    
                        )''',
                    );
                },
                version : 1
            );
            return db;
            }
        ```
    - Membuat method untuk menambahkan data ke tabel
        ```
        Future<void> insertTask(TaskModel taskModel) async{
            final Database db = await dabase;
            await db.insert(_tableName, taskModel.toMap());
        }
        ```
    - Membuat method untuk membaca data
        ```
        Future<List, <TaskModel>> getTask() async {
            final Database db = await database;
            List<Map<String, dynamic>> result = await db.query(_tableName);
            return result.map((e) => TaskModel.fromMap(e)).toList();
        }
        ```
    - Membuat method untuk mengambil data dengan id 
        ```
        Future<TaskModel> getTaskById(int id) async {
            final Database db = await database;
            List<Map<String, dynamic>> result = await db.query(_tableName),
            where : "id = ?",
            whereArgs : [id],
            );
            return result.map((e) => TaskModel.fromMap(e)).first;
        }
        ```
    - Membuat method untuk memperbarui data
        ```
        Future<void> updateTask(TaskModel taskModel) async {
            final db = await database;
            await db.update(
                _tableName,
                taskModel.toMap(),
                where : "id = ?",
                whereArgs : [taskModel.id],
            );
        }
        ```
    - Membuat method untuk menghapus data
        ```
        Future<void> deleteTask(int id) async {
            final db = await database;
            await db.delete(
                _tableName,
                where : "id = ?",
                whereArgs : [id],
            );
        }
        ```
    - Membuat file baru db_manager.dart di folder models
    - Membuat constructor untuk membuat instance kelas DatabaseHelper
        ```
        class DbManager extends ChangeNotifier{
            List<TaskModel> _taskModels = [];
            late DatabaseHelper _dbHelper;

            List<TaskModel> get taskModel => _taskModels;

            DbManager(){
                _dbManager = DatabaseHelper();
                _getAllTask();
            }
        }
        ```
    - Membuat method _getAllTask
        ```
        void _getAllTask() async {
            _taskModels = await _dbHelper.getTask();
            notifyListeners();
        }
        ```
    - Membuat method addTask, getTaskById, updateTask, dan deleteTask
        ```
        Future<void> addTask(TaskModel taskModel) async{
            await _dbHelper.insertTask(taskModel);
            _getAllTask();
        }

        Future<TaskModel> getTaskById(int id) async {
            return await _dbHelper.getTaskById(id);
        }

        void updateTask(TaskModel taskModel) async {
            await _dbHelper.updateTask(taskModel);
            _getAllTask();
        }
        void deleteTask(int id) async {
            await _dbHelper.deleteTask(id);
            _getAllTask();
        }
        ```
    - Mengganti provider menjadi DbManger
        ```
        MultiProvider(
            providers : [
                ChangeNotifierProvider(
                    create : (context) => DbManager(),
                )
            ]
        )
        ```
    - Mengganti Consumer yang ada di buildTaskScreen jadi DbManager
        ```
        Widget buildTaskScreen(){
            return Consumer<DbManager>(
                builder : (context, manager, child){
                    if (manager.taskModel.isNotEmpty){
                        return TaskListScreen(
                            manager : manager
                        );
                    } else {
                        return const EmptyTaskScreen();
                    }
                }
            )
        }
        ```
    - Mengganti kode yang ada di onPressed FloatingActionButton
        ```
        FloatingActionButton(
            child : const Icon(Icons.add),
            onPressed : (){
                Navigator.push(
                    context, MaterialPageRoute(
                        builder : (context) => const TaskItemScreen()
                    )
                )
            }
        )
        ```
    - Menghapus properti onCreate dan membuat property baru taskModel
    - Menhapus properti _taskName, buat properti baru _isUpdate dan ganti kode pada blok method initState()
    - Mengganti kode yang ada di blok kode onPressed buildButton()
    - Mengganti TaskManager menjadi DbManager
    - Membungkus ListView.separated dengan Consumer<DbManager>(). dan memindahkan variabel taskItems di dalam Consumer
    - Menhapus key yang ada di widget TaskItemCard. Dan ganti index untuk deletedTask menggunakan item.id!
    - Bungkus widget TaskItemCard dengan widget InkWell dan gunakan onTap dengan fungsi async. di dalam blok fungsinya tambahkan variabel selectedTask yang menampung item.id dan tambahkan navigasi ke TaskItemScreen
