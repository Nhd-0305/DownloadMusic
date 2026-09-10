package murach.util;

import jakarta.servlet.http.Cookie;

public class CookieUtil {

    public static String getCookieValue(Cookie[] cookies, String cookieName) {
        String value = null;
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals(cookieName)) {
                    value = cookie.getValue();
                    break;
                }
            }
        }
        return value;
    }
}