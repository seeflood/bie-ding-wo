# bie-ding-wo
别钉我。
每隔1小时查收一次钉钉，其余时间不会被Ding。

原理是：给系统添加定时任务，关闭钉钉，每隔一段时间在后台开5分钟钉钉


>钉钉的 Ding 和电话就有点像中断，潜在的含义是：“我的事情很重要，你需要放下手里在做的事情来响应我。”——但是就像这篇文章里面提到的，一来 context switch 的代价很高，二来很多中断你的事情也并没有很紧急。我常常在想，能不能有一种 cooperative 而非 preemptive 的协作方式
——某位钉钉用户

## 用法
### 每小时1次钉钉弹窗
```shell
sh add_crontab.sh
```

效果是每小时会弹出个钉钉，你有5分钟的时间处理消息，5分钟后钉钉会被关闭，不会再被Ding打扰。

### 每小时1次在后台打开钉钉
如果你不希望钉钉主动弹窗，可以改成每小时1次在后台打开钉钉
```shell
sh add_crontab.sh b
```

效果是每隔1小时在后台打开钉钉5分钟，其余时间不会被Ding。

### 解释
Q: 有时候自己想主动开钉钉、查收消息怎么办?

A: 用Keyboard Maestro之类的工具设置两个快捷键，一个是打开钉钉，一个是kill钉钉。闲暇时可以用快捷键打开钉钉看消息，看完后用快捷键kill钉钉

Q: 别人电话钉我，怎么办？

A: 钉钉的 Ding 和电话类似于计算机里的中断，电话的优先级更高，不屏蔽高优先级的中断。本工具的目的是屏蔽低优先级的中断、允许高优先级的中断。

