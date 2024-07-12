; ModuleID = 'obj\Release\130\android\marshal_methods.x86.ll'
source_filename = "obj\Release\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [174 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 74
	i32 57263871, ; 1: Xamarin.Forms.Core.dll => 0x369c6ff => 69
	i32 60940239, ; 2: I18N.Rare.dll => 0x3a1dfcf => 85
	i32 182336117, ; 3: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 65
	i32 209399409, ; 4: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 51
	i32 230752869, ; 5: Microsoft.CSharp.dll => 0xdc10265 => 9
	i32 287869112, ; 6: Syncfusion.SfChart.XForms.dll => 0x112888b8 => 27
	i32 318968648, ; 7: Xamarin.AndroidX.Activity.dll => 0x13031348 => 48
	i32 321597661, ; 8: System.Numerics => 0x132b30dd => 41
	i32 330147069, ; 9: Microsoft.SqlServer.Server => 0x13ada4fd => 19
	i32 337746723, ; 10: I18N.Other.dll => 0x14219b23 => 84
	i32 342366114, ; 11: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 59
	i32 412627527, ; 12: Demo.Nav_Flyout.Android => 0x18983247 => 0
	i32 442521989, ; 13: Xamarin.Essentials => 0x1a605985 => 68
	i32 450948140, ; 14: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 57
	i32 465846621, ; 15: mscorlib => 0x1bc4415d => 22
	i32 469710990, ; 16: System.dll => 0x1bff388e => 37
	i32 485463106, ; 17: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 13
	i32 526420162, ; 18: System.Transactions.dll => 0x1f6088c2 => 75
	i32 548916678, ; 19: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 8
	i32 555173402, ; 20: Syncfusion.SfPicker.XForms.Android => 0x2117461a => 32
	i32 627609679, ; 21: Xamarin.AndroidX.CustomView => 0x2568904f => 55
	i32 662205335, ; 22: System.Text.Encodings.Web.dll => 0x27787397 => 44
	i32 690569205, ; 23: System.Xml.Linq.dll => 0x29293ff5 => 47
	i32 719061231, ; 24: Syncfusion.Core.XForms.dll => 0x2adc00ef => 24
	i32 725851412, ; 25: I18N.West.dll => 0x2b439d14 => 86
	i32 809851609, ; 26: System.Drawing.Common.dll => 0x30455ad9 => 1
	i32 928116545, ; 27: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 74
	i32 945617440, ; 28: I18N.CJK => 0x385cfa20 => 82
	i32 967690846, ; 29: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 59
	i32 974778368, ; 30: FormsViewGroup.dll => 0x3a19f000 => 6
	i32 1012816738, ; 31: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 64
	i32 1035644815, ; 32: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 50
	i32 1042160112, ; 33: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 71
	i32 1052210849, ; 34: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 61
	i32 1062017875, ; 35: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 12
	i32 1098259244, ; 36: System => 0x41761b2c => 37
	i32 1138436374, ; 37: Microsoft.Data.SqlClient.dll => 0x43db2916 => 10
	i32 1266500507, ; 38: Demo.Nav_Flyout.dll => 0x4b7d439b => 5
	i32 1290254209, ; 39: I18N.Rare => 0x4ce7b781 => 85
	i32 1293217323, ; 40: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 56
	i32 1331773366, ; 41: Syncfusion.SfGauge.XForms => 0x4f613fb6 => 30
	i32 1365406463, ; 42: System.ServiceModel.Internals.dll => 0x516272ff => 80
	i32 1368767823, ; 43: I18N.Other => 0x5195bd4f => 84
	i32 1376866003, ; 44: Xamarin.AndroidX.SavedState => 0x52114ed3 => 64
	i32 1406073936, ; 45: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 53
	i32 1411638395, ; 46: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 42
	i32 1460219004, ; 47: Xamarin.Forms.Xaml => 0x57092c7c => 72
	i32 1460893475, ; 48: System.IdentityModel.Tokens.Jwt => 0x57137723 => 38
	i32 1469204771, ; 49: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 49
	i32 1498168481, ; 50: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 14
	i32 1498503776, ; 51: Demo.Nav_Flyout.Android.dll => 0x59515a60 => 0
	i32 1516315406, ; 52: Syncfusion.Core.XForms.Android.dll => 0x5a61230e => 23
	i32 1520711082, ; 53: Syncfusion.SfChart.XForms.Android.dll => 0x5aa435aa => 26
	i32 1582305585, ; 54: Azure.Identity => 0x5e501131 => 4
	i32 1592978981, ; 55: System.Runtime.Serialization.dll => 0x5ef2ee25 => 43
	i32 1599450359, ; 56: I18N.MidEast.dll => 0x5f55acf7 => 83
	i32 1622152042, ; 57: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 62
	i32 1628113371, ; 58: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 17
	i32 1639515021, ; 59: System.Net.Http.dll => 0x61b9038d => 40
	i32 1658251792, ; 60: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 73
	i32 1729485958, ; 61: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 52
	i32 1746316138, ; 62: Mono.Android.Export => 0x6816ab6a => 21
	i32 1766324549, ; 63: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 65
	i32 1776026572, ; 64: System.Core.dll => 0x69dc03cc => 35
	i32 1788241197, ; 65: Xamarin.AndroidX.Fragment => 0x6a96652d => 57
	i32 1794500907, ; 66: Microsoft.Identity.Client.dll => 0x6af5e92b => 11
	i32 1796167890, ; 67: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 8
	i32 1798312337, ; 68: Syncfusion.SfGauge.XForms.dll => 0x6b301191 => 30
	i32 1808609942, ; 69: Xamarin.AndroidX.Loader => 0x6bcd3296 => 62
	i32 1813201214, ; 70: Xamarin.Google.Android.Material => 0x6c13413e => 73
	i32 1867746548, ; 71: Xamarin.Essentials.dll => 0x6f538cf4 => 68
	i32 1871986876, ; 72: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 17
	i32 1878053835, ; 73: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 72
	i32 1936121326, ; 74: Syncfusion.SfPicker.XForms.dll => 0x7366ddee => 33
	i32 1986222447, ; 75: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 18
	i32 2011961780, ; 76: System.Buffers.dll => 0x77ec19b4 => 34
	i32 2019465201, ; 77: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 61
	i32 2040764568, ; 78: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 12
	i32 2055257422, ; 79: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 60
	i32 2067863569, ; 80: I18N.dll => 0x7b411811 => 81
	i32 2097448633, ; 81: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 58
	i32 2126786730, ; 82: Xamarin.Forms.Platform.Android => 0x7ec430aa => 70
	i32 2133113917, ; 83: Syncfusion.SfChart.XForms => 0x7f24bc3d => 27
	i32 2201231467, ; 84: System.Net.Http => 0x8334206b => 40
	i32 2253551641, ; 85: Microsoft.IdentityModel.Protocols => 0x86527819 => 16
	i32 2272153315, ; 86: Syncfusion.SfPicker.Android.dll => 0x876e4ee3 => 31
	i32 2279755925, ; 87: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 63
	i32 2343171156, ; 88: Syncfusion.Core.XForms => 0x8ba9f454 => 24
	i32 2354730003, ; 89: Syncfusion.Licensing => 0x8c5a5413 => 25
	i32 2369706906, ; 90: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 15
	i32 2475788418, ; 91: Java.Interop.dll => 0x93918882 => 7
	i32 2521135010, ; 92: I18N.CJK.dll => 0x964577a2 => 82
	i32 2562349572, ; 93: Microsoft.CSharp => 0x98ba5a04 => 9
	i32 2570120770, ; 94: System.Text.Encodings.Web => 0x9930ee42 => 44
	i32 2581274016, ; 95: I18N.West => 0x99db1da0 => 86
	i32 2624721879, ; 96: Syncfusion.SfChart.XForms.Android => 0x9c7213d7 => 26
	i32 2628210652, ; 97: System.Memory.Data => 0x9ca74fdc => 39
	i32 2640290731, ; 98: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 15
	i32 2640706905, ; 99: Azure.Core => 0x9d65fd59 => 3
	i32 2677098746, ; 100: Azure.Identity.dll => 0x9f9148fa => 4
	i32 2724914548, ; 101: Demo.Nav_Flyout => 0xa26ae574 => 5
	i32 2732626843, ; 102: Xamarin.AndroidX.Activity => 0xa2e0939b => 48
	i32 2737747696, ; 103: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 49
	i32 2740051746, ; 104: Microsoft.Identity.Client => 0xa351df22 => 11
	i32 2755098380, ; 105: Microsoft.SqlServer.Server.dll => 0xa437770c => 19
	i32 2765824710, ; 106: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 78
	i32 2766581644, ; 107: Xamarin.Forms.Core => 0xa4e6af8c => 69
	i32 2778768386, ; 108: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 66
	i32 2784016111, ; 109: Syncfusion.SfPicker.XForms => 0xa5f0b6ef => 33
	i32 2810250172, ; 110: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 53
	i32 2819470561, ; 111: System.Xml.dll => 0xa80db4e1 => 46
	i32 2853208004, ; 112: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 66
	i32 2861098320, ; 113: Mono.Android.Export.dll => 0xaa88e550 => 21
	i32 2868557005, ; 114: Syncfusion.Licensing.dll => 0xaafab4cd => 25
	i32 2874148507, ; 115: Syncfusion.Core.XForms.Android => 0xab50069b => 23
	i32 2905242038, ; 116: mscorlib.dll => 0xad2a79b6 => 22
	i32 2978675010, ; 117: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 56
	i32 3021342700, ; 118: Syncfusion.SfGauge.Android => 0xb41607ec => 28
	i32 3033605958, ; 119: System.Memory.Data.dll => 0xb4d12746 => 39
	i32 3044182254, ; 120: FormsViewGroup => 0xb57288ee => 6
	i32 3084678329, ; 121: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 18
	i32 3111772706, ; 122: System.Runtime.Serialization => 0xb979e222 => 43
	i32 3124832203, ; 123: System.Threading.Tasks.Extensions => 0xba4127cb => 76
	i32 3204380047, ; 124: System.Data.dll => 0xbefef58f => 2
	i32 3247949154, ; 125: Mono.Security => 0xc197c562 => 79
	i32 3258312781, ; 126: Xamarin.AndroidX.CardView => 0xc235e84d => 52
	i32 3265893370, ; 127: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 76
	i32 3270722617, ; 128: Syncfusion.SfPicker.Android => 0xc2f34439 => 31
	i32 3312457198, ; 129: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 14
	i32 3317135071, ; 130: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 55
	i32 3317144872, ; 131: System.Data => 0xc5b79d28 => 2
	i32 3338512932, ; 132: Syncfusion.SfGauge.XForms.Android.dll => 0xc6fdaa24 => 29
	i32 3353484488, ; 133: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 58
	i32 3353544232, ; 134: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 67
	i32 3358260929, ; 135: System.Text.Json => 0xc82afec1 => 45
	i32 3362522851, ; 136: Xamarin.AndroidX.Core => 0xc86c06e3 => 54
	i32 3366347497, ; 137: Java.Interop => 0xc8a662e9 => 7
	i32 3374879918, ; 138: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 16
	i32 3374999561, ; 139: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 63
	i32 3395150330, ; 140: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 42
	i32 3404865022, ; 141: System.ServiceModel.Internals => 0xcaf21dfe => 80
	i32 3407215217, ; 142: Xamarin.CommunityToolkit => 0xcb15fa71 => 67
	i32 3429136800, ; 143: System.Xml => 0xcc6479a0 => 46
	i32 3476120550, ; 144: Mono.Android => 0xcf3163e6 => 20
	i32 3485117614, ; 145: System.Text.Json.dll => 0xcfbaacae => 45
	i32 3486566296, ; 146: System.Transactions => 0xcfd0c798 => 75
	i32 3509114376, ; 147: System.Xml.Linq => 0xd128d608 => 47
	i32 3515174580, ; 148: System.Security.dll => 0xd1854eb4 => 77
	i32 3536029504, ; 149: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 70
	i32 3540208256, ; 150: I18N.MidEast => 0xd3034a80 => 83
	i32 3545306353, ; 151: Microsoft.Data.SqlClient => 0xd35114f1 => 10
	i32 3561949811, ; 152: Azure.Core.dll => 0xd44f0a73 => 3
	i32 3579244613, ; 153: I18N => 0xd556f045 => 81
	i32 3632359727, ; 154: Xamarin.Forms.Platform => 0xd881692f => 71
	i32 3636014592, ; 155: Syncfusion.SfGauge.Android.dll => 0xd8b92e00 => 28
	i32 3641597786, ; 156: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 60
	i32 3672681054, ; 157: Mono.Android.dll => 0xdae8aa5e => 20
	i32 3682565725, ; 158: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 51
	i32 3689375977, ; 159: System.Drawing.Common => 0xdbe768e9 => 1
	i32 3700591436, ; 160: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 13
	i32 3748608112, ; 161: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 36
	i32 3829621856, ; 162: System.Numerics.dll => 0xe4436460 => 41
	i32 3836070875, ; 163: Syncfusion.SfGauge.XForms.Android => 0xe4a5cbdb => 29
	i32 3896760992, ; 164: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 54
	i32 3949143839, ; 165: Syncfusion.SfPicker.XForms.Android.dll => 0xeb63271f => 32
	i32 3953953790, ; 166: System.Text.Encoding.CodePages => 0xebac8bfe => 78
	i32 3955647286, ; 167: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 50
	i32 4105002889, ; 168: Mono.Security.dll => 0xf4ad5f89 => 79
	i32 4151237749, ; 169: System.Core => 0xf76edc75 => 35
	i32 4185676441, ; 170: System.Security => 0xf97c5a99 => 77
	i32 4213026141, ; 171: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 36
	i32 4260525087, ; 172: System.Buffers => 0xfdf2741f => 34
	i32 4263231520 ; 173: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 38
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [174 x i32] [
	i32 74, i32 69, i32 85, i32 65, i32 51, i32 9, i32 27, i32 48, ; 0..7
	i32 41, i32 19, i32 84, i32 59, i32 0, i32 68, i32 57, i32 22, ; 8..15
	i32 37, i32 13, i32 75, i32 8, i32 32, i32 55, i32 44, i32 47, ; 16..23
	i32 24, i32 86, i32 1, i32 74, i32 82, i32 59, i32 6, i32 64, ; 24..31
	i32 50, i32 71, i32 61, i32 12, i32 37, i32 10, i32 5, i32 85, ; 32..39
	i32 56, i32 30, i32 80, i32 84, i32 64, i32 53, i32 42, i32 72, ; 40..47
	i32 38, i32 49, i32 14, i32 0, i32 23, i32 26, i32 4, i32 43, ; 48..55
	i32 83, i32 62, i32 17, i32 40, i32 73, i32 52, i32 21, i32 65, ; 56..63
	i32 35, i32 57, i32 11, i32 8, i32 30, i32 62, i32 73, i32 68, ; 64..71
	i32 17, i32 72, i32 33, i32 18, i32 34, i32 61, i32 12, i32 60, ; 72..79
	i32 81, i32 58, i32 70, i32 27, i32 40, i32 16, i32 31, i32 63, ; 80..87
	i32 24, i32 25, i32 15, i32 7, i32 82, i32 9, i32 44, i32 86, ; 88..95
	i32 26, i32 39, i32 15, i32 3, i32 4, i32 5, i32 48, i32 49, ; 96..103
	i32 11, i32 19, i32 78, i32 69, i32 66, i32 33, i32 53, i32 46, ; 104..111
	i32 66, i32 21, i32 25, i32 23, i32 22, i32 56, i32 28, i32 39, ; 112..119
	i32 6, i32 18, i32 43, i32 76, i32 2, i32 79, i32 52, i32 76, ; 120..127
	i32 31, i32 14, i32 55, i32 2, i32 29, i32 58, i32 67, i32 45, ; 128..135
	i32 54, i32 7, i32 16, i32 63, i32 42, i32 80, i32 67, i32 46, ; 136..143
	i32 20, i32 45, i32 75, i32 47, i32 77, i32 70, i32 83, i32 10, ; 144..151
	i32 3, i32 81, i32 71, i32 28, i32 60, i32 20, i32 51, i32 1, ; 152..159
	i32 13, i32 36, i32 41, i32 29, i32 54, i32 32, i32 78, i32 50, ; 160..167
	i32 79, i32 35, i32 77, i32 36, i32 34, i32 38 ; 168..173
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
