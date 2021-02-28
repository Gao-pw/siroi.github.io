// head
module.exports = [
  // 注入到页面<head> 中的标签，格式[tagName, { attrName: attrValue }, innerHTML?]
  ['link', { rel: 'icon', href: '/img/favicon.ico' }], //favicons，资源放在public文件夹
  [
    'meta',
    {
      name: 'keywords',
      content: '前/后端技术文档,学习,面试,JavaScript,js,ES6,vue,php,java,css3,html5,Node,git,github,markdown',
    },
  ],
]
