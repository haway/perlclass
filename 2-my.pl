#/usr/bin/perl
#
use strict;

# 用 $a 設定/取用 變數
# 單雙引號的用法跟 C++ 一樣，
# 單引號視為純字串
# 雙引號視為可包含其他變數，雙引號內特殊字元用 \ 跳脫

# 變數的使用不用宣告，也可強制規定一定要宣告變數。以下是非強制的作法
$a = '單引號的 $a';			# 單引號內不需跳脫
$b = "這是用 \$b 去包含 $a";	

print $b, "\n";

# 變數宣告, 用 my 關鍵字進行變數宣告
my $c = '';		#  一樣意思，my $c;
			# 或者給予不同的初始值 my $c = "abc123";
			# 有無空格無差 my $c="abc123";

# perl 預設不需先宣告變數，可利用模組改變 perl 的內建行為模式
# 請將第三行的 use strict; 的註解拿掉，執行 perl, 就會出現錯誤訊息。

