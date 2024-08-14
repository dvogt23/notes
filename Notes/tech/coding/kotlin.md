# Kotlin

### Optional API
Source:
https://4comprehension.com/kotlins-java-util-optional-equivalents/

    val x: Int? = 7     // ofNullable()
    
    val result = x
    ?.let { ...  }      // map()
    ?.takeIf { ...  }   // filter()
    ?: 42               // orElseGet()
