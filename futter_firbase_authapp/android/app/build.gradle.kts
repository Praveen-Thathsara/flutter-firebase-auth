plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
    id("com.google.gms.google-services")
}

android {
    namespace = "com.example.futter_firbase_authapp"
    compileSdk = 34        // replace flutter.compileSdkVersion
    ndkVersion = "25.2.9519653"  // optional, replace flutter.ndkVersion or remove

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = "17"  // simpler string
    }

    defaultConfig {
        applicationId = "com.example.futter_firbase_authapp"
        minSdk = flutter.minSdkVersion          // replace flutter.minSdkVersion
        targetSdk = 34       // replace flutter.targetSdkVersion
        versionCode = 1
        versionName = "1.0"
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}
