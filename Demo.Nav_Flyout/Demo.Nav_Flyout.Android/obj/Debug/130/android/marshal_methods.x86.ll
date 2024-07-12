; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [288 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 88
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 118
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 113
	i32 60940239, ; 3: I18N.Rare.dll => 0x3a1dfcf => 142
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 102
	i32 117431740, ; 5: System.Runtime.InteropServices => 0x6ffddbc => 131
	i32 120558881, ; 6: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 102
	i32 165246403, ; 7: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 69
	i32 182336117, ; 8: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 103
	i32 209399409, ; 9: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 67
	i32 220171995, ; 10: System.Diagnostics.Debug => 0xd1f8edb => 8
	i32 230216969, ; 11: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 83
	i32 230752869, ; 12: Microsoft.CSharp.dll => 0xdc10265 => 15
	i32 232815796, ; 13: System.Web.Services => 0xde07cb4 => 124
	i32 261689757, ; 14: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 72
	i32 278686392, ; 15: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 87
	i32 280482487, ; 16: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 81
	i32 287869112, ; 17: Syncfusion.SfChart.XForms.dll => 0x112888b8 => 33
	i32 318968648, ; 18: Xamarin.AndroidX.Activity.dll => 0x13031348 => 59
	i32 321597661, ; 19: System.Numerics => 0x132b30dd => 49
	i32 330147069, ; 20: Microsoft.SqlServer.Server => 0x13ada4fd => 25
	i32 337746723, ; 21: I18N.Other.dll => 0x14219b23 => 141
	i32 342366114, ; 22: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 85
	i32 385762202, ; 23: System.Memory.dll => 0x16fe439a => 47
	i32 412627527, ; 24: Demo.Nav_Flyout.Android => 0x18983247 => 0
	i32 441335492, ; 25: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 71
	i32 442521989, ; 26: Xamarin.Essentials => 0x1a605985 => 112
	i32 442565967, ; 27: System.Collections => 0x1a61054f => 6
	i32 450948140, ; 28: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 80
	i32 465846621, ; 29: mscorlib => 0x1bc4415d => 28
	i32 469710990, ; 30: System.dll => 0x1bff388e => 43
	i32 476646585, ; 31: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 81
	i32 485463106, ; 32: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 19
	i32 486930444, ; 33: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 92
	i32 526420162, ; 34: System.Transactions.dll => 0x1f6088c2 => 123
	i32 545304856, ; 35: System.Runtime.Extensions => 0x2080b118 => 134
	i32 548916678, ; 36: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 14
	i32 555173402, ; 37: Syncfusion.SfPicker.XForms.Android => 0x2117461a => 38
	i32 577335427, ; 38: System.Security.Cryptography.Cng => 0x22697083 => 130
	i32 605376203, ; 39: System.IO.Compression.FileSystem => 0x24154ecb => 121
	i32 627609679, ; 40: Xamarin.AndroidX.CustomView => 0x2568904f => 76
	i32 662205335, ; 41: System.Text.Encodings.Web.dll => 0x27787397 => 55
	i32 663517072, ; 42: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 108
	i32 666292255, ; 43: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 64
	i32 672442732, ; 44: System.Collections.Concurrent => 0x2814a96c => 5
	i32 690569205, ; 45: System.Xml.Linq.dll => 0x29293ff5 => 58
	i32 719061231, ; 46: Syncfusion.Core.XForms.dll => 0x2adc00ef => 30
	i32 722857257, ; 47: System.Runtime.Loader.dll => 0x2b15ed29 => 53
	i32 725851412, ; 48: I18N.West.dll => 0x2b439d14 => 143
	i32 775189201, ; 49: System.Data.SqlClient.dll => 0x2e3472d1 => 128
	i32 775507847, ; 50: System.IO.Compression => 0x2e394f87 => 120
	i32 809851609, ; 51: System.Drawing.Common.dll => 0x30455ad9 => 2
	i32 843511501, ; 52: Xamarin.AndroidX.Print => 0x3246f6cd => 99
	i32 928116545, ; 53: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 118
	i32 945617440, ; 54: I18N.CJK => 0x385cfa20 => 139
	i32 967690846, ; 55: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 85
	i32 974778368, ; 56: FormsViewGroup.dll => 0x3a19f000 => 12
	i32 975236339, ; 57: System.Diagnostics.Tracing => 0x3a20ecf3 => 132
	i32 992768348, ; 58: System.Collections.dll => 0x3b2c715c => 6
	i32 1012816738, ; 59: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 101
	i32 1035644815, ; 60: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 63
	i32 1042160112, ; 61: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 115
	i32 1052210849, ; 62: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 89
	i32 1062017875, ; 63: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 18
	i32 1098259244, ; 64: System => 0x41761b2c => 43
	i32 1138436374, ; 65: Microsoft.Data.SqlClient.dll => 0x43db2916 => 16
	i32 1175144683, ; 66: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 106
	i32 1178241025, ; 67: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 96
	i32 1204270330, ; 68: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 64
	i32 1266500507, ; 69: Demo.Nav_Flyout.dll => 0x4b7d439b => 11
	i32 1267360935, ; 70: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 107
	i32 1290254209, ; 71: I18N.Rare => 0x4ce7b781 => 142
	i32 1293217323, ; 72: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 78
	i32 1331773366, ; 73: Syncfusion.SfGauge.XForms => 0x4f613fb6 => 36
	i32 1364015309, ; 74: System.IO => 0x514d38cd => 136
	i32 1365406463, ; 75: System.ServiceModel.Internals.dll => 0x516272ff => 137
	i32 1368767823, ; 76: I18N.Other => 0x5195bd4f => 141
	i32 1376866003, ; 77: Xamarin.AndroidX.SavedState => 0x52114ed3 => 101
	i32 1379779777, ; 78: System.Resources.ResourceManager => 0x523dc4c1 => 4
	i32 1395857551, ; 79: Xamarin.AndroidX.Media.dll => 0x5333188f => 93
	i32 1406073936, ; 80: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 73
	i32 1411638395, ; 81: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 51
	i32 1457743152, ; 82: System.Runtime.Extensions.dll => 0x56e36530 => 134
	i32 1460219004, ; 83: Xamarin.Forms.Xaml => 0x57092c7c => 116
	i32 1460893475, ; 84: System.IdentityModel.Tokens.Jwt => 0x57137723 => 45
	i32 1462112819, ; 85: System.IO.Compression.dll => 0x57261233 => 120
	i32 1469204771, ; 86: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 62
	i32 1498168481, ; 87: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 20
	i32 1498503776, ; 88: Demo.Nav_Flyout.Android.dll => 0x59515a60 => 0
	i32 1516315406, ; 89: Syncfusion.Core.XForms.Android.dll => 0x5a61230e => 29
	i32 1520711082, ; 90: Syncfusion.SfChart.XForms.Android.dll => 0x5aa435aa => 32
	i32 1582305585, ; 91: Azure.Identity => 0x5e501131 => 10
	i32 1582372066, ; 92: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 77
	i32 1592978981, ; 93: System.Runtime.Serialization.dll => 0x5ef2ee25 => 54
	i32 1599450359, ; 94: I18N.MidEast.dll => 0x5f55acf7 => 140
	i32 1622152042, ; 95: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 91
	i32 1624863272, ; 96: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 110
	i32 1628113371, ; 97: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 23
	i32 1636350590, ; 98: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 75
	i32 1639515021, ; 99: System.Net.Http.dll => 0x61b9038d => 48
	i32 1657153582, ; 100: System.Runtime => 0x62c6282e => 52
	i32 1658241508, ; 101: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 104
	i32 1658251792, ; 102: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 117
	i32 1670060433, ; 103: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 72
	i32 1701541528, ; 104: System.Diagnostics.Debug.dll => 0x656b7698 => 8
	i32 1726116996, ; 105: System.Reflection.dll => 0x66e27484 => 133
	i32 1729485958, ; 106: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 68
	i32 1746316138, ; 107: Mono.Android.Export => 0x6816ab6a => 27
	i32 1766324549, ; 108: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 103
	i32 1776026572, ; 109: System.Core.dll => 0x69dc03cc => 41
	i32 1788241197, ; 110: Xamarin.AndroidX.Fragment => 0x6a96652d => 80
	i32 1794500907, ; 111: Microsoft.Identity.Client.dll => 0x6af5e92b => 17
	i32 1796167890, ; 112: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 14
	i32 1798312337, ; 113: Syncfusion.SfGauge.XForms.dll => 0x6b301191 => 36
	i32 1808609942, ; 114: Xamarin.AndroidX.Loader => 0x6bcd3296 => 91
	i32 1813201214, ; 115: Xamarin.Google.Android.Material => 0x6c13413e => 117
	i32 1818569960, ; 116: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 97
	i32 1867746548, ; 117: Xamarin.Essentials.dll => 0x6f538cf4 => 112
	i32 1871986876, ; 118: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 23
	i32 1878053835, ; 119: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 116
	i32 1885316902, ; 120: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 65
	i32 1900610850, ; 121: System.Resources.ResourceManager.dll => 0x71490522 => 4
	i32 1914624963, ; 122: System.IdentityModel.dll => 0x721edbc3 => 44
	i32 1919157823, ; 123: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 94
	i32 1936121326, ; 124: Syncfusion.SfPicker.XForms.dll => 0x7366ddee => 39
	i32 1986222447, ; 125: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 24
	i32 2011961780, ; 126: System.Buffers.dll => 0x77ec19b4 => 40
	i32 2019465201, ; 127: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 89
	i32 2040764568, ; 128: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 18
	i32 2055257422, ; 129: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 86
	i32 2067863569, ; 130: I18N.dll => 0x7b411811 => 138
	i32 2079903147, ; 131: System.Runtime.dll => 0x7bf8cdab => 52
	i32 2090596640, ; 132: System.Numerics.Vectors => 0x7c9bf920 => 50
	i32 2097448633, ; 133: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 82
	i32 2126786730, ; 134: Xamarin.Forms.Platform.Android => 0x7ec430aa => 114
	i32 2133113917, ; 135: Syncfusion.SfChart.XForms => 0x7f24bc3d => 33
	i32 2201231467, ; 136: System.Net.Http => 0x8334206b => 48
	i32 2217644978, ; 137: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 106
	i32 2244775296, ; 138: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 92
	i32 2253551641, ; 139: Microsoft.IdentityModel.Protocols => 0x86527819 => 22
	i32 2256548716, ; 140: Xamarin.AndroidX.MultiDex => 0x8680336c => 94
	i32 2261435625, ; 141: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 84
	i32 2272153315, ; 142: Syncfusion.SfPicker.Android.dll => 0x876e4ee3 => 37
	i32 2279755925, ; 143: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 100
	i32 2315684594, ; 144: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 60
	i32 2343171156, ; 145: Syncfusion.Core.XForms => 0x8ba9f454 => 30
	i32 2354730003, ; 146: Syncfusion.Licensing => 0x8c5a5413 => 31
	i32 2369706906, ; 147: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 21
	i32 2409053734, ; 148: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 98
	i32 2465532216, ; 149: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 71
	i32 2471841756, ; 150: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 151: Java.Interop.dll => 0x93918882 => 13
	i32 2501346920, ; 152: System.Data.DataSetExtensions => 0x95178668 => 119
	i32 2505896520, ; 153: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 88
	i32 2521135010, ; 154: I18N.CJK.dll => 0x964577a2 => 139
	i32 2562349572, ; 155: Microsoft.CSharp => 0x98ba5a04 => 15
	i32 2570120770, ; 156: System.Text.Encodings.Web => 0x9930ee42 => 55
	i32 2581274016, ; 157: I18N.West => 0x99db1da0 => 143
	i32 2581819634, ; 158: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 107
	i32 2620871830, ; 159: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 75
	i32 2624644809, ; 160: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 79
	i32 2624721879, ; 161: Syncfusion.SfChart.XForms.Android => 0x9c7213d7 => 32
	i32 2628210652, ; 162: System.Memory.Data => 0x9ca74fdc => 46
	i32 2633051222, ; 163: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 87
	i32 2640290731, ; 164: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 21
	i32 2640706905, ; 165: Azure.Core => 0x9d65fd59 => 9
	i32 2660759594, ; 166: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 126
	i32 2663698177, ; 167: System.Runtime.Loader => 0x9ec4cf01 => 53
	i32 2677098746, ; 168: Azure.Identity.dll => 0x9f9148fa => 10
	i32 2693849962, ; 169: System.IO.dll => 0xa090e36a => 136
	i32 2701096212, ; 170: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 104
	i32 2719963679, ; 171: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 130
	i32 2724914548, ; 172: Demo.Nav_Flyout => 0xa26ae574 => 11
	i32 2732626843, ; 173: Xamarin.AndroidX.Activity => 0xa2e0939b => 59
	i32 2737747696, ; 174: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 62
	i32 2740051746, ; 175: Microsoft.Identity.Client => 0xa351df22 => 17
	i32 2755098380, ; 176: Microsoft.SqlServer.Server.dll => 0xa437770c => 25
	i32 2765824710, ; 177: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 129
	i32 2766581644, ; 178: Xamarin.Forms.Core => 0xa4e6af8c => 113
	i32 2778768386, ; 179: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 109
	i32 2784016111, ; 180: Syncfusion.SfPicker.XForms => 0xa5f0b6ef => 39
	i32 2810250172, ; 181: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 73
	i32 2819470561, ; 182: System.Xml.dll => 0xa80db4e1 => 57
	i32 2853208004, ; 183: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 109
	i32 2855708567, ; 184: Xamarin.AndroidX.Transition => 0xaa36a797 => 105
	i32 2861098320, ; 185: Mono.Android.Export.dll => 0xaa88e550 => 27
	i32 2867946736, ; 186: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 126
	i32 2868557005, ; 187: Syncfusion.Licensing.dll => 0xaafab4cd => 31
	i32 2874148507, ; 188: Syncfusion.Core.XForms.Android => 0xab50069b => 29
	i32 2901442782, ; 189: System.Reflection => 0xacf080de => 133
	i32 2903344695, ; 190: System.ComponentModel.Composition => 0xad0d8637 => 122
	i32 2905242038, ; 191: mscorlib.dll => 0xad2a79b6 => 28
	i32 2916838712, ; 192: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 110
	i32 2919462931, ; 193: System.Numerics.Vectors.dll => 0xae037813 => 50
	i32 2921128767, ; 194: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 61
	i32 2978675010, ; 195: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 78
	i32 3021342700, ; 196: Syncfusion.SfGauge.Android => 0xb41607ec => 34
	i32 3024354802, ; 197: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 83
	i32 3033605958, ; 198: System.Memory.Data.dll => 0xb4d12746 => 46
	i32 3044182254, ; 199: FormsViewGroup => 0xb57288ee => 12
	i32 3057625584, ; 200: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 95
	i32 3084678329, ; 201: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 24
	i32 3111772706, ; 202: System.Runtime.Serialization => 0xb979e222 => 54
	i32 3124832203, ; 203: System.Threading.Tasks.Extensions => 0xba4127cb => 125
	i32 3147165239, ; 204: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 132
	i32 3204380047, ; 205: System.Data.dll => 0xbefef58f => 3
	i32 3211777861, ; 206: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 77
	i32 3220365878, ; 207: System.Threading => 0xbff2e236 => 7
	i32 3247949154, ; 208: Mono.Security => 0xc197c562 => 135
	i32 3253402803, ; 209: System.IdentityModel => 0xc1eafcb3 => 44
	i32 3258312781, ; 210: Xamarin.AndroidX.CardView => 0xc235e84d => 68
	i32 3265893370, ; 211: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 125
	i32 3267021929, ; 212: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 66
	i32 3270722617, ; 213: Syncfusion.SfPicker.Android => 0xc2f34439 => 37
	i32 3312457198, ; 214: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 20
	i32 3317135071, ; 215: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 76
	i32 3317144872, ; 216: System.Data => 0xc5b79d28 => 3
	i32 3338512932, ; 217: Syncfusion.SfGauge.XForms.Android.dll => 0xc6fdaa24 => 35
	i32 3340431453, ; 218: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 65
	i32 3346324047, ; 219: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 96
	i32 3353484488, ; 220: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 82
	i32 3353544232, ; 221: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 111
	i32 3358260929, ; 222: System.Text.Json => 0xc82afec1 => 56
	i32 3362522851, ; 223: Xamarin.AndroidX.Core => 0xc86c06e3 => 74
	i32 3366347497, ; 224: Java.Interop => 0xc8a662e9 => 13
	i32 3374879918, ; 225: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 22
	i32 3374999561, ; 226: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 100
	i32 3395150330, ; 227: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 51
	i32 3404865022, ; 228: System.ServiceModel.Internals => 0xcaf21dfe => 137
	i32 3407215217, ; 229: Xamarin.CommunityToolkit => 0xcb15fa71 => 111
	i32 3429136800, ; 230: System.Xml => 0xcc6479a0 => 57
	i32 3430777524, ; 231: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 232: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 79
	i32 3476120550, ; 233: Mono.Android => 0xcf3163e6 => 26
	i32 3485117614, ; 234: System.Text.Json.dll => 0xcfbaacae => 56
	i32 3486566296, ; 235: System.Transactions => 0xcfd0c798 => 123
	i32 3493954962, ; 236: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 70
	i32 3501239056, ; 237: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 66
	i32 3509114376, ; 238: System.Xml.Linq => 0xd128d608 => 58
	i32 3515174580, ; 239: System.Security.dll => 0xd1854eb4 => 127
	i32 3536029504, ; 240: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 114
	i32 3540208256, ; 241: I18N.MidEast => 0xd3034a80 => 140
	i32 3545306353, ; 242: Microsoft.Data.SqlClient => 0xd35114f1 => 16
	i32 3561949811, ; 243: Azure.Core.dll => 0xd44f0a73 => 9
	i32 3567349600, ; 244: System.ComponentModel.Composition.dll => 0xd4a16f60 => 122
	i32 3579244613, ; 245: I18N => 0xd556f045 => 138
	i32 3618140916, ; 246: Xamarin.AndroidX.Preference => 0xd7a872f4 => 98
	i32 3627220390, ; 247: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 99
	i32 3632359727, ; 248: Xamarin.Forms.Platform => 0xd881692f => 115
	i32 3633644679, ; 249: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 61
	i32 3636014592, ; 250: Syncfusion.SfGauge.Android.dll => 0xd8b92e00 => 34
	i32 3641597786, ; 251: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 86
	i32 3672681054, ; 252: Mono.Android.dll => 0xdae8aa5e => 26
	i32 3676310014, ; 253: System.Web.Services.dll => 0xdb2009fe => 124
	i32 3682565725, ; 254: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 67
	i32 3684561358, ; 255: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 70
	i32 3689375977, ; 256: System.Drawing.Common => 0xdbe768e9 => 2
	i32 3700591436, ; 257: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 19
	i32 3718780102, ; 258: Xamarin.AndroidX.Annotation => 0xdda814c6 => 60
	i32 3724971120, ; 259: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 95
	i32 3748608112, ; 260: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 42
	i32 3758932259, ; 261: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 84
	i32 3786282454, ; 262: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 69
	i32 3822602673, ; 263: Xamarin.AndroidX.Media => 0xe3d849b1 => 93
	i32 3829621856, ; 264: System.Numerics.dll => 0xe4436460 => 49
	i32 3834665012, ; 265: System.Data.SqlClient => 0xe4905834 => 128
	i32 3836070875, ; 266: Syncfusion.SfGauge.XForms.Android => 0xe4a5cbdb => 35
	i32 3849253459, ; 267: System.Runtime.InteropServices.dll => 0xe56ef253 => 131
	i32 3885922214, ; 268: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 105
	i32 3896106733, ; 269: System.Collections.Concurrent.dll => 0xe839deed => 5
	i32 3896760992, ; 270: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 74
	i32 3920810846, ; 271: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 121
	i32 3921031405, ; 272: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 108
	i32 3931092270, ; 273: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 97
	i32 3945713374, ; 274: System.Data.DataSetExtensions.dll => 0xeb2ecede => 119
	i32 3949143839, ; 275: Syncfusion.SfPicker.XForms.Android.dll => 0xeb63271f => 38
	i32 3953953790, ; 276: System.Text.Encoding.CodePages => 0xebac8bfe => 129
	i32 3955647286, ; 277: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 63
	i32 4025784931, ; 278: System.Memory => 0xeff49a63 => 47
	i32 4073602200, ; 279: System.Threading.dll => 0xf2ce3c98 => 7
	i32 4105002889, ; 280: Mono.Security.dll => 0xf4ad5f89 => 135
	i32 4151237749, ; 281: System.Core => 0xf76edc75 => 41
	i32 4182413190, ; 282: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 90
	i32 4185676441, ; 283: System.Security => 0xf97c5a99 => 127
	i32 4213026141, ; 284: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 42
	i32 4260525087, ; 285: System.Buffers => 0xfdf2741f => 40
	i32 4263231520, ; 286: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 45
	i32 4292120959 ; 287: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 90
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [288 x i32] [
	i32 88, i32 118, i32 113, i32 142, i32 102, i32 131, i32 102, i32 69, ; 0..7
	i32 103, i32 67, i32 8, i32 83, i32 15, i32 124, i32 72, i32 87, ; 8..15
	i32 81, i32 33, i32 59, i32 49, i32 25, i32 141, i32 85, i32 47, ; 16..23
	i32 0, i32 71, i32 112, i32 6, i32 80, i32 28, i32 43, i32 81, ; 24..31
	i32 19, i32 92, i32 123, i32 134, i32 14, i32 38, i32 130, i32 121, ; 32..39
	i32 76, i32 55, i32 108, i32 64, i32 5, i32 58, i32 30, i32 53, ; 40..47
	i32 143, i32 128, i32 120, i32 2, i32 99, i32 118, i32 139, i32 85, ; 48..55
	i32 12, i32 132, i32 6, i32 101, i32 63, i32 115, i32 89, i32 18, ; 56..63
	i32 43, i32 16, i32 106, i32 96, i32 64, i32 11, i32 107, i32 142, ; 64..71
	i32 78, i32 36, i32 136, i32 137, i32 141, i32 101, i32 4, i32 93, ; 72..79
	i32 73, i32 51, i32 134, i32 116, i32 45, i32 120, i32 62, i32 20, ; 80..87
	i32 0, i32 29, i32 32, i32 10, i32 77, i32 54, i32 140, i32 91, ; 88..95
	i32 110, i32 23, i32 75, i32 48, i32 52, i32 104, i32 117, i32 72, ; 96..103
	i32 8, i32 133, i32 68, i32 27, i32 103, i32 41, i32 80, i32 17, ; 104..111
	i32 14, i32 36, i32 91, i32 117, i32 97, i32 112, i32 23, i32 116, ; 112..119
	i32 65, i32 4, i32 44, i32 94, i32 39, i32 24, i32 40, i32 89, ; 120..127
	i32 18, i32 86, i32 138, i32 52, i32 50, i32 82, i32 114, i32 33, ; 128..135
	i32 48, i32 106, i32 92, i32 22, i32 94, i32 84, i32 37, i32 100, ; 136..143
	i32 60, i32 30, i32 31, i32 21, i32 98, i32 71, i32 1, i32 13, ; 144..151
	i32 119, i32 88, i32 139, i32 15, i32 55, i32 143, i32 107, i32 75, ; 152..159
	i32 79, i32 32, i32 46, i32 87, i32 21, i32 9, i32 126, i32 53, ; 160..167
	i32 10, i32 136, i32 104, i32 130, i32 11, i32 59, i32 62, i32 17, ; 168..175
	i32 25, i32 129, i32 113, i32 109, i32 39, i32 73, i32 57, i32 109, ; 176..183
	i32 105, i32 27, i32 126, i32 31, i32 29, i32 133, i32 122, i32 28, ; 184..191
	i32 110, i32 50, i32 61, i32 78, i32 34, i32 83, i32 46, i32 12, ; 192..199
	i32 95, i32 24, i32 54, i32 125, i32 132, i32 3, i32 77, i32 7, ; 200..207
	i32 135, i32 44, i32 68, i32 125, i32 66, i32 37, i32 20, i32 76, ; 208..215
	i32 3, i32 35, i32 65, i32 96, i32 82, i32 111, i32 56, i32 74, ; 216..223
	i32 13, i32 22, i32 100, i32 51, i32 137, i32 111, i32 57, i32 1, ; 224..231
	i32 79, i32 26, i32 56, i32 123, i32 70, i32 66, i32 58, i32 127, ; 232..239
	i32 114, i32 140, i32 16, i32 9, i32 122, i32 138, i32 98, i32 99, ; 240..247
	i32 115, i32 61, i32 34, i32 86, i32 26, i32 124, i32 67, i32 70, ; 248..255
	i32 2, i32 19, i32 60, i32 95, i32 42, i32 84, i32 69, i32 93, ; 256..263
	i32 49, i32 128, i32 35, i32 131, i32 105, i32 5, i32 74, i32 121, ; 264..271
	i32 108, i32 97, i32 119, i32 38, i32 129, i32 63, i32 47, i32 7, ; 272..279
	i32 135, i32 41, i32 90, i32 127, i32 42, i32 40, i32 45, i32 90 ; 288..287
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
