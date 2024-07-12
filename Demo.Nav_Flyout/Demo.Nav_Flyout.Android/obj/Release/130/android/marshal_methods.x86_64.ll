; ModuleID = 'obj\Release\130\android\marshal_methods.x86_64.ll'
source_filename = "obj\Release\130\android\marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [174 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 20
	i64 156291772854606065, ; 1: I18N.West => 0x22b428a125098f1 => 86
	i64 232391251801502327, ; 2: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 64
	i64 562355463320435893, ; 3: Syncfusion.SfGauge.XForms.dll => 0x7cde3507cb6fcb5 => 30
	i64 670564002081277297, ; 4: Microsoft.Identity.Client.dll => 0x94e526837380571 => 11
	i64 702024105029695270, ; 5: System.Drawing.Common => 0x9be17343c0e7726 => 1
	i64 720058930071658100, ; 6: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 58
	i64 872800313462103108, ; 7: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 56
	i64 937459790420187032, ; 8: Microsoft.SqlServer.Server.dll => 0xd0286b667351798 => 19
	i64 940822596282819491, ; 9: System.Transactions => 0xd0e792aa81923a3 => 75
	i64 996343623809489702, ; 10: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 71
	i64 1000557547492888992, ; 11: Mono.Security.dll => 0xde2b1c9cba651a0 => 79
	i64 1060858978308751610, ; 12: Azure.Core.dll => 0xeb8ed9ebee080fa => 3
	i64 1119666314076464151, ; 13: Demo.Nav_Flyout.Android.dll => 0xf89da94957fa417 => 0
	i64 1120440138749646132, ; 14: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 73
	i64 1425944114962822056, ; 15: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 43
	i64 1493452499941003209, ; 16: I18N.CJK => 0x14b9cf22d3e70fc9 => 82
	i64 1624659445732251991, ; 17: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 49
	i64 1795316252682057001, ; 18: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 50
	i64 1836611346387731153, ; 19: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 64
	i64 1865037103900624886, ; 20: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 8
	i64 1981742497975770890, ; 21: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 61
	i64 1986553961460820075, ; 22: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 67
	i64 2040001226662520565, ; 23: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 76
	i64 2076847052340733488, ; 24: Syncfusion.Core.XForms => 0x1cd27163f7962630 => 24
	i64 2165725771938924357, ; 25: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 51
	i64 2262844636196693701, ; 26: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 56
	i64 2316229908869312383, ; 27: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x2024e6d4884a6f7f => 17
	i64 2329709569556905518, ; 28: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 60
	i64 2335503487726329082, ; 29: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 44
	i64 2337758774805907496, ; 30: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 42
	i64 2469392061734276978, ; 31: Syncfusion.Core.XForms.Android.dll => 0x22450aff2ad74f72 => 23
	i64 2470498323731680442, ; 32: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 53
	i64 2547086958574651984, ; 33: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 48
	i64 2592350477072141967, ; 34: System.Xml.dll => 0x23f9e10627330e8f => 46
	i64 2612152650457191105, ; 35: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 18
	i64 2624866290265602282, ; 36: mscorlib.dll => 0x246d65fbde2db8ea => 22
	i64 2783046991838674048, ; 37: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 42
	i64 2789714023057451704, ; 38: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 14
	i64 2960931600190307745, ; 39: Xamarin.Forms.Core => 0x2917579a49927da1 => 69
	i64 3017704767998173186, ; 40: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 73
	i64 3217286949467762653, ; 41: Syncfusion.SfChart.XForms.Android.dll => 0x2ca6196f4386afdd => 26
	i64 3289520064315143713, ; 42: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 59
	i64 3402534845034375023, ; 43: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 38
	i64 3522470458906976663, ; 44: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 65
	i64 3531994851595924923, ; 45: System.Numerics => 0x31042a9aade235bb => 41
	i64 3572576518857361216, ; 46: I18N => 0x3194576a63650740 => 81
	i64 3727469159507183293, ; 47: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 63
	i64 4204580399898516257, ; 48: Syncfusion.SfGauge.XForms.Android => 0x3a59ab98cd855b21 => 29
	i64 4525561845656915374, ; 49: System.ServiceModel.Internals => 0x3ece06856b710dae => 80
	i64 4794310189461587505, ; 50: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 48
	i64 4795410492532947900, ; 51: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 65
	i64 4906396365959678531, ; 52: Syncfusion.SfPicker.XForms => 0x4417057fe84b4a43 => 33
	i64 5142919913060024034, ; 53: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 70
	i64 5203618020066742981, ; 54: Xamarin.Essentials => 0x4836f704f0e652c5 => 68
	i64 5398069113008343190, ; 55: I18N.West.dll => 0x4ae9cb4211dec896 => 86
	i64 5507995362134886206, ; 56: System.Core.dll => 0x4c705499688c873e => 35
	i64 5848635860608528381, ; 57: Syncfusion.SfPicker.Android => 0x512a8753ec2eaffd => 31
	i64 5878178646025157113, ; 58: I18N.Other => 0x51937c55aa9db9f9 => 84
	i64 6085203216496545422, ; 59: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 71
	i64 6086316965293125504, ; 60: FormsViewGroup.dll => 0x5476f10882baef80 => 6
	i64 6222399776351216807, ; 61: System.Text.Json.dll => 0x565a67a0ffe264a7 => 45
	i64 6401687960814735282, ; 62: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 60
	i64 6504860066809920875, ; 63: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 51
	i64 6548213210057960872, ; 64: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 55
	i64 6617685658146568858, ; 65: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 78
	i64 6659513131007730089, ; 66: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 58
	i64 6662274349274916432, ; 67: Syncfusion.SfGauge.Android.dll => 0x5c752738f0ba6650 => 28
	i64 6876862101832370452, ; 68: System.Xml.Linq => 0x5f6f85a57d108914 => 47
	i64 6929694340031562077, ; 69: Syncfusion.SfGauge.XForms => 0x602b3849839dc15d => 30
	i64 6960678745840231429, ; 70: Demo.Nav_Flyout.Android => 0x60994c70a96b2405 => 0
	i64 7026608356547306326, ; 71: Syncfusion.Core.XForms.dll => 0x618387125bcb2356 => 24
	i64 7348123982286201829, ; 72: System.Memory.Data.dll => 0x65f9c7d471b2a3e5 => 39
	i64 7488575175965059935, ; 73: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 47
	i64 7496222613193209122, ; 74: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 38
	i64 7635363394907363464, ; 75: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 69
	i64 7637365915383206639, ; 76: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 68
	i64 7654504624184590948, ; 77: System.Net.Http => 0x6a3a4366801b8264 => 40
	i64 7735176074855944702, ; 78: Microsoft.CSharp => 0x6b58dda848e391fe => 9
	i64 7747785289863678794, ; 79: I18N.Rare => 0x6b85a9abee524b4a => 85
	i64 7767211987177345230, ; 80: Syncfusion.SfPicker.Android.dll => 0x6bcaae265edc90ce => 31
	i64 7820441508502274321, ; 81: System.Data => 0x6c87ca1e14ff8111 => 2
	i64 7836164640616011524, ; 82: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 49
	i64 7867610841234767674, ; 83: I18N.Rare.dll => 0x6d2f5e602ecf7f3a => 85
	i64 8083354569033831015, ; 84: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 59
	i64 8087206902342787202, ; 85: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 36
	i64 8167236081217502503, ; 86: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 7
	i64 8234598844743906698, ; 87: Microsoft.Identity.Client.Extensions.Msal.dll => 0x72472c0540cd758a => 12
	i64 8265650852517415196, ; 88: I18N.dll => 0x72b57da835b4891c => 81
	i64 8513291706828295435, ; 89: Microsoft.SqlServer.Server => 0x762549b3b6c78d0b => 19
	i64 8618070908946355220, ; 90: I18N.MidEast => 0x779989d4c8e01414 => 83
	i64 8626175481042262068, ; 91: Java.Interop => 0x77b654e585b55834 => 7
	i64 8638972117149407195, ; 92: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 9
	i64 8725526185868997716, ; 93: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 36
	i64 8955323522379913726, ; 94: Microsoft.Identity.Client => 0x7c47b34bd82799fe => 11
	i64 9034105039140296321, ; 95: Syncfusion.SfChart.XForms => 0x7d5f96ab19861681 => 27
	i64 9052662452269567435, ; 96: Microsoft.IdentityModel.Protocols => 0x7da184898b0b4dcb => 16
	i64 9324707631942237306, ; 97: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 50
	i64 9427266486299436557, ; 98: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 15
	i64 9653670174411988578, ; 99: Syncfusion.SfPicker.XForms.Android => 0x85f8b9e0549c1e62 => 32
	i64 9662334977499516867, ; 100: System.Numerics.dll => 0x8617827802b0cfc3 => 41
	i64 9678050649315576968, ; 101: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 53
	i64 9808709177481450983, ; 102: Mono.Android.dll => 0x881f890734e555e7 => 20
	i64 9819168441846169364, ; 103: Microsoft.IdentityModel.Protocols.dll => 0x8844b1ac75f77f14 => 16
	i64 9834056768316610435, ; 104: System.Transactions.dll => 0x8879968718899783 => 75
	i64 9982512874400855535, ; 105: Demo.Nav_Flyout.dll => 0x8a890291d46d35ef => 5
	i64 9998632235833408227, ; 106: Mono.Security => 0x8ac2470b209ebae3 => 79
	i64 10038780035334861115, ; 107: System.Net.Http.dll => 0x8b50e941206af13b => 40
	i64 10229024438826829339, ; 108: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 55
	i64 10430153318873392755, ; 109: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 54
	i64 10447083246144586668, ; 110: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 8
	i64 10841941198020570030, ; 111: I18N.MidEast.dll => 0x9676501397b06bae => 83
	i64 10889380495983713167, ; 112: Microsoft.Data.SqlClient.dll => 0x971ed9dddf2d1b8f => 10
	i64 11023048688141570732, ; 113: System.Core => 0x98f9bc61168392ac => 35
	i64 11037814507248023548, ; 114: System.Xml => 0x992e31d0412bf7fc => 46
	i64 11122995063473561350, ; 115: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 67
	i64 11162124722117608902, ; 116: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 66
	i64 11446671985764974897, ; 117: Mono.Android.Export => 0x9edabf8623efc131 => 21
	i64 11517440453979132662, ; 118: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 13
	i64 11529969570048099689, ; 119: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 66
	i64 12063623837170009990, ; 120: System.Security => 0xa76a99f6ce740786 => 77
	i64 12102847907131387746, ; 121: System.Buffers => 0xa7f5f40c43256f62 => 34
	i64 12145679461940342714, ; 122: System.Text.Json => 0xa88e1f1ebcb62fba => 45
	i64 12198439281774268251, ; 123: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0xa9498fe58c538f5b => 17
	i64 12232655692966228690, ; 124: Syncfusion.SfGauge.XForms.Android.dll => 0xa9c31f8a96e972d2 => 29
	i64 12271526709721397701, ; 125: Syncfusion.SfPicker.XForms.dll => 0xaa4d388670a979c5 => 33
	i64 12439275739440478309, ; 126: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 14
	i64 12451044538927396471, ; 127: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 57
	i64 12466513435562512481, ; 128: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 62
	i64 12493213219680520345, ; 129: Microsoft.Data.SqlClient => 0xad60cf3b3e458899 => 10
	i64 12538491095302438457, ; 130: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 52
	i64 12963446364377008305, ; 131: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 1
	i64 12986822521348711275, ; 132: I18N.Other.dll => 0xb43a7646aa08636b => 84
	i64 13370592475155966277, ; 133: System.Runtime.Serialization => 0xb98de304062ea945 => 43
	i64 13454009404024712428, ; 134: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 74
	i64 13572454107664307259, ; 135: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 63
	i64 13622732128915678507, ; 136: Syncfusion.Core.XForms.Android => 0xbd0daab1e651e52b => 23
	i64 13647894001087880694, ; 137: System.Data.dll => 0xbd670f48cb071df6 => 2
	i64 13742054908850494594, ; 138: Azure.Identity => 0xbeb596218df25c82 => 4
	i64 13959074834287824816, ; 139: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 57
	i64 13967638549803255703, ; 140: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 70
	i64 13970307180132182141, ; 141: Syncfusion.Licensing => 0xc1e0805ccade287d => 25
	i64 14124974489674258913, ; 142: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 52
	i64 14538127318538747197, ; 143: Syncfusion.Licensing.dll => 0xc9c1cdc518e77d3d => 25
	i64 14551742072151931844, ; 144: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 44
	i64 14613964489274772158, ; 145: Syncfusion.SfGauge.Android => 0xcacf3b465f654abe => 28
	i64 14648804764802849406, ; 146: Azure.Identity.dll => 0xcb4b0252261f9a7e => 4
	i64 14792063746108907174, ; 147: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 74
	i64 14935719434541007538, ; 148: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 78
	i64 15138356091203993725, ; 149: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 13
	i64 15370334346939861994, ; 150: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 54
	i64 15383240894167415497, ; 151: System.Memory.Data => 0xd57c4016df1c7ac9 => 39
	i64 15609085926864131306, ; 152: System.dll => 0xd89e9cf3334914ea => 37
	i64 15728157151893626066, ; 153: I18N.CJK.dll => 0xda45a3992a239cd2 => 82
	i64 15755165575806366062, ; 154: Demo.Nav_Flyout => 0xdaa5979de366b16e => 5
	i64 15810740023422282496, ; 155: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 72
	i64 15963349826457351533, ; 156: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 76
	i64 16150183177059685051, ; 157: Syncfusion.SfChart.XForms.dll => 0xe020fa083e21d2bb => 27
	i64 16154507427712707110, ; 158: System => 0xe03056ea4e39aa26 => 37
	i64 16496768397145114574, ; 159: Mono.Android.Export.dll => 0xe4f04b741db987ce => 21
	i64 16552427520763284698, ; 160: Syncfusion.SfChart.XForms.Android => 0xe5b60921b17eccda => 26
	i64 16787552971463248837, ; 161: Syncfusion.SfPicker.XForms.Android.dll => 0xe8f95e7bb81ecbc5 => 32
	i64 16833383113903931215, ; 162: mscorlib => 0xe99c30c1484d7f4f => 22
	i64 16945858842201062480, ; 163: Azure.Core => 0xeb2bc8d57f4e7c50 => 3
	i64 17137864900836977098, ; 164: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 18
	i64 17197986060146327831, ; 165: Microsoft.Identity.Client.Extensions.Msal => 0xeeab8533ef244117 => 12
	i64 17704177640604968747, ; 166: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 62
	i64 17710060891934109755, ; 167: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 61
	i64 17790600151040787804, ; 168: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 15
	i64 17838668724098252521, ; 169: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 34
	i64 17882897186074144999, ; 170: FormsViewGroup => 0xf82cd03e3ac830e7 => 6
	i64 17892495832318972303, ; 171: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 72
	i64 18129453464017766560, ; 172: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 80
	i64 18318849532986632368 ; 173: System.Security.dll => 0xfe39a097c37fa8b0 => 77
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [174 x i32] [
	i32 20, i32 86, i32 64, i32 30, i32 11, i32 1, i32 58, i32 56, ; 0..7
	i32 19, i32 75, i32 71, i32 79, i32 3, i32 0, i32 73, i32 43, ; 8..15
	i32 82, i32 49, i32 50, i32 64, i32 8, i32 61, i32 67, i32 76, ; 16..23
	i32 24, i32 51, i32 56, i32 17, i32 60, i32 44, i32 42, i32 23, ; 24..31
	i32 53, i32 48, i32 46, i32 18, i32 22, i32 42, i32 14, i32 69, ; 32..39
	i32 73, i32 26, i32 59, i32 38, i32 65, i32 41, i32 81, i32 63, ; 40..47
	i32 29, i32 80, i32 48, i32 65, i32 33, i32 70, i32 68, i32 86, ; 48..55
	i32 35, i32 31, i32 84, i32 71, i32 6, i32 45, i32 60, i32 51, ; 56..63
	i32 55, i32 78, i32 58, i32 28, i32 47, i32 30, i32 0, i32 24, ; 64..71
	i32 39, i32 47, i32 38, i32 69, i32 68, i32 40, i32 9, i32 85, ; 72..79
	i32 31, i32 2, i32 49, i32 85, i32 59, i32 36, i32 7, i32 12, ; 80..87
	i32 81, i32 19, i32 83, i32 7, i32 9, i32 36, i32 11, i32 27, ; 88..95
	i32 16, i32 50, i32 15, i32 32, i32 41, i32 53, i32 20, i32 16, ; 96..103
	i32 75, i32 5, i32 79, i32 40, i32 55, i32 54, i32 8, i32 83, ; 104..111
	i32 10, i32 35, i32 46, i32 67, i32 66, i32 21, i32 13, i32 66, ; 112..119
	i32 77, i32 34, i32 45, i32 17, i32 29, i32 33, i32 14, i32 57, ; 120..127
	i32 62, i32 10, i32 52, i32 1, i32 84, i32 43, i32 74, i32 63, ; 128..135
	i32 23, i32 2, i32 4, i32 57, i32 70, i32 25, i32 52, i32 25, ; 136..143
	i32 44, i32 28, i32 4, i32 74, i32 78, i32 13, i32 54, i32 39, ; 144..151
	i32 37, i32 82, i32 5, i32 72, i32 76, i32 27, i32 37, i32 21, ; 152..159
	i32 26, i32 32, i32 22, i32 3, i32 18, i32 12, i32 62, i32 61, ; 160..167
	i32 15, i32 34, i32 6, i32 72, i32 80, i32 77 ; 168..173
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
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
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
