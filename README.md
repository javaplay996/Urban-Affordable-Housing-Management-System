﻿基于Vue.js和SpringBoot的城镇保障性住房管理系统是一个现代化的解决方案，旨在通过技术手段提高住房管理的效率和透明度。

项目录屏：https://www.bilibili.com/video/BV1LC41157vm

### 1. 管理后台

管理后台是为管理员设计的，提供了全面的管理功能，包括但不限于：

#### 1.1 房源类型管理

- **添加/编辑/删除房源类型**：管理员可以定义不同的房源类型，如经济适用房、公租房等。
- **设置属性**：为每种房源类型设置特定的属性，如面积、价格范围等。

#### 1.2 房源信息管理

- **房源录入**：管理员可以添加新的房源信息，包括房源的详细描述、图片、价格等。
- **房源状态更新**：管理房源的可用状态，如待租、已租、维修中等。
- **房源审核**：审核用户提交的房源申请，决定是否批准。

#### 1.3 房源申请管理

- **查看申请**：查看用户提交的房源申请，包括申请者的个人信息和申请的房源类型。
- **审批流程**：设置审批流程，包括审批人、审批时间等。

#### 1.4 住房分配管理

- **分配记录**：记录每次住房分配的详细信息，包括分配的房源、申请人、分配时间等。
- **分配策略**：定义分配策略，如优先级、分配规则等。

#### 1.5 留言板管理

- **查看留言**：管理员可以查看用户在留言板上的留言。
- **回复留言**：管理员可以回复用户的留言，提供必要的信息和帮助。

### 2. 用户网页端

用户网页端是为普通用户设计的，提供了以下功能：

#### 2.1 房源浏览

- **查看房源列表**：用户可以查看所有可用的房源信息。
- **筛选和搜索**：用户可以根据房源类型、价格、位置等条件筛选和搜索房源。

#### 2.2 房源申请

- **在线申请**：用户可以在线提交房源申请，填写必要的个人信息和申请的房源类型。
- **查看申请状态**：用户可以查看自己提交的申请状态，如待审批、已批准、已拒绝等。

#### 2.3 留言板

- **发布留言**：用户可以在留言板上发布留言，提出疑问或反馈。
- **查看回复**：用户可以查看管理员对自己留言的回复。

### 技术栈

- **前端**：Vue.js，用于构建用户界面，提供动态和响应式的用户体验。
- **后端**：Spring Boot，用于构建RESTful API，处理业务逻辑和数据管理。
- **数据库**：通常使用MySQL或PostgreSQL，存储房源信息、用户数据等。
- **安全性**：使用Spring Security进行用户认证和授权。

### 部署和维护

- **部署**：系统可以在云服务器上部署，如AWS、Azure或阿里云。
- **维护**：定期更新系统，修复bug，增加新功能，确保系统的稳定性和安全性。

这个系统的设计旨在提供一个高效、透明和用户友好的住房管理平台，满足不同用户的需求。