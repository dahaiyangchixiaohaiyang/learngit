// 加载Express模块
const express = require('express');

// 加载MySQL模块
const mysql = require('mysql');

// 加载bodyParser模块
const bodyParser = require('body-parser');

// 加载MD5模块
const md5 = require('md5');


// 创建MySQL连接池
const pool = mysql.createPool({
  host: '127.0.0.1',   //MySQL服务器地址
  port: 3306,          //MySQL服务器端口号
  user: 'root',        //数据库用户的用户名
  password: '',        //数据库用户密码
  database: 'hanfu',    //数据库名称
  connectionLimit: 20, //最大连接数
  charset: 'utf8'      //数据库服务器的编码方式
});

// 创建服务器对象
const server = express();

server.use(bodyParser.urlencoded({
  extended: false
}));

// 加载CORS模块
const cors = require('cors');

// 使用CORS中间件
server.use(cors({
  origin: ['http://localhost:8080', 'http://127.0.0.1:8080']
}));
// 头像上传
//配置multer中间件
const multer = require('multer')
obj = multer.diskStorage({
  destination : function(req, file, cb){ //指定目录
    cb(null, 'upload')
  },
  filename : function (req, file, cb){ // 指定文件名
    // console.log(uuid.v1())
    // console.log(uuid.v4())
    let name = file.originalname
    // name:  abcd.jpg    xxxdfdd.zip
    let ext = name.substr(name.lastIndexOf('.'))
    cb(null, uuid.v4() + ext)
  }
})
const uploadTools = multer({
  storage : obj
})
const uuid = require('uuid')

// 静态资源托管upload目录
server.use(express.static('upload'))

//接收请求头像
server.post('/upload',
  uploadTools.array('uploadFile'), (req, res)=>{
    console.log(req.files)
    console.log(req.files[0].filename)
    res.send({ message: 'ok', code: 200, results: req.files[0].filename })
    // 将图片的路径保存到数据库
})

// 编写一个接口处理/getcode请求,返回svg图片
// 应用session中间件
const session = require('express-session')
server.use(session({
  secret:'mykey',
  secret:'12345',
  cookie: { secure: false},
  resave:false,
  saveUninitialized:true
}))

// 验证码svg图片模块
const svgCap = require('svg-captcha')
var answers = ''
server.get('/getcode',(req,res)=>{
  
  // 生成验证码
  let cap = svgCap.create({
    noise:5
  });
  console.log('生成的验证码是: '+cap.text)
  // 将正确答案存入session
  req.session.answer = cap.text;
  answers = cap.text
  // console.log(req.session.answer)

  res.type('svg');
  res.send(cap.data);  //返回图片
})

// 注册验证码接口
server.post('/getlogin',(req,res)=>{
  // 获取请求参数
  let ucode = req.body.code;
  console.log('用户输入的验证码为：'+ucode)
  console.log(req.session.answer)
  let answer = req.session.answer
  // console.log('正确答案是:'+answer)
  if(ucode==answers){
  res.send('验证成功')
  }else{
  res.send('验证失败')
}
})
// 获取所有文章分类的接口
server.get('/category', (req, res) => {
  // SQL语句以获取文章分类表的数据
  let sql = 'SELECT id,category_name FROM xzqa_category ORDER BY id';
  // 执行SQL语句
  pool.query(sql, (error, results) => {
    if (error) throw error;
    res.send({ message: 'ok', code: 200, results: results });
  });
});
// 获取所有文章分类的接口
server.get('/all', (req, res) => {
  // SQL语句以获取文章分类表的数据
  let sql = 'SELECT * FROM other ';
  // 执行SQL语句
  pool.query(sql, (error, results) => {
    if (error) throw error;
    res.send({ message: 'ok', code: 200, results: results });
  });
});
// 获取导航图片话题的接口
server.get('/other2', (req, res) => {
  // SQL语句以获取文章分类表的数据
  let sql = 'SELECT * FROM other2 ';
  // 执行SQL语句
  pool.query(sql, (error, results) => {
    if (error) throw error;
    res.send({ message: 'ok', code: 200, results: results });
  });
});

