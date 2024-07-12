; ModuleID = 'obj\Debug\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [288 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 79
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 26
	i64 156291772854606065, ; 2: I18N.West => 0x22b428a125098f1 => 143
	i64 210515253464952879, ; 3: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 69
	i64 232391251801502327, ; 4: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 101
	i64 295915112840604065, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 102
	i64 562355463320435893, ; 6: Syncfusion.SfGauge.XForms.dll => 0x7cde3507cb6fcb5 => 36
	i64 634308326490598313, ; 7: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 88
	i64 670564002081277297, ; 8: Microsoft.Identity.Client.dll => 0x94e526837380571 => 17
	i64 702024105029695270, ; 9: System.Drawing.Common => 0x9be17343c0e7726 => 2
	i64 720058930071658100, ; 10: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 82
	i64 872800313462103108, ; 11: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 78
	i64 937459790420187032, ; 12: Microsoft.SqlServer.Server.dll => 0xd0286b667351798 => 25
	i64 940822596282819491, ; 13: System.Transactions => 0xd0e792aa81923a3 => 123
	i64 996343623809489702, ; 14: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 115
	i64 1000557547492888992, ; 15: Mono.Security.dll => 0xde2b1c9cba651a0 => 135
	i64 1060858978308751610, ; 16: Azure.Core.dll => 0xeb8ed9ebee080fa => 9
	i64 1119666314076464151, ; 17: Demo.Nav_Flyout.Android.dll => 0xf89da94957fa417 => 0
	i64 1120440138749646132, ; 18: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 117
	i64 1315114680217950157, ; 19: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 64
	i64 1425944114962822056, ; 20: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 54
	i64 1493452499941003209, ; 21: I18N.CJK => 0x14b9cf22d3e70fc9 => 139
	i64 1624659445732251991, ; 22: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 62
	i64 1628611045998245443, ; 23: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 90
	i64 1636321030536304333, ; 24: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 83
	i64 1743969030606105336, ; 25: System.Memory.dll => 0x1833d297e88f2af8 => 47
	i64 1783757343580445821, ; 26: System.IdentityModel.dll => 0x18c12dda6d9b5c7d => 44
	i64 1795316252682057001, ; 27: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 63
	i64 1836611346387731153, ; 28: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 101
	i64 1865037103900624886, ; 29: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 14
	i64 1875917498431009007, ; 30: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 60
	i64 1981742497975770890, ; 31: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 89
	i64 1986553961460820075, ; 32: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 111
	i64 2040001226662520565, ; 33: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 125
	i64 2076847052340733488, ; 34: Syncfusion.Core.XForms => 0x1cd27163f7962630 => 30
	i64 2136356949452311481, ; 35: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 94
	i64 2165725771938924357, ; 36: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 67
	i64 2262844636196693701, ; 37: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 78
	i64 2284400282711631002, ; 38: System.Web.Services => 0x1fb3d1f42fd4249a => 124
	i64 2287834202362508563, ; 39: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 5
	i64 2316229908869312383, ; 40: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x2024e6d4884a6f7f => 23
	i64 2329709569556905518, ; 41: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 86
	i64 2335503487726329082, ; 42: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 55
	i64 2337758774805907496, ; 43: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 51
	i64 2469392061734276978, ; 44: Syncfusion.Core.XForms.Android.dll => 0x22450aff2ad74f72 => 29
	i64 2470498323731680442, ; 45: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 73
	i64 2479423007379663237, ; 46: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 106
	i64 2497223385847772520, ; 47: System.Runtime => 0x22a7eb7046413568 => 52
	i64 2547086958574651984, ; 48: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 59
	i64 2592350477072141967, ; 49: System.Xml.dll => 0x23f9e10627330e8f => 57
	i64 2612152650457191105, ; 50: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 24
	i64 2624866290265602282, ; 51: mscorlib.dll => 0x246d65fbde2db8ea => 28
	i64 2694427813909235223, ; 52: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 98
	i64 2783046991838674048, ; 53: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 51
	i64 2789714023057451704, ; 54: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 20
	i64 2960931600190307745, ; 55: Xamarin.Forms.Core => 0x2917579a49927da1 => 113
	i64 3017704767998173186, ; 56: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 117
	i64 3217286949467762653, ; 57: Syncfusion.SfChart.XForms.Android.dll => 0x2ca6196f4386afdd => 32
	i64 3289520064315143713, ; 58: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 85
	i64 3303437397778967116, ; 59: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 61
	i64 3311221304742556517, ; 60: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 50
	i64 3402534845034375023, ; 61: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 45
	i64 3493805808809882663, ; 62: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 104
	i64 3522470458906976663, ; 63: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 103
	i64 3531994851595924923, ; 64: System.Numerics => 0x31042a9aade235bb => 49
	i64 3571415421602489686, ; 65: System.Runtime.dll => 0x319037675df7e556 => 52
	i64 3572576518857361216, ; 66: I18N => 0x3194576a63650740 => 138
	i64 3716579019761409177, ; 67: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 68: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 100
	i64 3772598417116884899, ; 69: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 79
	i64 3966267475168208030, ; 70: System.Memory => 0x370b03412596249e => 47
	i64 4204580399898516257, ; 71: Syncfusion.SfGauge.XForms.Android => 0x3a59ab98cd855b21 => 35
	i64 4525561845656915374, ; 72: System.ServiceModel.Internals => 0x3ece06856b710dae => 137
	i64 4620536241703500132, ; 73: System.Data.SqlClient.dll => 0x401f713b2e8e3964 => 128
	i64 4636684751163556186, ; 74: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 108
	i64 4782108999019072045, ; 75: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 66
	i64 4794310189461587505, ; 76: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 59
	i64 4795410492532947900, ; 77: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 103
	i64 4853321196694829351, ; 78: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 53
	i64 4906396365959678531, ; 79: Syncfusion.SfPicker.XForms => 0x4417057fe84b4a43 => 39
	i64 5081566143765835342, ; 80: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 4
	i64 5099468265966638712, ; 81: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 4
	i64 5142919913060024034, ; 82: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 114
	i64 5203618020066742981, ; 83: Xamarin.Essentials => 0x4836f704f0e652c5 => 112
	i64 5205316157927637098, ; 84: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 92
	i64 5266851800019912408, ; 85: System.Data.SqlClient => 0x49179dcea0d046d8 => 128
	i64 5290786973231294105, ; 86: System.Runtime.Loader => 0x496ca6b869b72699 => 53
	i64 5348796042099802469, ; 87: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 93
	i64 5376510917114486089, ; 88: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 106
	i64 5398069113008343190, ; 89: I18N.West.dll => 0x4ae9cb4211dec896 => 143
	i64 5408338804355907810, ; 90: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 105
	i64 5446034149219586269, ; 91: System.Diagnostics.Debug => 0x4b94333452e150dd => 8
	i64 5451019430259338467, ; 92: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 72
	i64 5507995362134886206, ; 93: System.Core.dll => 0x4c705499688c873e => 41
	i64 5692067934154308417, ; 94: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 110
	i64 5757522595884336624, ; 95: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 70
	i64 5814345312393086621, ; 96: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 98
	i64 5848635860608528381, ; 97: Syncfusion.SfPicker.Android => 0x512a8753ec2eaffd => 37
	i64 5878178646025157113, ; 98: I18N.Other => 0x51937c55aa9db9f9 => 141
	i64 5896680224035167651, ; 99: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 87
	i64 6085203216496545422, ; 100: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 115
	i64 6086316965293125504, ; 101: FormsViewGroup.dll => 0x5476f10882baef80 => 12
	i64 6222399776351216807, ; 102: System.Text.Json.dll => 0x565a67a0ffe264a7 => 56
	i64 6319713645133255417, ; 103: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 88
	i64 6401687960814735282, ; 104: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 86
	i64 6504860066809920875, ; 105: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 67
	i64 6548213210057960872, ; 106: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 76
	i64 6591024623626361694, ; 107: System.Web.Services.dll => 0x5b7805f9751a1b5e => 124
	i64 6617685658146568858, ; 108: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 129
	i64 6659513131007730089, ; 109: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 82
	i64 6662274349274916432, ; 110: Syncfusion.SfGauge.Android.dll => 0x5c752738f0ba6650 => 34
	i64 6876862101832370452, ; 111: System.Xml.Linq => 0x5f6f85a57d108914 => 58
	i64 6894844156784520562, ; 112: System.Numerics.Vectors => 0x5faf683aead1ad72 => 50
	i64 6929694340031562077, ; 113: Syncfusion.SfGauge.XForms => 0x602b3849839dc15d => 36
	i64 6960678745840231429, ; 114: Demo.Nav_Flyout.Android => 0x60994c70a96b2405 => 0
	i64 7026608356547306326, ; 115: Syncfusion.Core.XForms.dll => 0x618387125bcb2356 => 30
	i64 7036436454368433159, ; 116: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 84
	i64 7103753931438454322, ; 117: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 81
	i64 7338192458477945005, ; 118: System.Reflection => 0x65d67f295d0740ad => 133
	i64 7348123982286201829, ; 119: System.Memory.Data.dll => 0x65f9c7d471b2a3e5 => 46
	i64 7488575175965059935, ; 120: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 58
	i64 7496222613193209122, ; 121: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 45
	i64 7635363394907363464, ; 122: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 113
	i64 7637365915383206639, ; 123: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 112
	i64 7654504624184590948, ; 124: System.Net.Http => 0x6a3a4366801b8264 => 48
	i64 7735176074855944702, ; 125: Microsoft.CSharp => 0x6b58dda848e391fe => 15
	i64 7747785289863678794, ; 126: I18N.Rare => 0x6b85a9abee524b4a => 142
	i64 7767211987177345230, ; 127: Syncfusion.SfPicker.Android.dll => 0x6bcaae265edc90ce => 37
	i64 7820441508502274321, ; 128: System.Data => 0x6c87ca1e14ff8111 => 3
	i64 7836164640616011524, ; 129: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 62
	i64 7867610841234767674, ; 130: I18N.Rare.dll => 0x6d2f5e602ecf7f3a => 142
	i64 8044118961405839122, ; 131: System.ComponentModel.Composition => 0x6fa2739369944712 => 122
	i64 8064050204834738623, ; 132: System.Collections.dll => 0x6fe942efa61731bf => 6
	i64 8083354569033831015, ; 133: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 85
	i64 8087206902342787202, ; 134: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 42
	i64 8103644804370223335, ; 135: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 119
	i64 8167236081217502503, ; 136: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 13
	i64 8185542183669246576, ; 137: System.Collections => 0x7198e33f4794aa70 => 6
	i64 8234598844743906698, ; 138: Microsoft.Identity.Client.Extensions.Msal.dll => 0x72472c0540cd758a => 18
	i64 8265650852517415196, ; 139: I18N.dll => 0x72b57da835b4891c => 138
	i64 8290740647658429042, ; 140: System.Runtime.Extensions => 0x730ea0b15c929a72 => 134
	i64 8398329775253868912, ; 141: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 71
	i64 8400357532724379117, ; 142: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 97
	i64 8513291706828295435, ; 143: Microsoft.SqlServer.Server => 0x762549b3b6c78d0b => 25
	i64 8601935802264776013, ; 144: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 105
	i64 8618070908946355220, ; 145: I18N.MidEast => 0x779989d4c8e01414 => 140
	i64 8626175481042262068, ; 146: Java.Interop => 0x77b654e585b55834 => 13
	i64 8638972117149407195, ; 147: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 15
	i64 8639588376636138208, ; 148: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 96
	i64 8684531736582871431, ; 149: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 121
	i64 8725526185868997716, ; 150: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 42
	i64 8955323522379913726, ; 151: Microsoft.Identity.Client => 0x7c47b34bd82799fe => 17
	i64 9034105039140296321, ; 152: Syncfusion.SfChart.XForms => 0x7d5f96ab19861681 => 33
	i64 9052662452269567435, ; 153: Microsoft.IdentityModel.Protocols => 0x7da184898b0b4dcb => 22
	i64 9312692141327339315, ; 154: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 110
	i64 9324707631942237306, ; 155: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 63
	i64 9427266486299436557, ; 156: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 21
	i64 9584643793929893533, ; 157: System.IO.dll => 0x85037ebfbbd7f69d => 136
	i64 9653670174411988578, ; 158: Syncfusion.SfPicker.XForms.Android => 0x85f8b9e0549c1e62 => 38
	i64 9662334977499516867, ; 159: System.Numerics.dll => 0x8617827802b0cfc3 => 49
	i64 9678050649315576968, ; 160: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 73
	i64 9711637524876806384, ; 161: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 93
	i64 9808709177481450983, ; 162: Mono.Android.dll => 0x881f890734e555e7 => 26
	i64 9819168441846169364, ; 163: Microsoft.IdentityModel.Protocols.dll => 0x8844b1ac75f77f14 => 22
	i64 9825649861376906464, ; 164: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 70
	i64 9834056768316610435, ; 165: System.Transactions.dll => 0x8879968718899783 => 123
	i64 9982512874400855535, ; 166: Demo.Nav_Flyout.dll => 0x8a890291d46d35ef => 11
	i64 9998632235833408227, ; 167: Mono.Security => 0x8ac2470b209ebae3 => 135
	i64 10038780035334861115, ; 168: System.Net.Http.dll => 0x8b50e941206af13b => 48
	i64 10229024438826829339, ; 169: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 76
	i64 10376576884623852283, ; 170: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 104
	i64 10430153318873392755, ; 171: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 74
	i64 10447083246144586668, ; 172: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 14
	i64 10714184849103829812, ; 173: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 134
	i64 10841941198020570030, ; 174: I18N.MidEast.dll => 0x9676501397b06bae => 140
	i64 10847732767863316357, ; 175: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 64
	i64 10889380495983713167, ; 176: Microsoft.Data.SqlClient.dll => 0x971ed9dddf2d1b8f => 16
	i64 10964653383833615866, ; 177: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 132
	i64 11023048688141570732, ; 178: System.Core => 0x98f9bc61168392ac => 41
	i64 11037814507248023548, ; 179: System.Xml => 0x992e31d0412bf7fc => 57
	i64 11122995063473561350, ; 180: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 111
	i64 11162124722117608902, ; 181: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 109
	i64 11340910727871153756, ; 182: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 75
	i64 11392833485892708388, ; 183: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 99
	i64 11446671985764974897, ; 184: Mono.Android.Export => 0x9edabf8623efc131 => 27
	i64 11485890710487134646, ; 185: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 131
	i64 11517440453979132662, ; 186: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 19
	i64 11529969570048099689, ; 187: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 109
	i64 11578238080964724296, ; 188: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 84
	i64 11580057168383206117, ; 189: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 60
	i64 11597940890313164233, ; 190: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 191: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 81
	i64 12011556116648931059, ; 192: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 126
	i64 12063623837170009990, ; 193: System.Security => 0xa76a99f6ce740786 => 127
	i64 12102847907131387746, ; 194: System.Buffers => 0xa7f5f40c43256f62 => 40
	i64 12137774235383566651, ; 195: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 107
	i64 12145679461940342714, ; 196: System.Text.Json => 0xa88e1f1ebcb62fba => 56
	i64 12198439281774268251, ; 197: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0xa9498fe58c538f5b => 23
	i64 12232655692966228690, ; 198: Syncfusion.SfGauge.XForms.Android.dll => 0xa9c31f8a96e972d2 => 35
	i64 12271526709721397701, ; 199: Syncfusion.SfPicker.XForms.dll => 0xaa4d388670a979c5 => 39
	i64 12439275739440478309, ; 200: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 20
	i64 12451044538927396471, ; 201: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 80
	i64 12466513435562512481, ; 202: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 91
	i64 12487638416075308985, ; 203: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 77
	i64 12493213219680520345, ; 204: Microsoft.Data.SqlClient => 0xad60cf3b3e458899 => 16
	i64 12538491095302438457, ; 205: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 68
	i64 12550732019250633519, ; 206: System.IO.Compression => 0xae2d28465e8e1b2f => 120
	i64 12700543734426720211, ; 207: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 69
	i64 12708238894395270091, ; 208: System.IO => 0xb05cbbf17d3ba3cb => 136
	i64 12963446364377008305, ; 209: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 2
	i64 12986822521348711275, ; 210: I18N.Other.dll => 0xb43a7646aa08636b => 141
	i64 13370592475155966277, ; 211: System.Runtime.Serialization => 0xb98de304062ea945 => 54
	i64 13401370062847626945, ; 212: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 107
	i64 13404347523447273790, ; 213: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 71
	i64 13454009404024712428, ; 214: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 118
	i64 13491513212026656886, ; 215: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 65
	i64 13572454107664307259, ; 216: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 100
	i64 13622732128915678507, ; 217: Syncfusion.Core.XForms.Android => 0xbd0daab1e651e52b => 29
	i64 13647894001087880694, ; 218: System.Data.dll => 0xbd670f48cb071df6 => 3
	i64 13742054908850494594, ; 219: Azure.Identity => 0xbeb596218df25c82 => 10
	i64 13959074834287824816, ; 220: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 80
	i64 13967638549803255703, ; 221: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 114
	i64 13970307180132182141, ; 222: Syncfusion.Licensing => 0xc1e0805ccade287d => 31
	i64 14124974489674258913, ; 223: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 68
	i64 14125464355221830302, ; 224: System.Threading.dll => 0xc407bafdbc707a9e => 7
	i64 14172845254133543601, ; 225: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 94
	i64 14212104595480609394, ; 226: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 130
	i64 14261073672896646636, ; 227: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 99
	i64 14327695147300244862, ; 228: System.Reflection.dll => 0xc6d632d338eb4d7e => 133
	i64 14486659737292545672, ; 229: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 87
	i64 14538127318538747197, ; 230: Syncfusion.Licensing.dll => 0xc9c1cdc518e77d3d => 31
	i64 14551742072151931844, ; 231: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 55
	i64 14613964489274772158, ; 232: Syncfusion.SfGauge.Android => 0xcacf3b465f654abe => 34
	i64 14644440854989303794, ; 233: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 92
	i64 14648804764802849406, ; 234: Azure.Identity.dll => 0xcb4b0252261f9a7e => 10
	i64 14792063746108907174, ; 235: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 118
	i64 14852515768018889994, ; 236: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 75
	i64 14935719434541007538, ; 237: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 129
	i64 14987728460634540364, ; 238: System.IO.Compression.dll => 0xcfff1ba06622494c => 120
	i64 14988210264188246988, ; 239: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 77
	i64 15136253973786843953, ; 240: System.IdentityModel => 0xd20ec6cb39a8db31 => 44
	i64 15138356091203993725, ; 241: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 19
	i64 15370334346939861994, ; 242: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 74
	i64 15383240894167415497, ; 243: System.Memory.Data => 0xd57c4016df1c7ac9 => 46
	i64 15582737692548360875, ; 244: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 90
	i64 15609085926864131306, ; 245: System.dll => 0xd89e9cf3334914ea => 43
	i64 15728157151893626066, ; 246: I18N.CJK.dll => 0xda45a3992a239cd2 => 139
	i64 15755165575806366062, ; 247: Demo.Nav_Flyout => 0xdaa5979de366b16e => 11
	i64 15777549416145007739, ; 248: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 102
	i64 15810740023422282496, ; 249: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 116
	i64 15937190497610202713, ; 250: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 130
	i64 15963349826457351533, ; 251: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 125
	i64 16150183177059685051, ; 252: Syncfusion.SfChart.XForms.dll => 0xe020fa083e21d2bb => 33
	i64 16154507427712707110, ; 253: System => 0xe03056ea4e39aa26 => 43
	i64 16496768397145114574, ; 254: Mono.Android.Export.dll => 0xe4f04b741db987ce => 27
	i64 16552427520763284698, ; 255: Syncfusion.SfChart.XForms.Android => 0xe5b60921b17eccda => 32
	i64 16565028646146589191, ; 256: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 122
	i64 16621146507174665210, ; 257: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 72
	i64 16677317093839702854, ; 258: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 97
	i64 16787552971463248837, ; 259: Syncfusion.SfPicker.XForms.Android.dll => 0xe8f95e7bb81ecbc5 => 38
	i64 16822611501064131242, ; 260: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 119
	i64 16833383113903931215, ; 261: mscorlib => 0xe99c30c1484d7f4f => 28
	i64 16945858842201062480, ; 262: Azure.Core => 0xeb2bc8d57f4e7c50 => 9
	i64 17024911836938395553, ; 263: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 61
	i64 17031351772568316411, ; 264: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 95
	i64 17037200463775726619, ; 265: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 83
	i64 17137864900836977098, ; 266: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 24
	i64 17197986060146327831, ; 267: Microsoft.Identity.Client.Extensions.Msal => 0xeeab8533ef244117 => 18
	i64 17333249706306540043, ; 268: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 132
	i64 17523946658117960076, ; 269: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 126
	i64 17544493274320527064, ; 270: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 66
	i64 17685921127322830888, ; 271: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 8
	i64 17704177640604968747, ; 272: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 91
	i64 17710060891934109755, ; 273: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 89
	i64 17712670374920797664, ; 274: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 131
	i64 17790600151040787804, ; 275: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 21
	i64 17838668724098252521, ; 276: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 40
	i64 17882897186074144999, ; 277: FormsViewGroup => 0xf82cd03e3ac830e7 => 12
	i64 17892495832318972303, ; 278: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 116
	i64 17928294245072900555, ; 279: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 121
	i64 18025913125965088385, ; 280: System.Threading => 0xfa28e87b91334681 => 7
	i64 18116111925905154859, ; 281: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 65
	i64 18121036031235206392, ; 282: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 95
	i64 18129453464017766560, ; 283: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 137
	i64 18245806341561545090, ; 284: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 5
	i64 18305135509493619199, ; 285: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 96
	i64 18318849532986632368, ; 286: System.Security.dll => 0xfe39a097c37fa8b0 => 127
	i64 18380184030268848184 ; 287: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 108
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [288 x i32] [
	i32 79, i32 26, i32 143, i32 69, i32 101, i32 102, i32 36, i32 88, ; 0..7
	i32 17, i32 2, i32 82, i32 78, i32 25, i32 123, i32 115, i32 135, ; 8..15
	i32 9, i32 0, i32 117, i32 64, i32 54, i32 139, i32 62, i32 90, ; 16..23
	i32 83, i32 47, i32 44, i32 63, i32 101, i32 14, i32 60, i32 89, ; 24..31
	i32 111, i32 125, i32 30, i32 94, i32 67, i32 78, i32 124, i32 5, ; 32..39
	i32 23, i32 86, i32 55, i32 51, i32 29, i32 73, i32 106, i32 52, ; 40..47
	i32 59, i32 57, i32 24, i32 28, i32 98, i32 51, i32 20, i32 113, ; 48..55
	i32 117, i32 32, i32 85, i32 61, i32 50, i32 45, i32 104, i32 103, ; 56..63
	i32 49, i32 52, i32 138, i32 1, i32 100, i32 79, i32 47, i32 35, ; 64..71
	i32 137, i32 128, i32 108, i32 66, i32 59, i32 103, i32 53, i32 39, ; 72..79
	i32 4, i32 4, i32 114, i32 112, i32 92, i32 128, i32 53, i32 93, ; 80..87
	i32 106, i32 143, i32 105, i32 8, i32 72, i32 41, i32 110, i32 70, ; 88..95
	i32 98, i32 37, i32 141, i32 87, i32 115, i32 12, i32 56, i32 88, ; 96..103
	i32 86, i32 67, i32 76, i32 124, i32 129, i32 82, i32 34, i32 58, ; 104..111
	i32 50, i32 36, i32 0, i32 30, i32 84, i32 81, i32 133, i32 46, ; 112..119
	i32 58, i32 45, i32 113, i32 112, i32 48, i32 15, i32 142, i32 37, ; 120..127
	i32 3, i32 62, i32 142, i32 122, i32 6, i32 85, i32 42, i32 119, ; 128..135
	i32 13, i32 6, i32 18, i32 138, i32 134, i32 71, i32 97, i32 25, ; 136..143
	i32 105, i32 140, i32 13, i32 15, i32 96, i32 121, i32 42, i32 17, ; 144..151
	i32 33, i32 22, i32 110, i32 63, i32 21, i32 136, i32 38, i32 49, ; 152..159
	i32 73, i32 93, i32 26, i32 22, i32 70, i32 123, i32 11, i32 135, ; 160..167
	i32 48, i32 76, i32 104, i32 74, i32 14, i32 134, i32 140, i32 64, ; 168..175
	i32 16, i32 132, i32 41, i32 57, i32 111, i32 109, i32 75, i32 99, ; 176..183
	i32 27, i32 131, i32 19, i32 109, i32 84, i32 60, i32 1, i32 81, ; 184..191
	i32 126, i32 127, i32 40, i32 107, i32 56, i32 23, i32 35, i32 39, ; 192..199
	i32 20, i32 80, i32 91, i32 77, i32 16, i32 68, i32 120, i32 69, ; 200..207
	i32 136, i32 2, i32 141, i32 54, i32 107, i32 71, i32 118, i32 65, ; 208..215
	i32 100, i32 29, i32 3, i32 10, i32 80, i32 114, i32 31, i32 68, ; 216..223
	i32 7, i32 94, i32 130, i32 99, i32 133, i32 87, i32 31, i32 55, ; 224..231
	i32 34, i32 92, i32 10, i32 118, i32 75, i32 129, i32 120, i32 77, ; 232..239
	i32 44, i32 19, i32 74, i32 46, i32 90, i32 43, i32 139, i32 11, ; 240..247
	i32 102, i32 116, i32 130, i32 125, i32 33, i32 43, i32 27, i32 32, ; 248..255
	i32 122, i32 72, i32 97, i32 38, i32 119, i32 28, i32 9, i32 61, ; 256..263
	i32 95, i32 83, i32 24, i32 18, i32 132, i32 126, i32 66, i32 8, ; 264..271
	i32 91, i32 89, i32 131, i32 21, i32 40, i32 12, i32 116, i32 121, ; 272..279
	i32 7, i32 65, i32 95, i32 137, i32 5, i32 96, i32 127, i32 108 ; 288..287
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
