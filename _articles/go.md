---
layout: post
title: go语言学习总结
description: 关于go语言编程相关的的一些学习和总结
date: 2022-10-01 09:01:01
updatedate: 2024-05-29 10:11:50
---
- [命令](#命令)
- [Golang基础](#golang基础)
- [Go 语言基础语法](#go-语言基础语法)
- [Go 语言数据类型](#go-语言数据类型)
- [Go 语言变量](#go-语言变量)
- [Go 语言常量](#go-语言常量)
- [Go 语言运算符](#go-语言运算符)
- [Go 语言条件语句](#go-语言条件语句)
- [Go 语言循环语句](#go-语言循环语句)
- [Go 语言函数](#go-语言函数)
- [Go 语言变量作用域](#go-语言变量作用域)
- [Go 语言数组](#go-语言数组)
- [Go 语言指针](#go-语言指针)
- [Go 语言结构体](#go-语言结构体)
- [Go 语言切片(Slice)](#go-语言切片slice)
- [Go 语言范围(Range)](#go-语言范围range)
- [Go 语言Map(集合)](#go-语言map集合)
- [Go 语言递归函数](#go-语言递归函数)
- [Go 语言类型转换](#go-语言类型转换)
- [Go 语言接口](#go-语言接口)
- [Go 错误处理](#go-错误处理)
- [Go 并发](#go-并发)
- [Go 语言开发工具](#go-语言开发工具)


# 命令

常用的Go工具命令 Go附带了一下有用的命令，这些命令可以简化开发的过程。命令通常包含的IDE中，从而使工具在整个开发环境中保持一致。
go run 命令 go run命令实在开发过程中执行的最常见的命令之一，该命令将编译并执行main包（即程序的入口点）。
例如，在Go工作目录中创建main.go，将一下代码保存到main.go中。
package main import "fmt"
func main() { //这是一个注释 fmt.Println("Hello World!! By Go") } 在终端下执行go run main.go。会在命令行上打印 Hello World!! By Go
go build命令 go run编译并执行了我们编写的代码，但是未生成独立的二进制文件。所以这里go build就有了用武之地。
go build命令将编译我们的应用程序，包括我所有的包及其依赖项，而无需安装。这个命令会在从磁盘上生成编译后的二进制文件，但是不会执行这个文件。生成的文件遵循合理的命名约定，但是可以通过-o output命令选项更改即将创建二进制文件的名称。
对于上一个示例，在终端输入go build main.go，将会在你的目录下创建一个mian.exe的可执行文件。运行该mian.exe同样会在终端上打印Hello World!! By Go
默认情况下，生成的二进制文件包含调试信息和字符表。这会使文件变大。为减小文件所占用的空间，可以在构建过程中使用一下选项，从而从二进制文件中剥离那些信息。例如go build -ldflags "-w -s"可以使文件大小减少30%左右。
交叉编译 go build命令非常适合在当前系统或相同架构下运行二进制文件，同时Go提供了交叉编译（cross-compiling）来创建在不同架构上的二进制文件。
要进行交叉编译，需要设置好约束限制。就是将有关要为其编译代码的操作系统和系统架构的信息传递给build的一种方法。这些约束包括GOOS（用于操作系统）和GOARCH（用于架构）。
可以通过三种方式引入编译约束限制：命令行、代码注释、或文件拓展名约定。
//如下为使用命令行来设置约束 GOOS="linux" GOARCH="amd64" go build main.go go doc命令 go doc命令可以让你查询有关包、函数、方法或变量的文档。该文档作为注释嵌入代码中。
go doc命令的输出信息是从代码的注释中获取的，只要对包、函数、方法和变量注释地足够充分，就可以通过go doc命令来查询文档。
//如下为使用doc命令查询函数fmt.Println()的详细信息 go doc fmt.Println //输出如下 func Println(a ...interface{}) (n int, err error) Println formats using the default formats for its operands and writes to standard output. Spaces are always added between operands and a newline is appended. It returns the number of bytes written and any write error encountered. go get命令 当在开发Go程序时需要第三方包，要获取包的源代码，就需要用到go get命令。
即便你在程序中已经导入了第三方包，但是你无法访问该包。首先需要运行go get命令来下载第三方包。下载后的包将存放在\$GOPATH/src目录下。
go fmt命令 go fmt命令可以自动格式化代码。使用该命令会强制使用正确的换行、缩进和大括号对其来设置代码样式。
golint和go vet命令 go fmt会更改代码的语法样式，而golint会报告错误样式，例如缺少注释、不遵循约定的变量名、无用的类型规范等。注意，golint是独立的工具而不是Go主程序的命令。
使用go vet会检查代码并使用启发式方法来识别可疑的构造。go vet命令尝试确定编译器可能会忽略的问题，其中一些可能是合法的错误。
其他的命令工具 go clean命令会删除掉执行其它命令时产生的一些文件和目录。
go test命令用于对Go语言编写的程序进行测试。
go list命令的作用是列出指定的代码包的信息。
go fix会把指定代码包的所有Go语言源码文件中的旧版本代码修正为新版本的代码。
go tool pprof命令来交互式的访问概要文件的内容
go install用于编译并安装指定的代码包及它们的依赖包。

# Golang基础

配置开发环境 开始使用Go，首先需要一个完善的开发环境。
下载并安装Go 安装包的下载地址为：<https://golang.org/dl/>
go语言中文社区下载：<https://studygolang.com/dl>
Windows系统安装后，可以在命令行输入 go命令来查看是否正确安装，并使用go version来查看安装版本。
image
hello.go package main
import ( "fmt" )
func main() { var x string = "Hello World!! By Go" fmt.Println(x)
} 使用go命令go run hello.go运行上述代码，输出结果如下：
PS E:\WorkSpace\gogo run .\hello.go Hello World!! By Go Go语言代码结构 Go语言的基础组成部分有：包声明、引入包、函数、变量、语句、注释。
上述代码的第一行packaga main是包声明，必须在源文件中的非注释第一行指明这个文件属于哪个包。
关于包名：
go的package不局限一个文件，可以由多个文件组成 go不要求package的和所在目录名相同，但最好是保持相同，否则容易引起歧义。 每个子目录中只能存在一个package，否则编译报错 每一个package下的多个文件中只能有一个main()函数 每个go程序都必须包含一个package main，且package main必须包含一个func main 下一行代码中import "fmt"是包的引入，这里导入Go程序所需要的fmt包，fmt包实现了格式化IO（输入/输出）的函数
单行导入
import "pkg1" import "pkg2" 多行导入
import( "pkg1" "pkg2" ) import "fmt" //最常用的导包方式 import "./pkg1" //导入同一目录下pkg1包中的内容 import f "fmt" //导入fmt，并重命名为f；可以用于区分同名包，或简化较长包名 import . "fmt" //导入fmt，启用别名"."，这样可以直接引用包把内容，不需要再添加fmt。例如，fmt.Println() --写为--Printlf() import \_ "pkg1" //匿名导入包，只导入包结构以及init()函数，但不使用包内类型和数值。且在import时就执行pkg1包的init()函数。 下一行的func main()是程序开始执行的函数。main函数是每一个可执行程序必须包含的，一般来说都是会在启动后第一个执行的函数（如果有init()函数则会先执行该函数）
下一行的//这是一个注释为注释内容，在程序执行时会忽略。
下一行代码声明了一个string型变量。
下一行fmt.Println()，这是一条代码语句，会将字符串输出到带控制台，并自动换行。
Go语言基础语法 Go行分隔符 在Go程序中，一行代码代表一行语句，每个语句也不需要以;结尾；如果将多条语句写在同一行，则必须使用；人为区分，但是一般也不推荐这种做法。
注释 注释不会被编译，每一个包都应该有一个注释。
//单行注释是最常见的注释形式，可以在任何地方的开头使用单行注释
/\* 多行注释或块注释 \*/ 关键字 下面列举了 Go 代码中会使用到的 25 个关键字或保留字：
break default func interface select case defer go map struct chan else goto package switch const fallthrough if range type continue for import return var 除了以上介绍的这些关键字，Go 语言还有 36 个预定义标识符：
append bool byte cap close complex complex64 complex128 uint16 copy false float32 float64 imag int int8 int16 uint32 int32 int64 iota len make new nil panic uint64 print println real recover string true uint uint8 uintptr 标识符 标识符是用来命名变量、类型等程序实体。与其他变成语言一样，一个标识应符由一个或多个字母A~Z和a~z数字0~9、下划线\_组成。标识符的第一个字符不能为数字。标识符不能为关键字。
name age user\_name user\_123 a \_user 这些都是有效的标识符 变量 变量声明 变量的声明方式有两种，并且对Go语言，变量的声明要把变量类型放在变量名之后的。例如：
//Go语言的变量声明必须用空格隔开 //方式一 var x string = "hello world" var z int = 12 //方式二 x := string("hello world") z := int(12) 但是Go语言也可以不指定数据类型，系统将会根据赋值自动判断数据类型。例如：
var x = "hello world" z := int(12) 在上述第一个示例中，使用关键字var定义名为x的变量hell world。Go会隐式推断x为字符串。在第二个示例中，使用:=运算符定义一个名为z的新变量，并赋值为整数12。
注意，当你没有声明变量类型时，你就必须接受系统自动推断的类型。另外当你的便令已经被声明之后，是不可以使用:=再赋值的，想要修改已经赋值变量的值需要用=。最后:=不可以用来给全局变量赋值
多变量的声明 //类型相同多个变量，非全局变量 var name1,name2,name3 type name1,name2,name3 = v1,v2,v3 //也可以不指定变量类型 var name1,name2,name3 = v1,v2,v3
//因式分解形关键字的写法一般用于声明全局变量 var ( name type1 = value1 age type2 = value2
) 变量作用域 Go使用大写字母确定作用域，以大写字母开头的变量可以在包外部导出并访问（类似于java中的public），而小写字母开头的变量都是私有的，只能活在包内部访问。
常量 相同的常量的定义也需要将类型放在标识符之后。常量的定义格式：
const 常量名 \[type] = value 同样，对于常量你也可以省略类型\[type]，编译器会根据值推断其类型。例如：
//显式定义 const a string = "hello" //隐式定义 const a = "hello"
Go语言基础三：基本数据类型和运算符 Go语言数据类型 与其他编程语言一样，Go语言提供了各种数据类型，可分为基本的数据类型和复杂的数据类型。基本的数据类型就是基本的构造块，例如字符串、数字和布尔值。复杂的数据类型是用户自己定义的结构，由一种或者多种基本的数据类型组成。
基本的数据类型 基本的数据类型包括 bool、strin、int、int8、int16、int32、int64、uint、uint8、uint16、uint32、uint64、uintptr、byte、rune、float32、float64、complex64、complex128。
整型 类型名 字节数 int8 有符号 8 位整型 (-128 ~127) int16 有符号 16 位整型 (-32768 ~32768) int32 有符号 32 位整型 (-2147483648 ~2147483647) int64 有符号 64 位整型 (-9223372036854775808 ~9223372036854775807) uint8 无符号 8 位整型 (0 ~255) uint16 无符号 16 位整型 (0 ~65535) uint32 无符号 32 位整型 (0 ~4294967295) uint64 无符号 64 位整型 (0 \~18446744073709551615) rune类型是Unicode字符类型，和int32类型等价，通常用于表示一个Unicode码点，rune可以和int32可以互换。
byte是unit8类型的等价类型，byte一般用于强调数值是个原始的数据，而不是一个小的整数。
uinptr是一种无符号的整数类型，用于存放指针，没有指定具体的字节大小，但是足以容纳指针。
uinptr类型只有在底层编程才需要，特别是Go语言和C语言函数库或操作系统接口交互的地方。
浮点数 Go语言提供了两种精度的浮点数：float32、float64
这些浮点数类型的取值范围可以从很微小到很巨大。浮点数的取值范围极限值可以在math包中找到。math.MaxFloat32、mathMaxFloat64分别表示两种浮点数类型的取值范围。
类型名 字节数 float32 IEEE-754 32位浮点型数 float64 IEEE-754 64位浮点型数 复数 Go语言提供了两种精度的复数类型：complex64、complex128，分别对应float32、float64两种浮点数类型。
直白地说：complex64 = float32实部+虚部、complex128 = float64实部+虚部
内置函数complex用于构建复数，内置函数real、imag函数分别返回复数的实部和虚部。
类型名 字节数 complex64 32 位实数和虚数 complex64 64 位实数和虚数 布尔型 一个布尔型的值只有两种：true、false。当声明一个布尔型变量但没有赋值时，默认值为false。
布尔值并不会隐式转换为数字值0或1，如果想实现转换，必须由一个if语句辅助转换。
字符串 子字符串 子字符串：操作s\[i\:j]基于对原始字符串s的第i个字节开始到第j个字节（并不包含j本身，并且从0开始）生成一个新的字符串。
无论i或者j都可以被省略不写，当i被省略时，代表从0开始；当j被省略时，代表至最后一位结束。例如：
package main import "fmt" func main(){ var s string = "0123456" s\_1, s\_2, s\_3 := s\[0:6], s\[:6], s\[0:] fmt.Println(s\_1) fmt.Println(s\_2) fmt.Println(s\_3) } 输出结果如下
012345 //不包含第6位 012345 //省略i则代表从0开始 0123456 //省略j则代表至最后一位结束 字符串内符号含义 符号 含义 \a 响铃 \b 退格 \f 换页 \n 换行 \r 回车 \t 制表符 \v 垂直制表符 ' 单引号 (只用在 ''' 形式的rune符号面值中) " 双引号 (只用在 "..." 形式的字符串面值中) \ 反斜杠 Go语言的运算符 Go语言内置的运算符有：
算术运算符 关系运算符 逻辑运算符 位运算符 赋值运算符 其他运算符 运算符优先级表 对于相同优先级的运算符的运算方向均为从左至右。你也可以通过括号来提升运算符的优先级。
由上至下优先级由高至低
优先级 运算符 1 \* / % << >& &^ 2 + - | ^3 == != < <= >= 4 && 5 || 运算符表 运算符 描述

*   相加
*   相减
*   相乘 / 相除 % 求余 ++(只有a++没有++a) 自增 -- (只有a--没有--a) 自减 == 检查两个值是否相等，如果相等返回 True 否则返回 False。 != 检查两个值是否不相等，如果不相等返回 True 否则返回 False。
    检查左边值是否大于右边值，如果是返回 True 否则返回 False。 < 检查左边值是否小于右边值，如果是返回 True 否则返回 False。 = 检查左边值是否大于等于右边值，如果是返回 True 否则返回 False。 <= 检查左边值是否小于等于右边值，如果是返回 True 否则返回 False。 && 逻辑 AND 运算符。 如果两边的操作数都是 True，则条件 True，否则为 False。 || 逻辑 OR 运算符。 如果两边的操作数有一个 True，则条件 True，否则为 False。 ! 逻辑 NOT 运算符。 如果条件为 True，则逻辑 NOT 条件 False，否则为 True。 & 按位与运算符"&"是双目运算符。 其功能是参与运算的两数各对应的二进位相与。 | 按位或运算符"|"是双目运算符。 其功能是参与运算的两数各对应的二进位相或 ^按位异或运算符"^"是双目运算符。 其功能是参与运算的两数各对应的二进位相异或，当两对应的二进位相异时，结果为1。 << 左移运算符"<<"是双目运算符。左移n位就是乘以2的n次方。 其功能把"<<"左边的运算数的各二进位全部左移若干位，由"<<"右边的数指定移动的位数，高位丢弃，低位补0。
    右移运算符">>"是双目运算符。右移n位就是除以2的n次方。 其功能是把">>"左边的运算数的各二进位全部右移若干位，">>"右边的数指定移动的位数。 = 简单的赋值运算符，将一个表达式的值赋给一个左值 += 相加后再赋值 -= 相减后再赋值 \*= 相乘后再赋值 /= 相除后再赋值 %= 求余后再赋值 <<= 左移后赋值 = 右移后赋值 &= 按位与后赋值 ^= 按位异或后赋值 |= 按位或后赋值 & 返回变量存储地址
*   指针变量。
    Go语言基础四：数组和指针 GO语言中数组和指针 数组 Go语言提供了数组类型的数据结构。
    数组是同一数据类型元素的集合。这里的数据类型可以是整型、字符串等任意原始的数据类型。数组中不允许混合不同类型的元素。（当然，如果是interface{}类型数组，那么一个数组元素可以包含任意数据类型。）
    数组的每一个元素都是类型相同、长度固定且已经编号的，所以数组元素可以通过索引来读取（或者修改）。索引从0开始，第一个元素的索引为0，第二个元素的索引为1，以此类推。
    image
    数组的声明 Go语言数组的声明需要指定元素类型以及元素的个数。数组是一定要声明这个size的。语法格式如下：
    var array\_name \[Size] array\_type 以上为一维 数组的定义方式。例如下面定义了数组a的长度为10类型为int。
    var a \[10] int 数组的初始化
    //声明并初始化 var a = \[3]int{1,2,3} //也可以通过 := 在声明数组时快速初始化数组 a := \[3]int{1,2,3} 如果数组的长度不确定，你可以使用...来代替数组的长度，编译器会自动根据你的声明来推断数组的长度。但是要记住，使用...代替长度，必须在声明数组的同时初始化数组。例如
    var a = \[3]int{1,2,3} //或者 a := \[...]int{1,2,3} 如果数组已经声明过了，可以根据数组的索引给上述数组进行初始化。例如
    var a \[3]int //int array with length 3 a\[0] = 12 // array index starts at 0 a\[1] = 13 a\[2] = 14 在你没有给数组赋值或者只给个别元素赋值时，数组中所有没有被赋值的元素都被自动赋值为数组类型的零值。\*\*上述数组中，a是一个整型数组，所以a的每一个元素都赋值为0。
    package main
    import "fmt"
    func array() { var a \[3]int //int array with length 3 a\[0] = 12 // array index starts at 0

```go
fmt.Println(a)
```

} 上述代码的输出结果为 \[12 0 0]
额外说明一下，数组的大小是类型的一部分。因此\[5]int和\[25]int 是不同类型。并且数组是不能调整大小的。
数组是值类型 Go语言中，数组是值类型而不是引用类型。这意味着将数组赋值给另一个新的变量时，该变量会得到一个原始数组的副本。如果对变量进行更改，是不会影响到原始数组。
package main
import "fmt"
func main() { a := \[...]string{"hello", "world"} b := a b\[0] = "你好" fmt.Println("a is ", a) fmt.Println("b is ", b) } 上述代码中对新数组b进行了修改，这个修改不会出现在数组a中。程序的输出结果为
a is \[hello world] b is \[你好 world] 数组的长度 通过将数组作为参数传递给len()函数，可以得到数组的长度。
package main
import "fmt"
func main() { a := \[...]int{5, 89, 21, 78} fmt.Println("length of a is",len(a)) } 上述程序的输出为length of a is 4
数组的迭代 for循环 使用for循环可以用来遍历数组的元素。
package main import "fmt" func array() { a := \[...]int{5, 89, 21, 78} for i := 0; i < len(a); i++ { fmt.Printf("数组的第%d个元素为%d ", i, a\[i]) } } 上述代码通过for循环遍历数组的元素，从索引0到到len(a)-1（因为索引从0开始么）。
程序的输出结果为数组的第0个元素为5 数组的第1个元素为89 数组的第2个元素为21 数组的第3个元素为78
range迭代数组 Go语言中提供了一种更好、更简洁的写法，就是通过for循换的range来遍历数组。
range关键字用于for循环中迭代数组、切片、通道、或者集合。在数组和切片中，它返回元素的索引和对应的值，在集合中返回key-value对的ket值。
package main import "fmt" func array() {
for i, v := range a {//range返回元素对应的索引和值
fmt.Printf("数组的第 %d 个元素为 %d ", i, v)
}
} 如果只希望得到元素的值并忽略索引，可以通过用 \_ 空白标识符，替换原本用来接收索引值的变量，以此来忽略
for \_, v := range a { // 忽略了索引 } 指针 指针指向内存中的特定区域并允许检索存储在其中的值。与C语言一样，可以使用运算符&获取某个变量在内存中的地址并使用运算符\*根据地址取值。
指针的声明 一个指针变量指向了一个值的内存地址。与变量和常量类似，在使用指针前，需要声明指针。
//varName是指针变量的变量名，varType为指针类型，\*号用于指定变量作为一个指针。 //\*varType是指向varType类型值的指针变量类型。 var varName \*varType 指针声明的示例
package main import "fmt" func main() { b := 1 var a \*int = \&b fmt.Printf("a的类型是%T\n",a) fmt.Println("b的地址为",a) } 输出结果
a的类型是\*int b的地址为 0xc000018030
Program exited. Go中的空指针 指针的零值是nil，如果只声明而不初始化值，那么这个其值为零值即nil。
使用new()函数创建指针 Go同时还提供了一个方便的函数new()来创建指针。new()函数将一个数据类型作为参数，并返回一个指向参数类型的指针变量。并且这个指针变量指向的值被赋为零值。
package main import "fmt" func main() {\
//size 就是一个int型指针变量 size := new(int) fmt.Printf("Size value is %d, type is %T, address is %v\n", \*size, size, size) \*size = 85 fmt.Println("New size value is", *size) } 解除消指针的引用 解除指针的引用就是说访问指针所指向的变量的值。例如a为指针变量，那么解除指针引用的语法为*a。
我们也可以根据指针来修改变量。
package main import "fmt" func main() { a := 1 b := \&a c := b fmt.Println("a的地址为：",b) fmt.Println("a的值为：",\*b) \*c++ fmt.Println("a的值为：",a) } 输出结果
a的地址为： 0xc000018030 a的值为： 1 a的值为： 2 在上述代码中，我们首先是定义了一个整型变量a，并将其地址赋值给指针变量b，同时通过b将a的地址赋给c。最后通过输出结果可以看到，我们可以通过指针来修改变量的值。
注意：Go语言并不支持指针运算
Go语言基础五：引用类型-切片和映射 切片 Go的数组长度不可以改变，在某些特定的场景中就不太适用了。对于这种情况Go语言提供了一种由数组建立的、更加灵活方便且功能强大的包装（Wapper），也就是切片。与数组相比切片的长度不是固定的，可以追加元素。
切片本身不拥有任何数据，它们只是对现有数组的引用。
切片的定义 可以声明一个未指定大小的数组来定义切片：
var slice\_name \[]type //type用来指定切片内元素的数据类型 切片不需要声明长度。还可以使用make()函数来创建切片：
var slice\_name \[]type = make(\[]type, len) //len是切片的长度 slice\_name := make(\[]type,len) //make()函数定义时，也可以指定切片的容量，其中capacity为可选参数 make(\[]type, length, capacity) 切片的初始化 直接初始化 直接初始化一个切片，\[]表示是切片类型，{1,2,3}初始化值依次是1,2,3，对于下面这个切片，初始长度为3容量为3
slice\_name := \[]int {1,2,3} 引用数组或切片 //初始化切片slice，是数组array的引用 slice := array\[:] //将array中从下标startIndex到下标endIndex-1下的元素创建为一个新的切片 slice := array\[startIndex\:endIndex] //endIndex为空时，从索引为的startIndex元素到最后一个元素 slice := array\[startIndex:] //startIndex空时，从第一个元素（索引为0）到索引为endIndex-1的元素 slice := array\[:endIndex] //通过切片s初始化切片s1 s1 := s\[startIndex\:endIndex] make()函数 使用make()函数创建切片时，默认情况下切片的元素的值为0。
切片的修改 切片它自己不拥有任何数据，他只是对底层数组的一种表示，对切片所做的任何修改都会反映在底层的数组当中。
当多个切片共用相同的底层数组时，每个切片的修改都将会反映在这个数组中。
package main import ( "fmt" ) func main() { arr := \[3]int {1,2,3} slice\_1 := arr\[:] slice\_2 := arr\[:] fmt.Println("原始数组",arr) slice\_1\[1] = 10 fmt.Println("修改slice\_1之后的数组",arr) slice\_2\[2] = 20 fmt.Println("修改slice\_2之后的数组",arr) } 运行结果
原始数组 \[1 2 3] 修改slice\_1之后的数组 \[1 10 3] 修改slice\_2之后的数组 \[1 10 20] 从输出中可以清晰的看出，对切片的修改会反映在底层数组当中；当多个切片共享一个底层数组时，每个切片所作出的修改都会反映在数组中。
切片的长度和容量 切片的长度是切片中的元素数。切片的容量是从创建切片的索引开始的底层数组中的元素数。
可以内置函数len()测量切片的长度，内置函数cap()获取切片的容量。
package main import ( "fmt" ) func main() { arr := \[...]string{"A","B","C","D","E","F"} s := arr\[1:3] fmt.Printf("切片的长度为%d，切片的容量为%d",len(s),cap(s)) s = s\[:1] fmt.Printf("切片的长度为%d，切片的容量为%d",len(s),cap(s))
} 输出结果为：
切片的长度为2，切片的容量为5 在上述程序中，s是由从arr的索引1到2创建的一个切片。因此切片s的长度为2。
切片s是从arr\[1]开始，即索引从1开始创建的。根据切片容量的定义，可以得知，s的容量为从此索引开始的底层数组arr中的元素数也就是5。
所以切片的长度为2，切片的容量为5。
追加和移除切片元素 追加元素 正如我们已经知道的，数组的长度是固定的，它的长度是不能增加。切片是动态的，使用append()函数可以将新元素追加到切片上。append() 函数的定义是 func append（s\[]T，x ... T）\[]T。此函数只能将元素追加到切片末尾。
x ... T在函数的定义中表示该函数接受参数x的个数是可变的。这些类型的函数被称为可变函数
append()函数的第二参数可以是一个数字，也可以是一组数组。例
append(slice,1)或append(slice,1,2,3)或append(slice,slice2...)\` 正如我们所了解的，切片的对数组的一种抽象、一种包装，但是数组本身的长度是固定的，那么切片是如何具有动态长度的？而且切片的容量是由他所引用的数组的长度决定的，那么当新的元素添加到切片当中，使得切片的长度变大以后超过了这个切片的容量，这个切片和它引用的数组发生了什么变化呢？
当新的元素添加到切片中时，系统会创建一个新的数组，将现有的数组元素复制到这个新的数组当中，并且返回这个新数组的新切片引用。并且新的切片容量为旧切片的两倍。
package main import( "fmt" ) func main() { arr := \[...]string{"A","B","C","D","E","F"} s1 := arr\[:] fmt.Println("s1",s1,"长度为",len(s1),"容量为",cap(s1)) s1 = append(s1,"G") fmt.Println("添加一个元素后s1",s1,"长度为",len(s1),"容量为",cap(s1)) s1\[0] = "1" fmt.Println(arr,s1) } 输出结果
s1 \[A B C D E F] 长度为 6 容量为 6 添加一个元素后s1 \[A B C D E F G] 长度为 7 容量为 12 \[A B C D E F] \[1 B C D E F G] 在上述程序当中，s1是由arr声明的切片，其初始长度为6，初始容量为6。当向其中添加一个新的元素，这时系统会在创建一个新的数组，并返回一个新的切片给s1，这时s1的长度为7，容量为12。可以看到容量翻了一倍。此时切片s1所表示的数组已经不是arr，而是系统新创建的数组。
追加元素到切片头部 如果想把元素追加到切片的开头，Go没有提供原生的函数。可以通过append()函数变相实现，这种方法实际上是合并两个切片。
nums := \[]int {1,2,3} //... 三个点表示将切片元素展开传递给函数 nums = append(\[]int{4},nums...) fmt.Println(nums) //输出 \[4,1,2,3] 移除元素 使用切片子集和append()函数变相实现。
nums := \[]int {1,2,3,4,5} nums = append(nums\[:2],nums\[3:]...) fmt.Println(nums) //输出 \[1,2,4,5] 切片的拷贝 从上面我们可以了解到切片是对一个数组的引用，因此不能向数组那样直接赋值给一个新的变量就会产生拷贝。
数组是值类型，对数组而言，将一个数组赋值给另一个新的数组，那么这里会产生一次拷贝。直白地说，赋值之后两个数组是不一样的他们指向地地址不同，一个数组发生变化，另一个数组不会发生变化。
切片是一个结构体，是对底层数组地一个引用。将切片的值赋值给另一个新的切片，这两个切片都是引用的同一个数组。对切片地修改会映射引用的底层数组上，那么修个一个切片的值，另一个切片的值也会发生变化。
如果希望两个切片引用的不是同一个数组，就需要用到copy()函数完成对切片的拷贝。
copy(dst, src \[]Type)第一个参数为目标切片，第二个参数为源切片。
package main import( "fmt" ) func main() { arr := \[...]int{1,2,3} s1 := arr\[:] s2 := s1 s1\_copy := make(\[]int,3) copy(s1\_copy,s1) s1\[0] = 10 fmt.Println("s1值为：",s1,"，s2值为：",s2,"，s1\_copy值为：",s1\_copy)
} 输出结果
s1值为： \[10 2 3] ，s2值为： \[10 2 3] ，s1\_copy值为： \[1 2 3] 上述代码中s1是对arr引用过的一个切片；s2是由s1赋值而来的切片；s1\_copy是由s1拷贝而来的切片。由输出结果可知，赋值会将两个切片指向同一个底层数组，使用copy()函数会将源切片的值复制到新的切片当中。
切片在函数传递 我们可以认为，切片在内部可以由一个结构体类型表示。这是它的表现形式。
type slice struct { Length int Capactiy int ZerothElement \*byte } 切片包含长度、容量和指向数组第零个元素的指针。当切片传递给函数时，即使他通过值传递，指针变量也将引用相同的底层数组。因此，当切片作为参数传递给函数时，函数内做的更改，也会在函数外可见。
在Go语言中我们通常不会把数组的指针作为参数在函数中传递，而是使用切片进行传递。切片就是一种对数组的引用，这样会使代码更加简洁。
多维切片 多维切片类似与多维数组，唯一的不同在于多维切片没有指明长度。
package main import( "fmt" ) func main() { nums := \[]\[]int{ {1,2,3}, {10,20,30}, {100,200,300} } for \_,v1 := range nums { for \_,v2 := range v1 { fmt.Printf("%d,",v2) } fmt.Printf("\n") } } 运行结果
1,2,3, 10,20,30, 100,200,300, tips
切片是对底层数组的引用。只要切片还在内存中，这个被引用的底层数组就不能被垃圾回收。如果我们需要对很大的一个数组的一个小片段进行处理，那么我们可以由这个数组创建一个切片，并开始处理切片。但是同时这个很大的输入仍然在内存中，一种解决方法就是使用copy()函数来生成一个切片副本，这样我们就可以使用新的切片，原始的数组就会被垃圾回收 \*切片的长度是当前切片可以访问元素的数量，而切片的容量则是当前切片拓展后能访问的元素的个数。当然这些可以访问的元素都是底层数组中的元素 切片是一个结构体，它由一个指向数组中元素的指针、长度、容量来组成的。因此切片这个结构体类型同时具有引用类型的特征和值类型的特征 使用append()函数为切片添加元素时，如果使切片的长度超过了容量时，会返回一个新的切片，这个新切片的容量不一定为旧切片容量的2倍，具体参考这里 映射 GO语言中的Map是一种键值对的无序列表。可以快速并高效地查找唯一键的值。
Map是一种集合，所以可以像迭代数组和切片那样迭代它。不过，Map是无序的集合，因为它底层是一个hash表，因此无法决定它的返回顺序。
Map的定义和初始化 使用make()函数 map\_name := make(map\[key\_type]value\_type) map\_name\[key] = value make(map\[keyType]valueType, cap)cap表示容量，作为可选参数。
使用make()函数创建map创建时，可以指定一个合理的初始容量大小，这样就会申请一块合适的内存，避免在后续的使用中频繁扩浪费性能。
使用make()函数创建map，其中没有数据且不是零值。
map的零值为nil
使用字面值创建 var map\_name = map\[key\_type]value\_type{key1\:v1,k2\:v2} 或 map\_name := map\[key\_type]value\_type{key1\:v1,k2\:v2} 定义一个map后，如果不初始化map，那么就会创建一个nil map。nil map不能用来存放键值对。
//定义一个map但是不初始化值 var student map\[int]string //如果将值赋给这个map编译就会报错 student\[1] = "bob" 运行结果
panic: assignment to entry in nil map
goroutine 1 \[running]: main.main() /box/main.go:9 +0x43
Exited with error status 2 Map的数据操作 key-value 向map中添加数据的语法与数组是类似的。
students\[1] = "zs" 在Go语言中允许多返回值，在map中根据key获取value，在返回value的同时会返回一个boolean类型的值，这个值用表示地是map中是否存在对应key。如果不存在对应key的value，则返回map中value数据类型对应的零值。当然也可以只返回一个value
//根据key获取map中的数据 value := students\[1] //exists为true说明存在为false说明不存在，如过存在返回对应值，否则返回对应数据类型零值这里string零值为""空字符串 value,exists := students\[1] range()函数迭代Map range()迭代map，返回key和value
package main import "fmt" func main() { students := map\[int]string{ 1:"zs", 2:"ls", 3:"ww", } //使用range()函数迭代Map for key, value := range students { fmt.Printf("Key: %d Value: %s\n", key, value) } } delete()函数删除Map中元素 delete(map,key)函数可以删除map中指定key的键值对。接上面的代码。delete()函数没有返回值。
//删除键为1的键值对 delete(map,1) //输出students中所有键值对 for key, value := range students { fmt.Printf("Key: %d Value: %s\n", key, value) } len()函数获取Map的长度 使用len()函数可以用来获取map的长度
l := len(students) map的函数传递 与切片一样，映射也是一个引用类型，它们都都指向了底层的数据结构。切片指向的数据结构是数组，而映射指向的数据结构是散列表。当映射作为参数在函数之间传递时，是进行map指针的拷贝，相对于指针来说是值拷贝，相对于底层来说是引用传递。直白的说就是进行参数传递时它们引用的底层数据结构都是一个，也就是对与一个发生变化另一个也会变化。
package main
import (\
"fmt" )
func main() {\
students := map\[int]string{ 1:"zs", 2:"ls", 3:"ww", } fmt.Println("原始的students", students) modified := students modified\[1] = "zss" fmt.Println("修改之后的students", students)
} 运行结果
原始的students map\[1\:zs 2\:ls 3\:ww] 修改之后的students map\[1\:zss 2\:ls 3\:ww] Maps equality 映射之间不能使用==来进行比较操作。==只能用于检查映射是否为nil
package main func main() {\
map1 := map\[string]int{ "one": 1, "two": 2, } map2 := map1 if map1 == map2 { } } 输出结果：错误
./prog.go:11:10: invalid operation: map1 == map2 (map can only be compared to nil)
Go build failed.
Go语言基础六：结构体和方法 结构体 结构体是一个由用户定义的复合类型，它由一系列属性组成，每个属性都有自己的类型和值。Go语言中数组可以存储同一类型的数据，但在结构体中用户可以为不同项定义不同（或相同）的数据类型。结构体是值类型，因此可以通过new()函数来创建。
定义结构体 结构体的定义需要使用type和struct语句。struct语句定义一个新的数据类型，type语句用来设定结构体的名称。
type identifier struct { member1 type1 member2 type2 } //当然如果有属性的类型时相同的你也可以下面的方式简写 type identifier struct { //member1和member2就是同一种数据类型 member1, member2 type1 member3 type2 } 结构体的定义只是一种内存布局的描述，只有当结构体实例化时，才会真正的分配内存。因此必须在定义结构体并实例化以后才能使用结构体的字段。
声明一个变量 当完成了对结构体的定义之后，就可以使用如下的方式来声明一个结构体变量。
var\_name := struct\_identifier {value1,value2,value3...} 或 var\_name := struct\_identifier {key1\:value1,key2\:value2,key3\:value3...} 访问结构体的成员 结构体.成员名 结构体的零值 当定义一个机构体以后，并且没有显示地使用任何值初始化时，结构体的每一个字段都默认分配为零值。
下面我们定义一一个学生的结构体，其包含的属性为姓名和年龄。初始化s1并赋值，初始化s2但不赋值。
package main import "fmt" type Student struct { name string age int } func main() { s1 := Student{"zs", 12} var s2 Student fmt.Println(s1) fmt.Printf("name=%s,age=%d", s2.name, s2.age) } 输出结果：
{zs 12} name=,age=0 Program exited. 指向结构体的指针 Go语言可以使用&对结构体进行取地址操作，来创建指向结构体的指针。
var1 := \&struct\_type{} 还可以使用new()函数来创建结构体指针，以结构体类型为参数，返回一个指向结构体的指针，并且为其指向的结构体变量分配零值。
var1 := new(struct\_type) 示例：
package main import "fmt" type Student struct { name string age int } func main() { //s1 := \&Student{"zs", 12} 你也可以使用这种方式创建结构体指针 s1 := new(Student) s1.name = "zs" s1.age = 12 //s1就是一个指向结构体Student的指针，其类型为 \*Student fmt.Printf("name=%s,age=%d", s1.name, s1.age) } 运行示例
在上述代码中，尽管s1的类型为\*Student，但是我们仍然可以使用s1.name来访问name字段，而不是显式地取消引用指针(\*s1).name来访问该字段。
匿名结构体 当然你也可以在不创建新数据类型的情况下声明结构。这些类型的结构称为匿名结构。匿名结构体没有类型名称，无需通过type关键字定义就可以直接使用。
var\_name := struct{ member1 type1 member2 type2 }{key1\:value1,key2\:value2} 在上述代码中，这个结构体就称为匿名结构体，因为它只创建了一个新的结构体变量var\_name并没有像命名结构体那样定义任何新的结构体类型。
匿名字段 可以使用仅包含类型而没有字段名称的字段创建结构。这些类型的字段称为匿名字段。
下面的代码中创建了一个结构体Student，其中有两个匿名字段string和int
type Student struct{ string int } 匿名字段没有明确的名称，默认情况下匿名字段的名称为其类型。例如在上面Student的情况下，虽然字段是匿名的，但默认情况采用字段数据类型名做为其字段名称。所以字段名称为int和string
嵌套结构体 结构体的一个字段可能是另一个结构体，这类型的结构体就是嵌套结构体。
例如
package main import "fmt" type Address struct { city string } type Student struct { name string age int address Address } func main() { s := Student{ name: "zs", age: 12, address\:Address{ city:"bj", }, } fmt.Printf("name=%s,age=%d,city=%s",s.name,s.age,s.address.city) } 运行示例
当这个结构体字段是一个匿名字段时，其中的字段被称为提升字段。因为它们可以被直接访问到，就像它们属于持有匿名结构字段的结构一样。通过下面的例子更好的理解这个定义。
package main import "fmt" type Address struct { city string } type Student struct { name string age int Address } func main() { s := Student{ name: "zs", age: 12, Address\:Address{ city:"bj", }, } fmt.Printf("name=%s,age=%d,city=%s",s.name,s.age,s.city) } 运行示例
在上述代码中，Student结构体有一个匿名字段Address，它是一个机构体。那么Address结构体的city字段就被称为提升字段。因为它们可以被直接访问，就好它直接被定义在Student结构当中一样。所以在代码中我们用s.city直接访问该字段。
结构体的比较 结构体是值变量，如果结构体内的每个字段都是可以比较的，那么这个结构体就是可以比较的。如果两个结构变量的对应的字段相等，则两个结构变量相等。
方法 方法（method）就是在func关键字和方法名之间具有一个特殊的接收器类型的函数。这个接收器可以是结构体或非结构体。
在调用方法时，
方法的定义 func(t Type) methodName(paramter list){ } 上述代码片段中，创建了一个名为methodName的方法，且接收器类型为Type的方法。t被称为接收者，可以在方法中访问t。
方法和函数的区别 Go语言不是一种纯面向对象的语言，它不支持类。因此Go语言中的方法实现了一种类似于类行为的一种方式。方法允许对类型相关的逻辑行为进行分组，类似于类。
同名的方法可以定义在不同的类型（接收器）上，而不允许从在同名的函数。
在调用方法时，可以使用类型的实例值或者指针，编译器会自动根据接收器类型自动在值类型和指针类型之间转换。但是对于函数，你只能传递参数对应的类型，参数是值类型就是值类型，参数是指针类型就必须值指针类型。
示例：
package main import "fmt" type Rectangle struct {\
length,width int } func (r Rectangle) Area() int {\
return r.length \* r.width } func main() {\
r := Rectangle{10,5} r2 := \&Rectangle{10,5} fmt.Printf("Area of rectangle %d\n", r.Area()) fmt.Printf("Area of rectangle %d\n", r2.Area()) } 运行结果
接收者类型问题 在方法中既可以接受值类型也可以接受指针类型。这两者之间的区别在与，指针类型接收器的方法内部所作的修改对调用者是可见的，而值类型则不然。
示例：
package main import "fmt" type Rectangle struct { length, width int }
func (r Rectangle) modify(len int) { r.length = len } func (r \*Rectangle) modifys(len int) { r.length = len } func main() { r := Rectangle{10, 5} r.modify(1) fmt.Printf("修改没有发生%d\n", r.length) r.modifys(1) fmt.Printf("修改已经发生%d\n", r.length) }
何时使用值类型接收者，何时使用指针类型接收者？ 粗暴的结论：如果你不知道怎么选择，那就使用指针。但有时候，使用值接收者会更合理，尤其是效率考虑，比如：不需要修改的小 struct、基础数据类型。以下是一些有用的指导方针：

*   如果接收者是 map、func 或 chan，不用使用指针。如果是 slice，并且方法不会 reslice 或 从分配 slice，不要使用指针；
*   如果方法需要修改接收者，必须使用指针；
*   如果接收者是包含了 sync.Mutex 或类似的同步字段的结构体（struct），接收者必须使用指针，避免拷贝；
*   如果接收者是一个大的结构体或数组，使用指针会更高效。但多大是大？如果所有元素（struct 的字段或数组元素）作为方法的参数传递认为太大，那么作为接收者也是太大。（粗暴一些，所有元素内存超过指针大小，可以考虑使用指针）；
*   如果接收者是结构体、数组或 slice，同时，它们的元素是指针，且指向的数据要改变，那么使用指针接收者会更合理；（有点绕，那就总原则：用指针没错）；
*   如果接收者是小的数组，或小的没有可变字段或指针的结构体，或者结构体字段只是简单的基础类型，值接收者会更合理；值接收者能减少垃圾回收的压力，一般会优先分配在栈上（记住是一般，因为有可能逃逸）；但除非有性能测试验证，否则别因为可以介绍垃圾回收压力，就选择值接收者；
    最后再强调一下，如果你拿不定主意，那就用指针接收者。
    GO Web编程（五——访问数据库） database/sql接口 sql.Register函数 当第三方开发者开发数据库驱动时，都会实现init函数，在init里面会调用这个Register(name string,driver driver.Driver)完成驱动的注册。
    mysql驱动:
    go // <<https://github.com/mikespook/mymysql驱动> // Driver automatically registered in database/sql var d = Driver{proto: "tcp", raddr: "127.0.0.1:3306"} func init() { Register("SET NAMES utf8") sql.Register("mymysql", \&d) } 在database/sql内部通过一个Map来存储用户定义的相应驱动。
    go var drivers = make(map\[string]driver.Driver) driver\[name] = driver 在使用Database/sql接口和第三方库是经常看到：
    go import ( "database/sql" \_ "github.com/mattn/go-sqlite3" ) \_引入的包不直接使用包中定义的函数或变量等资源，但是包在引入的时候回自动调用包的init函数完成对包的初始化，因此，引入上面的数据库驱动包之后会自动去调用init函数，然后在init函数里面注册这个数据库驱动，这样就可以在接下来的代码中直接使用这个数据库驱动了。
    driver.Driver Driver 是一个数据库驱动的接口，他定义了一个 method： Open (name string)，这个方法返回一个数据库的 Conn 接口。
    go type Driver interface { Open(name string)(Conn,error) } driver.Conn Conn是一个数据库连接的接口定义，他定义了一系列方法，这个Conn只能应用在一个goroutine里面。
    go type Conn interface { Prepare(query string)(Stmt,error) Close() error Begin() (Tx,error) } Prepare函数返回与当前连接相关的Sql语句的准备状态。
    Close函数关闭当前的连接，执行释放连接用于的资源等清理工作。
    Begin函数返回一个代表事务处理的Tx。
    driver.Stmt Stmt是一种准备好的状态，和Conn相关联，并且只能用于一个goroutine中。
    go type Stmt interface { Close() error NumInput() int Exec(args \[]Value)(Result,error) Query(args \[]Value)(Rows,error) } driver.Tx 事务处理一般就两个过程，递交或者回滚。
    go type Tx interface{ Commit() error Rollback() error } 这两个函数一个用来递交一个事务，一个用来回滚事务。
    driver.Execer 这是一个Conn可选择实现的接口
    go type Execer interface{ Exec(query string,args \[]Value)(Result,error) } driver.Result 这个是执行Updata/insert等操作返回的结果接口定义
    go type Result interface{ LastInsertId()(int64,err) RowsAffected()(int64,err) } LastInsertId返回的是由插入操作得到的自增ID号，
    RowsAffected函数返回query操作影响的数据条目数。
    driver.Rows Rows是执行查询返回的结果集接口廷议
    go type Rows interface { Columns()\[]string Close() error Next(dest \[]Value)error } driver.Value Value是一个空接口，他可以容纳任何的数据
    go type Value interface{} drive的Value是驱动必须能够操作的Value，Value要么是nile，要么是下面的任意一种：
    go int64 float64 bool \[]byte string \[\*]除了Row\.Next返回的不能是string time.Time driver.ValueConverter ValueConverter接口定义了如何把一个普通的值转化成driver.Value的接口
    go type ValueConverter interface{ ConverValue(v interface{})(Value,error) } 使用Mysql数据库 Mysql驱动 github.com/go-sql-driver/mysql 支持 database/sql，全部采用 go 写。github.com/ziutek/mymysql 支持 database/sql，也支持自定义的接口，全部采用 go 写。github.com/Philio/GoMySQL 不支持 database/sql，自定义接口，全部采用 go 写。
    ————————————————
    hljs CREATE TABLE `userinfo` ( `uid` INT(10) NOT NULL AUTO\_INCREMENT, `username` VARCHAR(64) NULL DEFAULT NULL, `department` VARCHAR(64) NULL DEFAULT NULL, `created` DATE NULL DEFAULT NULL, PRIMARY KEY (`uid`) );
    CREATE TABLE `userdetail` ( `uid` INT(10) NOT NULL DEFAULT '0', `intro` TEXT NULL, `profile` TEXT NULL, PRIMARY KEY (`uid`) ) 如何使用database/sql接口对数据库表进行增删改查：
    go package main
    import ( "database/sql" "fmt" // "time"
    \_ "github.com/go-sql-driver/mysql"
    )
    func main() { db, err := sql.Open("mysql", "astaxie\:astaxie@/test?charset=utf8") checkErr(err)
    // 插入数据
    stmt, err := db.Prepare("INSERT userinfo SET username=?,department=?,created=?")
    checkErr(err)
    res, err := stmt.Exec("astaxie", "研发部门", "2012-12-09")
    checkErr(err)
    id, err := res.LastInsertId()
    checkErr(err)
    fmt.Println(id)
    // 更新数据
    stmt, err = db.Prepare("update userinfo set username=? where uid=?")
    checkErr(err)
    res, err = stmt.Exec("astaxieupdate", id)
    checkErr(err)
    affect, err := res.RowsAffected()
    checkErr(err)
    fmt.Println(affect)
    // 查询数据
    rows, err := db.Query("SELECT \* FROM userinfo")
    checkErr(err)
    for rows.Next() {
    var uid int
    var username string
    var department string
    var created string
    err = rows.Scan(\&uid, \&username, \&department, \&created)
    checkErr(err)
    fmt.Println(uid)
    fmt.Println(username)
    fmt.Println(department)
    fmt.Println(created)
    }
    // 删除数据
    stmt, err = db.Prepare("delete from userinfo where uid=?")
    checkErr(err)
    res, err = stmt.Exec(id)
    checkErr(err)
    affect, err = res.RowsAffected()
    checkErr(err)
    fmt.Println(affect)
    db.Close()
    }
    func checkErr(err error) { if err != nil { panic(err) } } db, err := sql.Open("mysql", "astaxie\:astaxie@/test?charset=utf8")
    sql.Open()函数用来打开一个注册过的数据库驱动，第二个参数时DSN（Database Source Name)，它是go-sql-driver定义的一些数据库链接和配置信息。支持的格式如下：
    hljs user\@unix(/path/to/socket)/dbname?charset=utf8 user\:password\@tcp(localhost:5555)/dbname?charset=utf8 user\:password@/dbname user\:password\@tcp(\[de\:ad\:be\:ef::ca\:fe]:80)/dbname db.Prepare()函数是用来返回准备要执行的sql操作，然后返回准备完毕的执行状态。
    db.Query()函数用来执行SQL返回的ROWS结果。
    stmt.Exec()函数用来执行stmt准备好的语句。
    使用SQLite数据库 github.com/mattn/go-sqlite3 支持 database/sql 接口，基于 cgo 写的 github.com/feyeleanor/gosqlite3 不支持 database/sql 接口，基于 cgo 写的 github.com/phf/go-sqlite3 不支持 database/sql 接口，基于 cgo 写的
    sqllite实现Database/sql接口的代码与mysql几乎是一模一样的，只有sql.Open不一样采用了SQLite的方式打开。
    go db, err := sql.Open("sqlite3", "./foo.db") PostgreSQL驱动 github.com/lib/pq 支持 database/sql 驱动，纯 Go 写的 github.com/jbarham/gopgsqldriver 支持 database/sql 驱动，纯 Go 写的 github.com/lxn/go-pgsql 支持 database/sql 驱动，纯 Go 写的
    Beego Orm库 采用了 Go style 方式对数据库进行操作，实现了 struct 到数据表记录的映射。
    支持的驱动：
    Mysql: github/go-mysql-driver/mysql PostgreSQL: github.com/lib/pq SQLite: github.com/mattn/go-sqlite3 Mysql: github.com/ziutek/mymysql/godrv
    安装 bash go get github.com/astaxie/beego 初始化 go import ( "database/sql" "github.com/astaxie/beego/orm" \_ "github.com/go-sql-driver/mysql" )
    func init() { // 注册驱动 orm.RegisterDriver("mysql", orm.DR\_MySQL) // 设置默认数据库 orm.RegisterDataBase("default", "mysql", "root\:root@/my\_db?charset=utf8", 30) // 注册定义的 model orm.RegisterModel(new(User))
    // 创建 table
    orm.RunSyncdb("default", false, true)
    } go o := orm.NewOrm() 使用原生Sql
    go o := orm.NewOrm() var r orm.RawSeter r = o.Raw("UPDATE user SET name = ? WHERE name = ?","testing","slene") Nosql 目前主要流行的NOSQL主要由redis、mongoDB、Cassandra和Membase等。
    这些数据库都有高性能、高并发读写等特点。
    redis:
    redis是一个key-value的存储系统，go支持的redis驱动：
    github.com/gomodule/redigo (推荐) github.com/go-redis/redis github.com/hoisie/redis github.com/alphazero/Go-Redis github.com/simonz05/godis
    MongoDB：
    mongodb是一个高性能，开源，无模式的文档性数据库。
    Go语言中查询SqlServer数据库 一、Go语言中查询MsSQL数据库：
    　　
    复制代码 复制代码 // main.go package main
    import ( "database/sql" "fmt" "log" "time"
    \_ "github.com/denisenkom/go-mssqldb"
    )
    func main() { var isdebug = true var server = "localhost" var port = 1433 var user = "sa" var password = "123456xx" var database = "MyTestDB"
    //连接字符串
    connString := fmt.Sprintf("server=%s;port%d;database=%s;user id=%s;password=%s", server, port, database, user, password)
    if isdebug {
    fmt.Println(connString)
    }
    //建立连接
    conn, err := sql.Open("mssql", connString)
    if err != nil {
    log.Fatal("Open Connection failed:", err.Error())
    }
    defer conn.Close()
    //产生查询语句的Statement
    stmt, err := conn.Prepare(`select * from [account_region]`)
    if err != nil {
    log.Fatal("Prepare failed:", err.Error())
    }
    defer stmt.Close()
    //通过Statement执行查询
    rows, err := stmt.Query()
    if err != nil {
    log.Fatal("Query failed:", err.Error())
    }
    //建立一个列数组
    cols, err := rows.Columns()
    var colsdata = make(\[]interface{}, len(cols))
    for i := 0; i < len(cols); i++ {
    colsdata\[i] = new(interface{})
    fmt.Print(cols\[i])
    fmt.Print("\t")
    }
    fmt.Println()
    //遍历每一行
    for rows.Next() {
    rows.Scan(colsdata...) //将查到的数据写入到这行中
    PrintRow(colsdata)     //打印此行
    }
    defer rows.Close()
    }
    //打印一行记录，传入一个行的所有列信息 func PrintRow(colsdata \[]interface{}) { for \_, val := range colsdata { switch v := (\*(val.(\*interface{}))).(type) { case nil: fmt.Print("NULL") case bool: if v { fmt.Print("True") } else { fmt.Print("False") } case \[]byte: fmt.Print(string(v)) case time.Time: fmt.Print(v.Format("2016-01-02 15:05:05.999")) default: fmt.Print(v) } fmt.Print("\t") } fmt.Println() } 复制代码 复制代码 二、效果：
    　　
    复制代码 复制代码 server=localhost;port1433;database=MyTestDB;user id=sa;password=123456xx region\_id provider\_id region\_name billing\_region\_name description\
    1 5 us-east-1 US-EAST AWS US EAST Data Center\
    2 5 us-west-2 US\_WEST\_OREGON AWS Oregon Data Center\
    3 5 ap-southeast-1 ASIA\_SIGN AWS Singapore Data Center\
    4 5 ap-southeast-2 ASIA\_SYDENY AWS Sydney Data Center\
    5 5 ap-northeast-1 ASIA\_TOKYO AWS Tokyo Data Center\
    6 5 eu-central-1 EU\_FRANKFURT AWS Frankfurt Data Center\
    7 5 eu-west-1 EU\_IRELAND AWS Europe Data Center\
    8 5 us-west-1 US\_WEST\_CA AWS CA Data Center\
    9 5 sa-east-1 SOUA\_SAOP AWS Sao Paulo Data Center\
    10 5 ap-northeast-2 ASIA\_SEOUL AWS Seoul Data Center\
    11 5 ap-south-1 ASIA\_MUMBAI AWS Mumbai Data Center\
    12 2 Central US US-CENTRAL Azure Center US Data Center\
    13 2 North Central US US-NORTH-CENTRAL Azure North US Data Center\
    14 2 East US US-EAST Azure East US Data Center\
    15 2 South Central US US-SOUTH-CENTRAL Azure South US Data Center\
    16 2 West US US-WEST Azure West US Data Center\
    17 2 North Europe EUROPE-NORTH Azure North Europe Data Center\
    18 2 West Europe EUROPE-WEST Azure North Europe Data Center\
    19 2 East Asia ASIA-PACIFIC-EAST Azure East Aisa Data Center\
    20 2 Southeast Asia ASIA-PACIFIC-SOUTHEAST Azure Singapore Data Center\
    21 2 Japan East JAPAN-EAST Azure East Japan Data Center\
    22 2 Japan West JAPAN-WEST Azure West Japan Data Center\
    23 2 Brazil South BRAZIL-SOUTH Azure Sao Paulo Data Center\
    24 2 Australia East AUSTRALIA-EAST Azure East Australia Data Center\
    25 2 Australia Southeast AUSTRALIA-SOUTHEAST Azure Southeast Australia Data Center\
    26 2 East US 2 US-EAST-2 Azure East US Data Center 2\
    27 2 US Gov Virginia USGOV-VIRGINIA Azure US Virginia Government Data Center\
    28 2 US Gov Iowa USGOV-IOWA Azure US Iowa Government Data Center\
    29 2 Canada Central CANADA-CENTRAL Azure Central Canada\
    30 2 Canada East CANADA-EAST Azure East Canada\
    31 2 Germany Central GERMANY-CENTRAL Azure Central Germany\
    32 2 Germany Northeast GERMANY-NORTHEAST Azure Northeast Germany\
    33 2 Korea Central KOREA-CENTRAL Azure Central Korea\
    34 3 China North CN-BEIJING Azure Mooncake Beijing Data Center\
    35 3 China East CN-SHANGHAI Azure Mooncake Shanghai Data Center\
    36 4 cn-hangzhou CN\_HANGZHOU Aliyun Hangzhou Data Center\
    37 4 cn-beijing CN\_BEIJING Aliyun Beijing Data Center\
    38 4 cn-shenzhen CN\_SHENZHEN Aliyun Shenzhen Data Center\
    39 4 cn-qingdao CN\_QINGDAO Aliyun Qingdao Data Center\
    40 4 cn-hongkong HONGKONG Aliyun Hong Kong Data Center\
    41 4 us-silicon-valley US-Silicon\_Valley Aliyun Silicon Valley Data Center\
    复制代码 复制代码 三、使用实体实现的方法：
    复制代码 复制代码 // main.go package main
    import ( "database/sql" "fmt" "log"
    \_ "github.com/denisenkom/go-mssqldb"
    )
    type AccessRegion struct { region\_id int64 provider\_id int64 region\_name string sub\_region\_names string billing\_region\_name string description string }
    func main() { var server = "localhost" var port = 1433 var user = "sa" var password = "123456xxx" var database = "MyTestDB"
    //连接字符串
    connString := fmt.Sprintf("server=%s;port%d;database=%s;user id=%s;password=%s", server, port, database, user, password)
    //建立连接
    db, err := sql.Open("mssql", connString)
    if err != nil {
    log.Fatal("Open Connection failed:", err.Error())
    }
    defer db.Close()
    //通过连接对象执行查询
    rows, err := db.Query(`select * from [account_region]`)
    if err != nil {
    log.Fatal("Query failed:", err.Error())
    }
    defer rows.Close()
    var rowsData \[]\*AccessRegion
    //遍历每一行
    for rows.Next() {
    var row = new(AccessRegion)
    rows.Scan(\&row\.region\_id, \&row\.provider\_id, \&row\.region\_name, \&row\.billing\_region\_name, \&row\.description)
    rowsData = append(rowsData, row)
    }
    //打印数组
    for \_, ar := range rowsData {
    fmt.Print(ar.region\_id, "\t", ar.provider\_id, "\t", ar.region\_name, "\t", ar.billing\_region\_name, "\t", ar.description)
    fmt.Println()
    }
    } 复制代码 复制代码 四、使用ODBC的实现方式
    复制代码 复制代码 // main.go package main
    import ( "database/sql" "fmt" "log"
    \_ "github.com/alexbrainman/odbc"
    )
    type AccessRegion struct { region\_id int64 provider\_id int64 region\_name string sub\_region\_names string billing\_region\_name string description string }
    func main() { db, err := sql.Open("odbc", "driver={sql server};server=localhost;port=1433;uid=sa;pwd=123456xxx;database=MyTestDB") if err != nil { fmt.Printf(err.Error()) } //通过连接对象执行查询 rows, err := db.Query(`select * from [account_region]`) if err != nil { log.Fatal("Query failed:", err.Error()) } defer rows.Close()
    var rowsData \[]*AccessRegion
    //遍历每一行
    for rows.Next() {
    var row = new(AccessRegion)
    rows.Scan(\&row\.region\_id, \&row\.provider\_id, \&row\.region\_name, \&row\.billing\_region\_name, \&row\.description)
    rowsData = append(rowsData, row)
    }
    //打印数组
    for \_, ar := range rowsData {
    fmt.Print(ar.region\_id, "\t", ar.provider\_id, "\t", ar.region\_name, "\t", ar.billing\_region\_name, "\t", ar.description)
    fmt.Println()
    }
    } 复制代码 复制代码 五、最终转为Map集合
    复制代码 复制代码 // main.go package main
    import ( "database/sql" "fmt" "log"
    \_ "github.com/alexbrainman/odbc"
    "github.com/demdxx/gocast"
    )
    func main() { db, err := sql.Open("odbc", "driver={sql server};server=localhost;port=1433;uid=sa;pwd=123456xxx;database=MyTestDB") if err != nil { fmt.Printf(err.Error()) } //通过连接对象执行查询 rows, err := db.Query(`select * from [account_region]`) if err != nil { log.Fatal("Query failed:", err.Error()) } defer rows.Close()
    //遍历每一行
    colNames, \_ := rows.Columns()
    var cols = make(\[]interface{}, len(colNames))
    for i := 0; i < len(colNames); i++ {
    cols\[i] = new(interface{})
    }
    var maps = make(\[]map\[string]interface{}, 0)
    for rows.Next() {
    err := rows.Scan(cols...)
    if err != nil {
    log.Fatal(err.Error())
    }
    var rowMap = make(map\[string]interface{})
    for i := 0; i < len(colNames); i++ {
    rowMap\[colNames\[i]] = convertRow(*(cols\[i].(\*interface{})))
    }
    maps = append(maps, rowMap)
    }
    //打印数组
    for \_, rowMap := range maps {
    for k, v := range rowMap {
    fmt.Print(k, ":", v, "\t")
    }
    fmt.Println()
    }
    } func convertRow(row interface{}) interface{} { switch row.(type) { case int: return gocast.ToInt(row) case string: return gocast.ToString(row) case \[]byte: return gocast.ToString(row) case bool: return gocast.ToBool(row) } return row }
    1.Go连接SQLite 回到顶部 1\_1.SQLite推荐驱动 <https://github.com/mattn/go-sqlite3>
    回到顶部 1\_2.SQLite连接示例代码 示例代码如下：
    复制代码 package main
    import ( "database/sql" "fmt" \_ "github.com/mattn/go-sqlite3" "log" "os" )
    type Users struct { UserId int Uname string }
    func main() { os.Remove("./foo.db")
    db, err := sql.Open("sqlite3", "./foo.db")
    if err != nil {
    log.Fatal(err)
    }
    defer db.Close()
    sql := `create table users (userId integer, uname text);`
    db.Exec(sql)
    sql = `insert into users(userId,uname) values(1,'Mike');`
    db.Exec(sql)
    sql = `insert into users(userId,uname) values(2,'John');`
    db.Exec(sql)
    rows, err := db.Query("select \* from users")
    if err != nil {
    log.Fatal(err)
    }
    defer rows.Close()
    var users \[]Users = make(\[]Users, 0)
    for rows.Next() {
    var u Users
    rows.Scan(\&u.UserId, \&u.Uname)
    users = append(users, u)
    }
    fmt.Println(users)
    } 复制代码 执行结果为：
    \[{1 Mike} {2 John}] 同时在当前目录生成foo.db -2.Go连接MySQL 2.Go连接MySQL 回到顶部 2\_1.MySQL推荐驱动 <https://github.com/Go-SQL-Driver/MySQL>
    回到顶部 2\_2.MySQL连接示例代码 示例代码如下：
    复制代码 package main
    import ( "database/sql" "fmt" \_ "github.com/go-sql-driver/mysql" )
    type Users struct { UserId int Uname string }
    func main() { //db, err := sql.Open("mysql", "user\:password@/dbname") db, err := sql.Open("mysql", "root\:root@/test") if err != nil { fmt.Println("连接数据库失败") } defer db.Close() var users \[]Users = make(\[]Users, 0) sqlStr := "select \* from users" rows, err := db.Query(sqlStr) if err != nil { fmt.Println(err) } else { for i := 0; rows.Next(); i++ { var u Users rows.Scan(\&u.UserId, \&u.Uname) users = append(users, u) } fmt.Println(users) } } 复制代码 执行结果为：
    \[{1 Mike} {2 John}] -3.Go连接Oracle 3.Go连接Oracle 回到顶部 3\_1.Oracle推荐驱动以及准备事项 本人的数据库相关配置是 版本11.2.0.1.0 Go版本是1.2 系统是WIN7旗舰版64位 按照下面的步骤最终连接上了oracle ①首先是先在机子上安装git（这是必须的吧 作为go开发者） ②下载最新版的OCI尽管我用的是11.2的版本，但是试了n次才返现只有最新的12.1.0.1.0 才管用 下载地址是<<http://www.oracle.com/technetwork/cn/database/winx64soft-089540.html如果这个地址不好使，可以再baidu是搜Instant> Client Downloads for Microsoft Windows (x64) 需要下载instantclient-basic和instantclient-sdk两个zip文件 下载后将两个包解压，然后将sdk中的文件sdk文件夹放到instantclient\_12\_1下，形成instantclient\_12\_1/sdk目录级 然后将instantclient\_12\_1文件夹改名为instantclient\_11\_2并放到了C盘的跟目录下 ③下载MinGW最新版(实际上我用的不是最新的 用的是这个版本x86\_64-4.9.0-posix-seh-rt\_v3-rev2) ④到<<https://github.com/wendal/go-oci8下载pkg-config.exe和oci8.pc注意先不要把这些源码git到计算机上，只是先下载pkg-config.exe和oci8.pc(在windows目录下)> 下载后进行以下操作 将pkg-config.exe复制到mingw\bin\下 将oci8.pc复制到mingw\lib\pkg-config\下(我的pkg-config是新建的因为原来没有) 注意，oci8.pc 需要根据你下载的 oci进行修改。下面是我根据我下载的oci版本做的修改。 # Package Information for pkg-config
    prefix=C:/instantclient\_11\_2
    exec\_prefix=C:/instantclient\_11\_2
    libdir=`${exec_prefix}
    includedir=$`{prefix}/sdk/include/
    Name: OCI
    Description: Oracle database engine
    Version: 11.2
    Libs: -L`${libdir} -loci
    Libs.private: 
    Cflags: -I$`{includedir}
    ⑤修改系统环境变量, 添加 PATH=原有PATH;C:\instantclient\_11\_2;D:\MinGW\bin; (读者根据自己的目录变换一下) PKG\_CONFIG\_PATH=D:\MinGW\lib\pkg-config(读者根据自己的目录变换一下) ⑥下载源码. 把<<https://github.com/wendal/go-oci8源码git到本地(这是go-oci库也就是连接oracle的驱动)> go get github.com/wendal/go-oci8 然后执行测试一下吧 回到顶部 3\_2.Oracle连接示例代码 示例代码如下：
    复制代码 package main
    import ( "database/sql" "fmt" \_ "github.com/wendal/go-oci8" "log" )
    type Users struct { UserId int Uname string }
    func main() { log.Println("Oracle Driver Connecting....") //用户名/密码@实例名 如system/123456\@orcl、sys/123456\@orcl db, err := sql.Open("oci8", "BOOKMAN/password\@orcl") if err != nil { log.Fatal(err) panic("数据库连接失败") } else { defer db.Close() var users \[]Users = make(\[]Users, 0) rows, err := db.Query("select \* from users") if err != nil { log.Fatal(err) } else { for rows.Next() { var u Users rows.Scan(\&u.UserId, \&u.Uname) users = append(users, u) } fmt.Println(users) defer rows.Close() }
    }
    } 复制代码 执行过程比mysql和sqlite比起来非常缓慢，结果如下
    2014/07/08 01:14:05 Oracle Driver Connecting.... \[{1 Mike} {2 john}]
    go连oracle 还可以参考 <https://github.com/wendal/go-oci8>
    一、下载oci ORACLE调用接口(Oracle Call Interface简称OCI)
    <https://www.oracle.com/database/technologies/instant-client/downloads.html>
    Oracle Instant Client（即时客户端）比 Oracle DataBase Cilent更加轻量级
    下载 basic和sdk
    特别慢
    压缩后 把sdk放到base包下
    添加环境变量 D:\Program Files\instantclient\_19\_6
    二、下载MinGW 编译器
    1.离线下载 <https://sourceforge.net/projects/mingw-w64/files/>
    2.配置环境变量 path D:\mingw-w64\mingw64\bin
    三、下载go-oci8 Oracle 数据库的 Go 语言驱动包
    1.go get github.com/wendal/go-oci8 会报错 ///
    注意：最后把wendal换成了mattn不知道为什么wendal没成功
    2.进入路径 F:\gopro\src\github.com\wendal\go-oci8\windows
    找到oci8.pc 修改为 （路径不能有空格，斜杠是反的）
    3.复制此目录下pkg-config.exe到mingw64下的bin目录
    4.复制此目录下oci8.pc到mingw64下的lib/pkg-config目录（pkg-config目录需要自己建）

1.

四、测试
复制代码 import ( "database/sql" "fmt"
\_ "github.com/mattn/go-oci8"
)
func main() { // 设置连接数据库的参数 db, \_ := sql.Open("oci8", "xx\:xx\@ip/orcl") //获取所有数据 rows, \_ := db.Query("select CODE,NAME from xx")
var CODE, NAME string
//循环显示所有的数据
for rows.Next() {
rows.Scan(\&CODE, \&NAME)
fmt.Println(CODE, "--", NAME)
}
//关闭数据库
defer db.Close()
//连接数据库
err := db.Ping()
if err != nil {
fmt.Println("数据库连接失败")
return
}
fmt.Println("hello")
} 复制代码
如果说明oci8.pc没找到 D:\Program Files\instantclient\_19\_6的oic
查看路径
pkg-config --cflags --libs oci8
Go语言使用PostgreSQL数据库
PostgreSQL和MySQL比较，它更加庞大一点，因为它是用来替代Oracle而设计的。所以在企业应用中采用PostgreSQL是一个明智的选择。
现在MySQL被Oracle收购之后，有传闻Oracle正在逐步的封闭MySQL,,鉴于此，将来我们也许会选择PostgreSQL而不是MySQL作为项目的后端数据库。
1、驱动 Go实现的支持PostgreSQL的驱动也很多，因为国外很多人在开发中使用了这个数据库。
<<https://github.com/bmizerany/pq支持database/sql驱动，纯Go写的> <<https://github.com/jbarham/gopgsqldriver支持database/sql驱动，纯Go写的> <<https://github.com/lxn/go-pgsql支持database/sql驱动，纯Go写的> 在下面的示例中我采用了第一个驱动，因为它目前使用的人最多，在github上也比较活跃。
2、实例代码 数据库建表语句：
复制代码 CREATE TABLE userinfo ( uid serial NOT NULL, username character varying(100) NOT NULL, departname character varying(500) NOT NULL, Created date, CONSTRAINT userinfo\_pkey PRIMARY KEY (uid) ) WITH (OIDS=FALSE);
CREATE TABLE userdeatail ( uid integer, intro character varying(100), profile character varying(100) ) WITH(OIDS=FALSE); 复制代码
看下面这个Go如何操作数据库表数据:增删改查
复制代码 package main
import ( "database/sql" "fmt" \_ "github.com/bmizerany/pq" )
func main() { db, err := sql.Open("postgres", "user=astaxie password=astaxie dbname=test sslmode=disable") checkErr(err)
//插入数据
stmt, err := db.Prepare("INSERT INTO userinfo(username,departname,created) VALUES(`$1,$`2,`$3) RETURNING uid")
    checkErr(err)
    res, err := stmt.Exec("astaxie", "研发部门", "2012-12-09")
    checkErr(err)
    //pg不支持这个函数，因为他没有类似MySQL的自增ID
    id, err := res.LastInsertId()
    checkErr(err)
    fmt.Println(id)
    //更新数据
    stmt, err = db.Prepare("update userinfo set username=$`1 where uid=`$2")
    checkErr(err)
    res, err = stmt.Exec("astaxieupdate", 1)
    checkErr(err)
    affect, err := res.RowsAffected()
    checkErr(err)
    fmt.Println(affect)
    //查询数据
    rows, err := db.Query("SELECT * FROM userinfo")
    checkErr(err)
    for rows.Next() {
        var uid int
        var username string
        var department string
        var created string
        err = rows.Scan(&uid, &username, &department, &created)
        checkErr(err)
        fmt.Println(uid)
        fmt.Println(username)
        fmt.Println(department)
        fmt.Println(created)
    }
    //删除数据
    stmt, err = db.Prepare("delete from userinfo where uid=$`1") checkErr(err) res, err = stmt.Exec(1) checkErr(err) affect, err = res.RowsAffected() checkErr(err) fmt.Println(affect) db.Close() } func checkErr(err error) { if err != nil { panic(err) } }&#x20;

# Go 语言基础语法

# Go 语言数据类型

# Go 语言变量

# Go 语言常量

# Go 语言运算符

# Go 语言条件语句

# Go 语言循环语句

# Go 语言函数

# Go 语言变量作用域

# Go 语言数组

# Go 语言指针

# Go 语言结构体

# Go 语言切片(Slice)

# Go 语言范围(Range)

# Go 语言Map(集合)

# Go 语言递归函数

# Go 语言类型转换

# Go 语言接口

# Go 错误处理

# Go 并发

goroutine 同步在<https://zhuanlan.zhihu.com/p/557447772>

Go 语言支持并发，我们只需要通过 go 关键字来开启 goroutine 即可。

goroutine 是轻量级线程，goroutine 的调度是由 Golang 运行时进行管理的。

goroutine 语法格式：

go 函数名( 参数列表 )
例如：

go f(x, y, z)
开启一个新的 goroutine:

f(x, y, z)
Go 允许使用 go 语句开启一个新的运行期线程， 即 goroutine，以一个不同的、新创建的 goroutine 来执行一个函数。 同一个程序中的所有 goroutine 共享同一个地址空间。

实例
package main

import (
"fmt"
"time"
)

func say(s string) {
for i := 0; i < 5; i++ {
time.Sleep(100 \* time.Millisecond)
fmt.Println(s)
}
}

func main() {
go say("world")
say("hello")
}
执行以上代码，你会看到输出的 hello 和 world 是没有固定先后顺序。因为它们是两个 goroutine 在执行：

world
hello
hello
world
world
hello
hello
world
world
hello
通道（channel）
通道（channel）是用来传递数据的一个数据结构。

通道可用于两个 goroutine 之间通过传递一个指定类型的值来同步运行和通讯。操作符 <- 用于指定通道的方向，发送或接收。如果未指定方向，则为双向通道。

ch <- v    // 把 v 发送到通道 ch
v := <-ch  // 从 ch 接收数据
// 并把值赋给 v
声明一个通道很简单，我们使用chan关键字即可，通道在使用前必须先创建：

ch := make(chan int)
注意：默认情况下，通道是不带缓冲区的。发送端发送数据，同时必须有接收端相应的接收数据。

以下实例通过两个 goroutine 来计算数字之和，在 goroutine 完成计算后，它会计算两个结果的和：

实例
package main

import "fmt"

func sum(s \[]int, c chan int) {
sum := 0
for \_, v := range s {
sum += v
}
c <- sum // 把 sum 发送到通道 c
}

func main() {
s := \[]int{7, 2, 8, -9, 4, 0}

        c := make(chan int)
        go sum(s[:len(s)/2], c)
        go sum(s[len(s)/2:], c)
        x, y := <-c, <-c // 从通道 c 中接收

        fmt.Println(x, y, x+y)

}
输出结果为：

\-5 17 12
通道缓冲区
通道可以设置缓冲区，通过 make 的第二个参数指定缓冲区大小：

ch := make(chan int, 100)
带缓冲区的通道允许发送端的数据发送和接收端的数据获取处于异步状态，就是说发送端发送的数据可以放在缓冲区里面，可以等待接收端去获取数据，而不是立刻需要接收端去获取数据。

不过由于缓冲区的大小是有限的，所以还是必须有接收端来接收数据的，否则缓冲区一满，数据发送端就无法再发送数据了。

注意：如果通道不带缓冲，发送方会阻塞直到接收方从通道中接收了值。如果通道带缓冲，发送方则会阻塞直到发送的值被拷贝到缓冲区内；如果缓冲区已满，则意味着需要等待直到某个接收方获取到一个值。接收方在有值可以接收之前会一直阻塞。

实例
package main

import "fmt"

func main() {
// 这里我们定义了一个可以存储整数类型的带缓冲通道
// 缓冲区大小为2
ch := make(chan int, 2)

        // 因为 ch 是带缓冲的通道，我们可以同时发送两个数据
        // 而不用立刻需要去同步读取数据
        ch <- 1
        ch <- 2

        // 获取这两个数据
        fmt.Println(<-ch)
        fmt.Println(<-ch)

}
执行输出结果为：

1
2
Go 遍历通道与关闭通道
Go 通过 range 关键字来实现遍历读取到的数据，类似于与数组或切片。格式如下：

v, ok := <-ch
如果通道接收不到数据后 ok 就为 false，这时通道就可以使用 close() 函数来关闭。

实例
package main

import (
"fmt"
)

func fibonacci(n int, c chan int) {
x, y := 0, 1
for i := 0; i < n; i++ {
c <- x
x, y = y, x+y
}
close(c)
}

func main() {
c := make(chan int, 10)
go fibonacci(cap(c), c)
// range 函数遍历每个从通道接收到的数据，因为 c 在发送完 10 个
// 数据之后就关闭了通道，所以这里我们 range 函数在接收到 10 个数据
// 之后就结束了。如果上面的 c 通道不关闭，那么 range 函数就不
// 会结束，从而在接收第 11 个数据的时候就阻塞了。
for i := range c {
fmt.Println(i)
}
}
执行输出结果为：

0
1
1
2
3
5
8
13
21
34

# Go Swagger

要安装 Go Swagger，请执行以下步骤：
1.使用 Go 工具链下载和安装 Go Swagger：
go install github.com/swaggo/swag/cmd/swag@latest

2.开发了新接口或者增减字段需要更新文档：
swag init -pd


#　Gorm

gorm https://www.w3cschool.cn/gormdoc/gormdoc-5lph3ltd.html
https://www.cnblogs.com/zisefeizhu/p/12788060.html

gorm系列-查询

目录
- Gorm查询
- 一般查询
- where条件
- 普通SQL查询
- Struch & Map 查询
- Not条件
- Or条件
- 内联条件
- 额外查询选项
- FirstOrInit
- Attrs
- Assign
- FirstOrCreate
- Attrs
- Assign
- 高级查询
- 子查询
- 选择字段
- 排序
- 数量
- 偏移
- 总数
- Group & Having
- 连接
- Pluck
- 扫描
- 链式操作相关
- 链式操作
- 立即执行方法
- 范围
- 多个立即执行方法

Gorm查询
一般查询
// 根据主键查询第一条记录
db.First(&user)
//// SELECT * FROM users ORDER BY id LIMIT 1;

// 随机获取一条记录
db.Take(&user)
//// SELECT * FROM users LIMIT 1;

// 根据主键查询最后一条记录
db.Last(&user)
//// SELECT * FROM users ORDER BY id DESC LIMIT 1;

// 查询所有的记录
db.Find(&users)
//// SELECT * FROM users;

// 查询指定的某条记录(仅当主键为整型时可用)
db.First(&user, 10)
//// SELECT * FROM users WHERE id = 10;

package main

import (
    "database/sql"
    "fmt"
    "github.com/jinzhu/gorm"
    _ "github.com/jinzhu/gorm/dialects/mysql"
)

//1. 定义模型
type User struct {
    ID int64
    //Name *string  `gorm:"default:'zisefeizhu'"`
    Name sql.NullString `gorm:"default:'zisefeizhu'"`
    Age byte
}

func main() {
    //2. 连接Mysql数据库
    db, err := gorm.Open("mysql","root:123456@tcp(127.0.0.1:3306)/db?charset=utf8mb4&parseTime=True&loc=Local")
    if err != nil {
        panic(err)
    }
    defer db.Close()
    //3. 把模型与数据库中的表对应起来
    db.AutoMigrate(&User{})

    //4. 创建结构体实例
    //u := User{Name: sql.NullString{"", false}, Age: 60}
    //fmt.Println(db.NewRecord(&u)) // 主键为空返回`true`
    //db.Debug().Create(&u)   // 在数据库中创建一条user记录
    //fmt.Println(db.NewRecord(u)) // 创建`user`后返回`false`

    //查询
    //var user User   //声明模型结构体变量类型user (文件夹A)
    //db.First(&user)  //（文件夹B）
    //user:main.User{ID:1, Name:sql.NullString{String:"zisefeizhu", Valid:true}, Age:0x1e}
    user := new(User)
    db.First(user)
    fmt.Printf("user:%#v\n",user)
    //user:&main.User{ID:1, Name:sql.NullString{String:"zisefeizhu", Valid:true}, Age:0x1e}

    //查询所有记录
    var users []User
    //users := make([]User, 10)
    db.Find(&users)
    fmt.Printf("user:%#v\n",users)
}

where条件
普通SQL查询
/ Get first matched record
db.Where("name = ?", "jinzhu").First(&user)
// SELECT * FROM users WHERE name = 'jinzhu' limit 1;

// Get all matched records
db.Where("name = ?", "jinzhu").Find(&users)
// SELECT * FROM users WHERE name = 'jinzhu';

// <>
db.Where("name <> ?", "jinzhu").Find(&users)
//SELECT * FROM users WHERE name <> 'jinzhu';

// IN
db.Where("name IN (?)", []string{"jinzhu", "jinzhu 2"}).Find(&users)
// SELECT * FROM users WHERE name in ('jinzhu','jinzhu 2');

// LIKE
db.Where("name LIKE ?", "%jin%").Find(&users)
// SELECT * FROM users WHERE name LIKE '%jin%';

// AND
db.Where("name = ? AND age >= ?", "jinzhu", "22").Find(&users)
// SELECT * FROM users WHERE name = 'jinzhu' AND age >= 22;

// Time
db.Where("updated_at > ?", lastWeek).Find(&users)
// SELECT * FROM users WHERE updated_at > '2000-01-01 00:00:00';

// BETWEEN
db.Where("created_at BETWEEN ? AND ?", lastWeek, today).Find(&users)
// SELECT * FROM users WHERE created_at BETWEEN '2000-01-01 00:00:00' AND '2000-01-08 00:00:00';

//查询where记录
    var users []User

    db.Where("name = ?", "zisefeizhu ").Find(&users)
    fmt.Printf("user:%#v\n",users)

Struch & Map 查询
// Struct
db.Where(&User{Name: "jinzhu", Age: 20}).First(&user)
// SELECT * FROM users WHERE name = "jinzhu" AND age = 20 LIMIT 1;

// Map
db.Where(map[string]interface{}{"name": "jinzhu", "age": 20}).Find(&users)
// SELECT * FROM users WHERE name = "jinzhu" AND age = 20;

// 主键的切片
db.Where([]int64{20, 21, 22}).Find(&users)
//SELECT * FROM users WHERE id IN (20, 21, 22);

注意：当通过结构体进行查询时，GORM将会只通过非零值字段查询，这意味着如果你的字段值为0，''，false或者其他零值时，将不会被用于构建查询条件。
db.Where(&User{Name: "jinzhu", Age: 0}).Find(&users)
// SELECT * FROM users WHERE name = "jinzhu";

可以使用指针或实现 Scanner/Valuer 接口来避免这个问题
// 使用指针
type User struct {
  gorm.Model
  Name string
  Age  *int
}

// 使用 Scanner/Valuer
type User struct {
  gorm.Model
  Name string
  Age  sql.NullInt64  // sql.NullInt64 实现了 Scanner/Valuer 接口
}

Not条件
作用与 Where 类似的情形
db.Not("name", "jinzhu").First(&user)
//// SELECT * FROM users WHERE name <> "jinzhu" LIMIT 1;

// Not In
db.Not("name", []string{"jinzhu", "jinzhu 2"}).Find(&users)
//// SELECT * FROM users WHERE name NOT IN ("jinzhu", "jinzhu 2");

// Not In slice of primary keys
db.Not([]int64{1,2,3}).First(&user)
//// SELECT * FROM users WHERE id NOT IN (1,2,3);

db.Not([]int64{}).First(&user)
//// SELECT * FROM users;

// Plain SQL
db.Not("name = ?", "jinzhu").First(&user)
//// SELECT * FROM users WHERE NOT(name = "jinzhu");

// Struct
db.Not(User{Name: "jinzhu"}).First(&user)
//// SELECT * FROM users WHERE name <> "jinzhu";

Or条件
db.Where("role = ?", "admin").Or("role = ?", "super_admin").Find(&users)
//// SELECT * FROM users WHERE role = 'admin' OR role = 'super_admin';

// Struct
db.Where("name = 'jinzhu'").Or(User{Name: "jinzhu 2"}).Find(&users)
//// SELECT * FROM users WHERE name = 'jinzhu' OR name = 'jinzhu 2';

// Map
db.Where("name = 'jinzhu'").Or(map[string]interface{}{"name": "jinzhu 2"}).Find(&users)
//// SELECT * FROM users WHERE name = 'jinzhu' OR name = 'jinzhu 2';

内联条件
作用与Where查询类似，当内联条件与多个立即执行方法一起使用时, 内联条件不会传递给后面的立即执行方法。
// 根据主键获取记录 (只适用于整形主键)
db.First(&user, 23)
//// SELECT * FROM users WHERE id = 23 LIMIT 1;
// 根据主键获取记录, 如果它是一个非整形主键
db.First(&user, "id = ?", "string_primary_key")
//// SELECT * FROM users WHERE id = 'string_primary_key' LIMIT 1;

// Plain SQL
db.Find(&user, "name = ?", "jinzhu")
//// SELECT * FROM users WHERE name = "jinzhu";

db.Find(&users, "name <> ? AND age > ?", "jinzhu", 20)
//// SELECT * FROM users WHERE name <> "jinzhu" AND age > 20;

// Struct
db.Find(&users, User{Age: 20})
//// SELECT * FROM users WHERE age = 20;

// Map
db.Find(&users, map[string]interface{}{"age": 20})
//// SELECT * FROM users WHERE age = 20;

额外查询选项
// 为查询 SQL 添加额外的 SQL 操作
db.Set("gorm:query_option", "FOR UPDATE").First(&user, 10)
//// SELECT * FROM users WHERE id = 10 FOR UPDATE;

FirstOrInit
获取匹配的第一条记录，否则根据给定的条件初始化一个新的对象 (仅支持 struct 和 map 条件)
//查询FirstOrInit记录
var user User
db.FirstOrInit(&user,User{Name: "小王子"})
fmt.Printf("user:%#v\n",user)
//user:main.User{ID:0, Name:"小王子", Age:0x15}

Attrs
如果记录未找到，将使用参数初始化 struct.
// 未找到
db.Where(User{Name: "non_existing"}).Attrs(User{Age: 20}).FirstOrInit(&user)
//// SELECT * FROM USERS WHERE name = 'non_existing';
//// user -> User{Name: "non_existing", Age: 20}

db.Where(User{Name: "non_existing"}).Attrs("age", 20).FirstOrInit(&user)
//// SELECT * FROM USERS WHERE name = 'non_existing';
//// user -> User{Name: "non_existing", Age: 20}

// 找到
db.Where(User{Name: "Jinzhu"}).Attrs(User{Age: 30}).FirstOrInit(&user)
//// SELECT * FROM USERS WHERE name = jinzhu';
//// user -> User{Id: 111, Name: "Jinzhu", Age: 20}

Assign
不管记录是否找到，都将参数赋值给 struct.
// 未找到
db.Where(User{Name: "non_existing"}).Assign(User{Age: 20}).FirstOrInit(&user)
//// user -> User{Name: "non_existing", Age: 20}

// 找到
db.Where(User{Name: "Jinzhu"}).Assign(User{Age: 30}).FirstOrInit(&user)
// SELECT * FROM USERS WHERE name = jinzhu';
// user -> User{Id: 111, Name: "Jinzhu", Age: 30}

FirstOrCreate
获取匹配的第一条记录, 否则根据给定的条件创建一个新的记录 (仅支持 struct 和 map 条件)
// 未找到
db.FirstOrCreate(&user, User{Name: "non_existing"})
//// INSERT INTO "users" (name) VALUES ("non_existing");
//// user -> User{Id: 112, Name: "non_existing"}

// 找到
db.Where(User{Name: "Jinzhu"}).FirstOrCreate(&user)
//// user -> User{Id: 111, Name: "Jinzhu"}

Attrs
如果记录未找到，将使用参数创建 struct 和记录.
 // 未找到
db.Where(User{Name: "non_existing"}).Attrs(User{Age: 20}).FirstOrCreate(&user)
//// SELECT * FROM users WHERE name = 'non_existing';
//// INSERT INTO "users" (name, age) VALUES ("non_existing", 20);
//// user -> User{Id: 112, Name: "non_existing", Age: 20}

// 找到
db.Where(User{Name: "jinzhu"}).Attrs(User{Age: 30}).FirstOrCreate(&user)
//// SELECT * FROM users WHERE name = 'jinzhu';
//// user -> User{Id: 111, Name: "jinzhu", Age: 20}

Assign
不管记录是否找到，都将参数赋值给 struct 并保存至数据库.
// 未找到
db.Where(User{Name: "non_existing"}).Assign(User{Age: 20}).FirstOrCreate(&user)
//// SELECT * FROM users WHERE name = 'non_existing';
//// INSERT INTO "users" (name, age) VALUES ("non_existing", 20);
//// user -> User{Id: 112, Name: "non_existing", Age: 20}

// 找到
db.Where(User{Name: "jinzhu"}).Assign(User{Age: 30}).FirstOrCreate(&user)
//// SELECT * FROM users WHERE name = 'jinzhu';
//// UPDATE users SET age=30 WHERE id = 111;
//// user -> User{Id: 111, Name: "jinzhu", Age: 30}

高级查询
子查询
基于 *gorm.expr 的子查询
db.Where("amount > ?", db.Table("orders").Select("AVG(amount)").Where("state = ?", "paid").SubQuery()).Find(&orders)
// SELECT * FROM "orders"  WHERE "orders"."deleted_at" IS NULL AND (amount > (SELECT AVG(amount) FROM "orders"  WHERE (state = 'paid')));

选择字段
Select，指定你想从数据库中检索出的字段，默认会选择全部字段。
db.Select("name, age").Find(&users)
//// SELECT name, age FROM users;

db.Select([]string{"name", "age"}).Find(&users)
//// SELECT name, age FROM users;

db.Table("users").Select("COALESCE(age,?)", 42).Rows()
//// SELECT COALESCE(age,'42') FROM users;

排序
Order，指定从数据库中检索出记录的顺序。设置第二个参数 reorder 为 true ，可以覆盖前面定义的排序条件。
db.Order("age desc, name").Find(&users)
//// SELECT * FROM users ORDER BY age desc, name;

// 多字段排序
db.Order("age desc").Order("name").Find(&users)
//// SELECT * FROM users ORDER BY age desc, name;

// 覆盖排序
db.Order("age desc").Find(&users1).Order("age", true).Find(&users2)
//// SELECT * FROM users ORDER BY age desc; (users1)
//// SELECT * FROM users ORDER BY age; (users2)

数量
Limit，指定从数据库检索出的最大记录数。
db.Limit(3).Find(&users)
//// SELECT * FROM users LIMIT 3;

// -1 取消 Limit 条件
db.Limit(10).Find(&users1).Limit(-1).Find(&users2)
//// SELECT * FROM users LIMIT 10; (users1)
//// SELECT * FROM users; (users2)

偏移
Offset，指定开始返回记录前要跳过的记录数。
db.Offset(3).Find(&users)
//// SELECT * FROM users OFFSET 3;

// -1 取消 Offset 条件
db.Offset(10).Find(&users1).Offset(-1).Find(&users2)
//// SELECT * FROM users OFFSET 10; (users1)
//// SELECT * FROM users; (users2)

总数
Count，该 model 能获取的记录总数
db.Where("name = ?", "jinzhu").Or("name = ?", "jinzhu 2").Find(&users).Count(&count)
//// SELECT * from USERS WHERE name = 'jinzhu' OR name = 'jinzhu 2'; (users)
//// SELECT count(*) FROM users WHERE name = 'jinzhu' OR name = 'jinzhu 2'; (count)

db.Model(&User{}).Where("name = ?", "jinzhu").Count(&count)
//// SELECT count(*) FROM users WHERE name = 'jinzhu'; (count)

db.Table("deleted_users").Count(&count)
//// SELECT count(*) FROM deleted_users;

db.Table("deleted_users").Select("count(distinct(name))").Count(&count)
//// SELECT count( distinct(name) ) FROM deleted_users; (count)

注意：Count 必须是链式查询的最后一个操作 ，因为它会覆盖前面的 SELECT，但如果里面使用了 count 时不会覆盖
Group & Having
rows, err := db.Table("orders").Select("date(created_at) as date, sum(amount) as total").Group("date(created_at)").Rows()
for rows.Next() {
  ...
}

// 使用Scan将多条结果扫描进事先准备好的结构体切片中
type Result struct {
    Date time.Time
    Total int
}
var rets []Result
db.Table("users").Select("date(created_at) as date, sum(age) as total").Group("date(created_at)").Scan(&rets)

rows, err := db.Table("orders").Select("date(created_at) as date, sum(amount) as total").Group("date(created_at)").Having("sum(amount) > ?", 100).Rows()
for rows.Next() {
  ...
}

type Result struct {
  Date  time.Time
  Total int64
}
db.Table("orders").Select("date(created_at) as date, sum(amount) as total").Group("date(created_at)").Having("sum(amount) > ?", 100).Scan(&results)

连接
Joins，指定连接条件
rows, err := db.Table("users").Select("users.name, emails.email").Joins("left join emails on emails.user_id = users.id").Rows()
for rows.Next() {
  ...
}

db.Table("users").Select("users.name, emails.email").Joins("left join emails on emails.user_id = users.id").Scan(&results)

// 多连接及参数
db.Joins("JOIN emails ON emails.user_id = users.id AND emails.email = ?", "jinzhu@example.org").Joins("JOIN credit_cards ON credit_cards.user_id = users.id").Where("credit_cards.number = ?", "411111111111").Find(&user)

Pluck
Pluck，查询 model 中的一个列作为切片，如果您想要查询多个列，您应该使用 Scan
var ages []int64
db.Find(&users).Pluck("age", &ages)

var names []string
db.Model(&User{}).Pluck("name", &names)

db.Table("deleted_users").Pluck("name", &names)

// 想查询多个字段？ 这样做：
db.Select("name, age").Find(&users)

扫描
Scan，扫描结果至一个 struct.
type Result struct {
  Name string
  Age  int
}

var result Result
db.Table("users").Select("name, age").Where("name = ?", "Antonio").Scan(&result)

var results []Result
db.Table("users").Select("name, age").Where("id > ?", 0).Scan(&results)

// 原生 SQL
db.Raw("SELECT name, age FROM users WHERE name = ?", "Antonio").Scan(&result)

链式操作相关
链式操作
Method Chaining，Gorm 实现了链式操作接口，所以你可以把代码写成这样：
// 创建一个查询
tx := db.Where("name = ?", "jinzhu")

// 添加更多条件
if someCondition {
  tx = tx.Where("age = ?", 20)
} else {
  tx = tx.Where("age = ?", 30)
}

if yetAnotherCondition {
  tx = tx.Where("active = ?", 1)
}

在调用立即执行方法前不会生成Query语句，借助这个特性你可以创建一个函数来处理一些通用逻辑。
立即执行方法
Immediate methods ，立即执行方法是指那些会立即生成SQL语句并发送到数据库的方法, 他们一般是CRUD方法，比如：
Create, First, Find, Take, Save, UpdateXXX, Delete, Scan, Row, Rows…
这有一个基于上面链式方法代码的立即执行方法的例子
tx.Find(&user)

生成的SQL语句如下：
SELECT * FROM users where name = 'jinzhu' AND age = 30 AND active = 1;

范围
Scopes，Scope是建立在链式操作的基础之上的。
基于它，你可以抽取一些通用逻辑，写出更多可重用的函数库。
func AmountGreaterThan1000(db *gorm.DB) *gorm.DB {
  return db.Where("amount > ?", 1000)
}

func PaidWithCreditCard(db *gorm.DB) *gorm.DB {
  return db.Where("pay_mode_sign = ?", "C")
}

func PaidWithCod(db *gorm.DB) *gorm.DB {
  return db.Where("pay_mode_sign = ?", "C")
}

func OrderStatus(status []string) func (db *gorm.DB) *gorm.DB {
  return func (db *gorm.DB) *gorm.DB {
    return db.Scopes(AmountGreaterThan1000).Where("status IN (?)", status)
  }
}

db.Scopes(AmountGreaterThan1000, PaidWithCreditCard).Find(&orders)
// 查找所有金额大于 1000 的信用卡订单

db.Scopes(AmountGreaterThan1000, PaidWithCod).Find(&orders)
// 查找所有金额大于 1000 的 COD 订单

db.Scopes(AmountGreaterThan1000, OrderStatus([]string{"paid", "shipped"})).Find(&orders)
// 查找所有金额大于 1000 且已付款或者已发货的订单

多个立即执行方法
Multiple Immediate Methods，在 GORM 中使用多个立即执行方法时，后一个立即执行方法会复用前一个立即执行方法的条件 (不包括内联条件) 。
db.Where("name LIKE ?", "jinzhu%").Find(&users, "id IN (?)", []int{1, 2, 3}).Count(&count)

生成的 Sql
SELECT * FROM users WHERE name LIKE 'jinzhu%' AND id IN (1, 2, 3)

SELECT count(*) FROM users WHERE name LIKE 'jinzhu%'