// 获取详情页的接口
server.get('/detail', (req, res) => {
  // 接参
  let obj=req.query
  // SQL语句以获取文章分类表的数据
  let sql = 'SELECT * FROM other where lid=? ';
  // 执行SQL语句
  pool.query(sql, [obj.id],(error, results) => {
    if (error) throw error;
    res.send({ message: 'ok', code: 200, results: results });
  });
});
// 获取指定分类下包含文章数据的接口
server.get('/fenye', (req, res) => {
  // 获取客户端传递的cid参数
  let cid = req.query.cid;

  // 获取客户端传递的page参数
  let page = req.query.page? req.query.page : 1;

  // 存储每页显示的记录数
  let pagesize = 8;

  // 通过公式来计算从第几条记录开始返回
  let offset = (page - 1) * pagesize;

  // 用于存储获取到的总记录数
  let rowcount;

  // 获取指定分类下的文章总数
  let sql = 'SELECT COUNT(lid) AS count FROM other WHERE class=?';

  pool.query(sql, [cid], (error, results) => {
    if (error) throw error;
    // 将获取到总记录数赋给rowcount变量
    rowcount = results[0].count;
    /**************************************************/
    // 根据总记录数和每页显示的记录数来计算总页数
    let pagecount = Math.ceil(rowcount / pagesize);

    // 查询SQL语句
    sql = 'SELECT * FROM other WHERE class=? LIMIT ?,?';
    // 执行SQL
    pool.query(sql, [cid, offset, pagesize], (error, results) => {
      if (error) throw error;
      res.send({ message: 'ok', code: 200, results: results, pagecount: pagecount });
    });

    /**************************************************/
  });

});
// 获取视频分类下包含文章数据的接口
server.get('/video', (req, res) => {
  // 获取客户端传递的cid参数
  let cid = req.query.cid;

  // 获取客户端传递的page参数
  let page = req.query.page? req.query.page : 1;

  // 存储每页显示的记录数
  let pagesize = 20;

  // 通过公式来计算从第几条记录开始返回
  let offset = (page - 1) * pagesize;

  // 用于存储获取到的总记录数
  let rowcount;

  // 获取指定分类下的文章总数
  let sql = 'SELECT COUNT(lid) AS count FROM video WHERE class=?';

  pool.query(sql, [cid], (error, results) => {
    if (error) throw error;
    // 将获取到总记录数赋给rowcount变量
    rowcount = results[0].count;
    /**************************************************/
    // 根据总记录数和每页显示的记录数来计算总页数
    let pagecount = Math.ceil(rowcount / pagesize);

    // 查询SQL语句
    sql = 'SELECT * FROM video WHERE class=? LIMIT ?,?';
    // 执行SQL
    pool.query(sql, [cid, offset, pagesize], (error, results) => {
      if (error) throw error;
      res.send({ message: 'ok', code: 200, results: results, pagecount: pagecount });
    });

    /**************************************************/
  });

});

// 获取指定分类下包含文章数据的接口
server.get('/articles', (req, res) => {
  // 获取客户端传递的cid参数
  let cid = req.query.cid;

  // 获取客户端传递的page参数
  let page = req.query.page? req.query.page : 1;

  // 存储每页显示的记录数
  let pagesize = 20;

  // 通过公式来计算从第几条记录开始返回
  let offset = (page - 1) * pagesize;

  // 用于存储获取到的总记录数
  let rowcount;

  // 获取指定分类下的文章总数
  let sql = 'SELECT COUNT(id) AS count FROM xzqa_article WHERE category_id=?';

  pool.query(sql, [cid], (error, results) => {
    if (error) throw error;
    // 将获取到总记录数赋给rowcount变量
    rowcount = results[0].count;
    /**************************************************/
    // 根据总记录数和每页显示的记录数来计算总页数
    let pagecount = Math.ceil(rowcount / pagesize);

    // 查询SQL语句
    sql = 'SELECT id,subject,description,image FROM xzqa_article WHERE category_id=? LIMIT ?,?';
    // 执行SQL
    pool.query(sql, [cid, offset, pagesize], (error, results) => {
      if (error) throw error;
      res.send({ message: 'ok', code: 200, results: results, pagecount: pagecount });
    });

    /**************************************************/
  });

});

// 获取特定文章数据的接口
// server.get('/detail', (req, res) => {
//   //获取地址栏中的id参数
//   let id = req.query.id;

