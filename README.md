# blue

安卓端代码
https://gitee.com/ooyes_zn/blue_-app/tree/zn

#### 介绍
二手交易平台，可以实现商品图片浏览，聊天社交，生活分享，交易等多种功能

#### 软件架构
软件架构说明

NABCD 分析 

需求 (Need) 
当前大学生群体交易二手闲置商品仍然主要依靠对应的QQ群聊。市场上专门的APP诸如闲鱼等二手买卖平台因商品良莠不齐、买卖方用户信息不透明，而不被学生群体认可。因此，开发一个面向华科在校学生的二手交易平台成为当前的痛点。而且，许多学长学姐在毕业后离开学校，也会产生许多的闲置物品亟待出售，而这些闲置物品构成了一个供需相对独立的二手交易市场，我们需要对供给和需求进行架桥，使得物品各尽其用，发挥其应有的价值。

方法 (Approach) 
我们通过Golang进行后端开发，并将数据库部署至阿里云服务上。用户会先通过注册到app平台上，登录并取得JWT令牌，填写个人信息后即可在软件内发布闲置物品，包括图片、价格、标题及其商品介绍，从而帮助商品推送。商品推送后进入商品流中，并通过使用页面商品的格式，给目标用户进行推荐流。我们实现的平台是给不同华科在校学生，提供直接交流二手商品、交易闲置物品的平台，给不同用户提供交流的桥梁。

收益 (Benefits) 
提供一个便捷的平台，满足用户在二手交易上的需求。学生们在使用完一本教材后，常常需要将其出售，实现闲置物品的循环利用，因此可以给用户提供推广的空间。与此同时，我们也提供了在校学生新的交流空间，通过我们的平台不仅可以实现交易功能，同时也给广大在校学生提供一个社交平台。 

限制 (Constraints) 
我们的平台力求用户群体的纯洁性，减少社会人员混入校内群体市场的现象，保持二手闲置物品市场的独立。同时，数据安全和用户隐私保护是开发过程中的重要考虑因素，需要保证软件功能的安全性和稳定性，实现对大规模并发处理的支持。

交付物 (Deliverables) 
作为完整的二手交易流媒体平台软件系统，我们应在前期在各大华科闲置二手群进行宣传，在社群稳定后可以在B站、小红书、贴吧等进行宣传，吸引更多华科本校的同学加入。我们同时可以设计一定的活动，保留核心用户，扩大社区活力。

