# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/ibaidal/AndoidSDK/sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}


-keepattributes Annotation
-keep class okhttp3.** { *; }
-keep interface okhttp3.** { *; }
-dontwarn okhttp3.**

-dontwarn com.squareup.okhttp.**
-keep class com.squareup.okhttp.** { *; }
-keep interface com.squareup.okhttp.** { *; }

# Insert.io SDK
-keep class okio.** { *; }
-dontwarn okio.**
-keep class retrofit.** { *; }
-dontwarn retrofit.**
-keep class rx.** { *; }
-dontwarn rx.**
-keep class sdk.insert.** { *; }
-dontwarn sdk.insert.**
-keepattributes Signature
-keep class sun.misc.Unsafe { *; }
-dontwarn org.mozilla.**
-dontwarn org.slf4j.**
-dontwarn retrofit2.**
-dontwarn com.jakewharton.rxbinding.**
-keep class com.daimajia.easing.** { *; }
-keep interface com.daimajia.easing.** { *; }
-keep class org.mozilla.** { *; }
-keep class org.apache.commons.lang3.** { *; }
-keep public class * extends android.view.View {
 public <init>(android.content.Context);
 public <init>(android.content.Context, android.util.AttributeSet);
 public <init>(android.content.Context, android.util.AttributeSet, int);
 public void set*(...);
}