//   // SQL查询
//   let sql = "SELECT r.id,subject,content,created_at,nickname,avatar,article_number FROM xzqa_article AS r INNER JOIN xzqa_author AS u ON author_id = u.id WHERE r.id=?";

//   // 执行SQL查询
//   pool.query(sql, [id], (error, results) => {
//     if (error) throw error;
//     // 返回数据到客户端
//     res.send({ message: 'ok', code: 200, result: results[0] });
//   });

// });

//用户注册接口
server.post('/register', (req, res) => {
  //console.log(md5('12345678'));
  // 获取用户名和密码信息
  let username = req.body.username;
  let password = req.body.password;
  let userimgs = req.body.userimg;
  let userids = req.body.userid;
  console.log(req.body)
  //以username为条件进行查找操作，以保证用户名的唯一性
  let sql = 'SELECT COUNT(id) AS count FROM bly WHERE admins=?';
  pool.query(sql, [username], (error, results) => {
    if (error) throw error;
    let count = results[0].count;
    if (count == 0) {
      // 将用户的相关信息插入到数据表
      sql = 'INSERT bly(admins,mima,userimg,userid) VALUES(?,MD5(?),?,?)';
      pool.query(sql, [username, password,userimgs,userids], (error, results) => {
        if (error) throw error;
        res.send({ message: 'ok', code: 200 });
      })
    } else {
      res.send({ message: 'user exists', code: 201 });
    }
  });
});

// 用户登录接口
server.post('/login', (req, res) => {
  //获取用户名和密码信息
  let username = req.body.username;
  let password = req.body.password;
  console.log(username,password)
  // SQL语句
  let sql = 'SELECT * FROM bly WHERE admins=? AND mima=MD5(?)';
  pool.query(sql, [username, password], (error, results) => {
    if (error) throw error;
    if(results.length == 0){ //登录失败
      res.send({message:'login failed',code:201});
    } else {                 //登录成功
      res.send({message:'ok',code:200,result:results[0]});
    }
  });

});
// // 用户登录接口
// server.post('/login', (req, res) => {
//   //获取用户名和密码信息
//   let username = req.body.username;
//   let password = req.body.password;
//   // SQL语句
//   let sql = 'SELECT id,username,nickname,avatar FROM xzqa_author WHERE username=? AND password=MD5(?)';
//   pool.query(sql, [username, password], (error, results) => {
//     if (error) throw error;
//     if(results.length == 0){ //登录失败
//       res.send({message:'login failed',code:201});
//     } else {                 //登录成功
//       res.send({message:'ok',code:200,result:results[0]});
//     }
//   });

// });

//用户注册接口
// server.post('/register', (req, res) => {
//   //console.log(md5('12345678'));
//   // 获取用户名和密码信息
//   let username = req.body.username;
//   let password = req.body.password;
//   //以username为条件进行查找操作，以保证用户名的唯一性
//   let sql = 'SELECT COUNT(id) AS count FROM xzqa_author WHERE username=?';
//   pool.query(sql, [username], (error, results) => {
//     if (error) throw error;
//     let count = results[0].count;
//     if (count == 0) {
//       // 将用户的相关信息插入到数据表
//       sql = 'INSERT xzqa_author(username,password) VALUES(?,MD5(?))';
//       pool.query(sql, [username, password], (error, results) => {
//         if (error) throw error;
//         res.send({ message: 'ok', code: 200 });
//       })
//     } else {
//       res.send({ message: 'user exists', code: 201 });
//     }
//   });
// });


// 用户修改头像接口（put /edit）
// 地址： /users/edit
server.post('/edit', function (req, res, next) {
  //接收参数
  var obj = req.body;
  console.log(obj);
  pool.query(`update bly set userimg="${obj.userimgs}" where admins="${obj.name}"`, function (err, data) {
    if (err) {
      next(err);
      return;
    }
    if (data.affectedRows > 0) {
      res.send({
        code: 1,
        msg: '修改成功'
      })
    } else {
      res.send({
        code: 0,
        msg: '修改失败'
      })
    }
  })
})
// 指定服务器对象监听的端口号
server.listen(3000, () => {
  console.log('server is running...');
});