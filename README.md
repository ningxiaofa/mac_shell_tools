# SHELL TOOLS
使用shell脚本来实现一些小工具来提高工作效率.

## 1. 功能特性
- git操作
- dir文件目录
- 历史命令
- ...

## 2. 安装与使用

### 安装方法
直接clone/复制该项目即可.

### 使用方法
- 方式一
  - 直接执行shell脚本
- 方式二:
  - 通过命令别名执行
  - macOS下,通过~/.zshrc
  - 参见 ./.zshrc
- 📢 shell文件要具有可执行权限
  - 命令: chmod +x script.sh
  - 可批量添加权限, 如下:
  ```
    ➜  shell_tools git:(main) ✗ chmod +x ./git/*
    ➜  shell_tools git:(main) ✗ chmod +x ./dir/*
    ➜  shell_tools git:(main) ✗ cd git
    ➜  git git:(main) ✗ ll -a
    total 16
    drwxr-xr-x  4 mac  staff   128B  6 30 09:32 .
    drwxr-xr-x  9 mac  staff   288B  6 30 09:52 ..
    -rwxr-xr-x  1 mac  staff   278B  6 30 09:33 gitac.sh
    -rwxr-xr-x  1 mac  staff   306B  6 30 09:33 gitall.sh
    ➜  git git:(main) ✗ 
  ```

## 3. 技术栈
- shell脚本
- php脚本
- ...

## 4. 目录结构
```
project/
├── src/
│ ├── index.js
│ └── ...
├── test/
│ ├── test.js
│ └── ...
├── README.md
├── package.json
└── ...
```
## 5. 贡献指南
如果想贡献脚本工具等,可发起PR.

## 6. 版权信息
遵守开源协议MIT.