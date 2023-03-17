import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:FlutterViz_Flutter_Templates/Home.dart';
import 'package:FlutterViz_Flutter_Templates/widgets.dart';
import 'package:flutter/services.dart' show rootBundle;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterViz Flutter Templates',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Templates'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final image64 =
      "iVBORw0KGgoAAAANSUhEUgAAASIAAAJOCAYAAAATYAoKAAAAAXNSR0IArs4c6QAAAARzQklUCAgICHwIZIgAACAASURBVHic7N13eFvlwTbw+2hPy9uJV4aznYRMQkISKCtlbyhQoC3QUgopLR2UDsooHV8Hq5QWeJllFgKUlRIgJIyQEAIJGThxpu3Y8ZS1x9H5\/ji2bFmSLTm2Hzu6f9fFhSMd6Ty2pFvPPtKii+sVEBEJpBFdACIiBhERCccgIiLhGEREJByDiIiEYxARkXAMIiISjkFERMIxiIhIOAYREQnHICIi4RhERCQcg4iIhGMQEZFwDCIiEo5BRETCMYiISDgGEREJxyAiIuEYREQkHIOIiIRjEBGRcAwiIhKOQUREwjGIiEg4BhERCccgIiLhGEREJByDiIiEYxARkXAMIiISjkFERMIxiIhIOAYREQnHICIi4RhERCQcg4iIhGMQEZFwDCIiEo5BRETCMYiISDgGEREJxyAiIuEYREQkHIOIiIRjEBGRcAwiIhKOQUREwjGIiEg4BhERCccgIiLhGEREJByDiIiEYxARkXAMIiISjkFERMIxiIhIOAYREQnHICIi4RhERCQcg4iIhGMQEZFwDCIiEo5BRETCMYiISDgGEREJxyAiIuEYREQkHIOIiIRjEBGRcAwiIhKOQUREwjGIiEg4BhERCccgIiLhGEREJByDiIiEYxARkXAMIiISjkFERMIxiIhIOAYREQnHICIi4RhERCQcg4iIhGMQEZFwDCIiEo5BRETCMYiISDgGEREJxyAiIuEYREQkHIOIiIRjEBGRcAwiIhKOQUREwjGIiEg4BhERCccgIiLhGEREJByDiIiEYxARkXAMIiISjkFERMIxiIhIOAYREQnHICIi4RhERCQcg4iIhGMQEZFwDCIiEo5BRETCMYiISDgGEREJxyAiIuEYREQkHIOIiIRjEBGRcAwiIhKOQUREwjGIiEg4BhERCccgIiLhGEREJByDiIiEYxARkXAMIiISjkFERMIxiIhIOAYREQnHICIi4RhERCQcg4iIhGMQEZFwDCIiEo5BRETCMYiISDgGEREJxyAiIuEYREQkHIOIiIRjEBGRcAwiIhKOQUREwjGIiEg4BhERCccgIiLhdKILQNQbJWu9+kPYDsk7VWxhaNAwiEg4RdcOxbYesO6AYl8HxVALGGuTPyCcBck3BfBMheSbBsk1H1KgdOgKTAOOQURCRYoeR6T4PkDXnvqDdO1Q7OsB+3oonbd5pkLTfB6k5nMhhbMGo6gAgPF6D6yacFqPGadzw6qRoQkFkX9gGwCgoO1A9H6tywlPYRnuLL18QMs6kkiLLq5X+j6MaHCE50\/q8xiH1YJQWIY3EEjpOTV1yyE1XDHggVSk9eOe\/M\/SDqJO+z\/bjtYDDUnv3z75ePzbsbS\/xRvRtGXTf\/Jb0YWg4W1GpAonyR9jRqQKRUozdmvKBuy5IyX3RX+eNqYUU8pLEZbDcPn80dsWTJmEMUX5qGlsRkiW+3xOxf4JlIJnIQXGQ\/KPH7CyehQd\/uMpwyHZBKsURpEutWDs1FRdg6Av+WMKmvditE3CFtOYwy3qiMOmGSU0I1KFs+V3sTDyecztW6RJWKVdOODnc1gtmFquBlxhtgM7a+uwefc+5DvUWo1Bp4fFbEy5VgRdO+QJ10FTtxya2usHtKzv+Irwjq8I4\/UenG05gAWmln7Xknqa+tVqnDPNjJdt8wfk+UYKBhHFGB85gGvkFzAzUjUk51PCdkg6F5weL9o8bmRbbQCAiSXFKHBkweMPRo8tdGShqa2rL8lhtQAAnB5v0uePFN8LxXAA2j1\/HPCy7w5Z8TfnFFhdMo4xNuFsaw3G6T1Jj7fm58Dd7OzzeRdUvY2aynx8ahw3kMUd1tg0o6iT5I\/xs\/AjKFPqkx5zSMob0BqR4lgDGOsAADWNzTAZ9Mi2WQEAJoMBWRZz9FivP4C65lYAQH52Fk6YNQPjR4+C0+OJNuUSsuwAgiWDNvwfUjTYE7bhTW8xPgnkwwgZhdoADFIk5jizwwZXQzPCgVCvz6dEIqhs3gZnbinqdDmDUubhhhMaCQBwdvgd\/Cj8OGzwQpZlHKg7hLr6pkE\/r+TrCodQWManVdXYULUTwXD8h9ViMkZ\/zrZYoj\/nOxx9nicy7mYolu2HWdq+ddaSrmpcgLvbJmNPyBq9T6vXoWLxbJizrL08g0oOh3H+1mcwL7BnMIs7bDCICCfJH+O78gvRfze2ONHidKGx1YnGlrZBPbcUiO34thiNsBpN8Prj+4IcVku0Odbm7WqOZdssMcdZjEaMzs2BXqeNuT1SfG9KZRrt3YVxri9w4sEnMM71BbKDyWuIyXgiWrzjK8Lyprn4YdNcvOstBMAwSoZ9RBlufOQArgm\/EHObuVvNo6GxFbkOO7Rabc+HDgjJdXTMv5fOnAaryZTwWINOj5PmHIXPq\/fgYEcTDQDMxq7yWoxGnDhnBgw6PfY1HMKnVdXR+5Scd6AYa5JOfpza9iGObXoJ492bo7ed2PAkAGBb1iK8M+pyHLRMSPt37Kwl\/cs1ESc46nFW1gFULJ6N6g82wdeevE8JUMPovN2vYPfka9Ci6Tu8RirWiDLcd8MvwIbYzl6H3YqK8mJoNBrIkQgaW\/ruYO0vyTsVStje6zEevz+mqTarYhyOquga4rb1CC6DTg8AyHPEzyNSst+Ju80UduGbu2\/F5Xt\/GxNC3U1r\/wg3VH0fJx58otey9sYT0eK5gkKcN2MGflhZiX3HL4BG33fAR1zt+MlXDyE30ntojWTsrM5gMyJVuEx+DQAQDIVQtacGrW0uWMwmWC0mZNnUiYRZNgtMRgMAYItmEtZpZw1sQczVaocygLrmVoTlMHbVHsTu+gZsrKrGrrp61DQ2I9tmidaW7JbY5lhjezu8\/gBCsoxpY9TmnkGnw\/b9NTHHKZIfmubzo\/\/ODtbj+zt\/iHLvjpSKOt6zGdmBBmzPPrZfv2r7vACgBQ4aDViTXYId3gUosUSQ42uBEk4+BUAJBnCsays25c2ATzL069zDGYMog30v\/DxKFXWmb4vThbZ2D8KyjOa2dkgAsh125Dhs0RACgHWaWdii6Xs2dDqkYCmUwmcBACFZRqOzHS6fP6afKCTL2NfQCEkCChJ0Th9sbomOnBXn58BkUMtc19yCQKhbx7exDpq6GwCoNaFvV\/8SBYEDMc+12zoT74y6AhtzT0FYMsAsu2HuVhsp9lfDJLuxMyu9uT7+0jBCJV1hY\/5Kj7DThI3mCXin6FhocvIwWuuDzp24X+5IDiP2EWUoq+LFMZEvov922K1obHEiFFI\/KPVNrTCZjHDYB79fQvJOBYLFgKEu4f0OqwXFebnQ67RwWK0IhkPR5lenqeWlaHS2IxSW4fEFkd1RbL0+8Vv8KMdGnFz7KMpsX8HjV4\/xaaz4T\/lPY2o7nT+fv+\/\/YW7r\/6K3H9u4Ah8WnIc2w6iUf89AaWyNx1gTW7ZVlulYZZmO3BIPLmj7AGNrNyPi88Uc09lM+\/MR1mfEIMpQ45XYJotBr8e0CWMQDIXgdHkgyxHYLIk7jQeDpnY5IuNujrvdYjTipDlH9fn4bJsNX58\/GxurqtHu9aAEuQBiJ0HO0mhxgdaIJYs7OshnqP8L+4GmPWb8ofE2bNcsSvj8L475Kfw6K45tXAEAaNUXpRVCskVBOL9reYrhgA6asJTw2BaNFf\/KXQbkLsM57g2Y3fgFtI1dIX0khhGbZhnqZPljzFC6Zk\/7\/AFoJAl6nQ5Wswk2qxkaTfxYxhbNpAFvmgEAgiWIFDwDSROMudliMmL86MQf+EanE21ub3TSo1ajRVlBPsxGIww69Tu2cxLk9ToTbtJZMUaK7xzW6ABbQRjHFn+I1lAeqj2Jf7+dWfNRZ6qAW5+Dl8t+CL\/WlvKv55sUQjina4KjZZsRWl\/iIOpuh6EEq3PmYH\/hFJSYwrAH2qGEw1CCASxu3QRndvERMemRNSKC0+XB3hp1roxWo4HNYkJRQW7MMP5gk8JZ0DZciUjJ\/bFl83jx8bYdyLZZ4fb74Q0E4XR7EAp31S4cVgsWTpsc7cjuPopmMRnxC50ZX9f2\/bvY9S78bNLtAICVh85IeMz27GP71VHt79Ys03g1MDSnN2C9S1+EewrPBgoRrSWhsQ7nb30GqLxkxC8H4fB9hipUmqM\/+7p1CsuRCJxuL9xeX6KHDSpN3XK1r6iHuuZWbNtXg\/0NTWhqa48JIUANq3c2bUZtU0vcY09wB1MKoe5+Nul2TLB+lV7he+EvDQP6rt12TLsP7\/v\/Zdt83Druajw2+3uoL61EaWjwZ8APNtaIMtQhKS\/6c0GuA8FQGIaOjl3zEHVSJ6Ld\/UfIU\/reIMxhtSDfkQWDTtfxfy2ybbFNJWM4jEX18eGUiu+P\/xtu2vJgvx7bU1+d1P0VrSUdARhEBK1Wi\/LiwgF9TkfBPuiMXmQVqEPj7Y3q3J7mmt4XnkquBZAaroBSlHzi4ITiUTiqou+myPhWN4xypM\/jEpnl+AxFxjo0BOJraOlIp5M6kzGIMlS1FLvMQZZltLs8cHv90WZZxZhiGPSxw+RumJFMXtkOVMxeibzSHTCYEm\/NEfRb0FwzBdWblqH5wJSEx2j3\/wph83Yga0PC+w1JhuQBoM3jhscXRLvXg1me3le592WW4zOsPHR4QeQfF1sGY40+yZGZjUGUodZpZwHdWgy1Dc1odbqi\/zYZDdAmGDVLtDujo2AfKo9\/GgVlfc9ONpi8GD3hM4ye8BkaD0zBV+vOTRhI2up\/IDL5m1As8c+5s\/YgLEYjgmEZYTmMQ852eH2BuE3TsvRWQNP\/D\/4o08F+P7bT4XZSZwoGUQZbpzkqZlJjp\/xcB0bl56S00LWsci3mLHu4X+cvKNuBgrLf47OVV+PA1iUx90nhLGi+eiphGHVuFzLYjl8goegULfZ2XFDkUIuCxo4up8YWBYeae9\/uvWcntbmKtaFkGEQZ7GXtidEgKinKg9lkgM1ihtlkjO5J5HR5MGl8aVwTDTi8EOpuzrKH4W0viKsZSeEsaLe+ikjxvXHD+qn4XJExC\/3\/8OeNn4yjSzQ4embvx+2pUeD1qYGzv05GQY46F+qDoALFpIUzCLx\/MAJD\/eDsYHAkYBBlsC2aSdgiTcIMpQparRYFudkA1OH8A3WH4AsEkz7WnNWUcgiNspiQZdCjPRhCvTfxTophf\/K+J03dckhtJ6vbvubEr55PpMBaguzRxwIH\/tf3wUmECualdNy4UgmA2gFdXuRBIKg2Ecd2O+b6cgALQgAkBENqIHn8GrzyjgnrNrPzmkGU4f6luxC\/D\/0VNnTNG9q1rw6RiDraVFyUl7A2NGXhil6fN8ugQ6nNijKbGXpNV03gnZp6+HrMAwoGzHA29n7lCsk7Fdpd\/4BirIGS9xIi9k+gWHZA0nX1a6F9PhZOmobjpyzCgrJTAACRli3QeNLv6wmOPQOKIb3LEUUicjSEklNg0Kv9RgY9MH+mDus2s8nGIMpwuzVl+JvuSvw63DVnRqvVIBKJwGoxRWtJPZVXfhB3m1mnxSizCeOybLAkGdnSayT0nCpZv2tuyuWVAqWQ6pYnnYk7brwGC8q6gs8z\/zbYV3835ecHAEVvg3fWT9N6DAB4+zEJ9Jk3GEIAg4igjqD9DVfiR+HHAQCTx5XC6fLCYbdAY\/dCk9+1Mdr80Fo4zV21EL1GQpHFhFKbFfm9LAkJRSLY0+5GezB+z53925YkeET\/bNsV++9w4Xx45t8G64ZbU3q8orfB9bWH0q4NAUAwmLwpm8juWhMSTAbPSAwiAoDolTmuCT8Pm9aH\/DItdFOroLHHfstfhn\/iHNmCvYey0DRtHMpsvc\/Arvf6UOP2Ju0bOrhrTtL5RP3x5c4IgNhO4eC4swCDDZb1t0IKuZM+Vs6eBM\/Rt0HOTr88wWAw2pxNjYT\/WzF0a\/mGOwYRRa3SLsRmzSTclXcrxk1LPifIqvWicq8XnpCMhmPjt+hwBkPY0+5Gg9eHUCT5EHcwYMamlVcPSNm7kw8+gyxLO0JGdZ8PWVeKYMkJCJ0+D\/ra1TDufRXatq8ghdyIWEcj7JiMUMnX1MDqp0CCzf57s7vWyNpQNwwiipFla8K4aetTOtZa24i8TTvQPHsKfOEwDri9OOD2xnVGJ\/PR879AKDDwa9qs7meQ5fk44X2yrgzyxDIAuQgZj4OidUADQGPUw+D\/CAAQNCXek6g3gVA6zTLWhnpiEFGMK8ofSut4x84avO2woE6T+hyZYMCML1df1udIWX\/Vuqcjx544iLThA9CG1fVvncHTm85QimgdCHfWsPRlCOvL1Z91pfBFRgFK75Mbu2tr17M21AOD6AgVsX+CSN5LgKkW0LggBUsgtZ4ETfN5SR9TZKzDsXlr0j5X2cEW1JUUpHSs15mP9a8uH7QQAgB3MP2O5mRiwsrzZsJjGvwzYPVvQdAwBZDUK5KEDFOhaNVyBMxdl0wKGufj5XeHbufLkYJBdIRRtE7IZXcBBbHzfBTrdig5qxApuQ\/anX+H5JsW99j+rq0qbffgkxSCqPqzU\/DVx+dEm2Ojsg7gO0f\/BUvHvwW7qeua9muqv47nv7gam2rSbyIJEToEADAEu\/rVDIGuBbu2bnvhy7pCrNv8+ZAVbaRgEB1h5Ak\/ALJ66eMx1iI85QrodjyRMIz6w9UyGm2NZcguOBB3X1tjGRp2zcW+rUvga8+P3n7a1OewfMmtMQHUaWnFW1ha8RZe33YR7lp1d9rl2VhzLI7J+0vaj+uPIIqglRtSPt6vmz2IpRm5GERHELnwsd5DqIOka4c85i7odjw1IOcNeLLx\/pN3Qm\/0IKuwK4zaD5Ul7IxeMv5N\/PLkH\/X5vKdPex4A0g6jQHoDWIfFEykBkHoQfdV28uAVZgRjEI1QitapXrXUWAtFzoKmfT6UUY+n\/gT29ZCL1OMl7xQgWIJ6\/+h+leWLdnVmdChg7XNOkM3oxC9P6juEOp0+7Xms3b0Ma3ef2q+yDbZgWIN0lrLe9vylg1aWkYxBNMIk6wNKbcC8x3OV\/079f8e\/axvPxQet87E4J\/GGZMm81XB6ysdePOvhhM2x3ly14K\/DNoiUjv6hVIQMlYNYkpGNQSSIOasJoyo+Q0HZduiMXhiMXgQD6mWUvc58OBvHoL56Tky\/iqJ1Qp58BWDdPjiFKliBe2U7FqfxHf9i3cVpbac6u6TvIfOeJhZshc3ohDsQf4VX0XSh\/Skf65EmD2JJRjYG0RDLK9uByces6H03wzIA+AAzv\/bvmF0M5Qk\/SBhCFqMRDqsF3kAATk\/iLVpT1aB14fe+QvzC3PcEvZUNp+OB3Tel9fyzSxPP7+nLxIKtKY+ijc1PPRwOhydSDiD1cx10MYiSYRANof5sJNa5i+G+r6bgi5aNCHVbM6rXaTFz\/FiMLera+P6L6j3YVVd\/WOV8S3MIu\/fciOtzNuOo7M\/i7neHbXip7hI8vv+awzrPYCl2xI\/eDYYg8pFOEH2+b2Rfe2wwMYiGkDWr\/9efGjN5Bxzuafh4W1V0b+aF0yajwJFac0W9brza9HN6vHHXBuupyvYRfvzlU5hg\/SpmkmO9fzQ+bF4Kt9y\/SYObahb2q1a0s3H49a+EIrq0Lgz47MeJL9pIDKJhw6zTIhyJ9LpINNtmw4lzZuCtDZvgsFmjIRQMh1BdVw+334\/9DfFhN21MKSqKR8Gg08PgByRPGB8070l4bFTHNIBdnsnY5Rm4JsWa6mVpB9GmmoUx\/UOOgn0oq\/wAWQX7EQ5YsP7VH8YcX2rfOiBl7YsSdvV9UAdZN7CXazrSMIiGUNuh8oS3T8txYLzDhlBERlWrC3tcnqTPYdDpcczUyWhu7xp52lhVjbrm1sTPPaYUU8u7rrwxY4MOcz8wY\/qSqfibZiMaI4fXp5SMonVGN72Xwvbo5Mk3dlyMq475C2zG1D\/Ez32urtBPdrWQWac8hM\/\/19VMtOqdGApKGtt+RDSpLYHJVLy2yRBKtr5qvEO9Qqleo0VlXjaWFhcgz2RI+jyF2Y5oMwsAgnLiZpZep0VF8Sj1mHAIO2sPYvwm9b65a\/W4bWMlrOEk30XtRye+vQ8RYw3CY38Oec58RKZcjsiUyyFPPweh2fMgFz0Od8CBO99OfYLiG9suwtrdp2LKwhU4\/vLfJOzkHzP9A+R1u92hGZoakSZUMyTnyQQMoiHka89HW2P8dcF2O2M368oyGLBwVAHmFebCrEs8lG42dG0jEQrF73oIAA6bFQaduhVpdV09ij72I8fTtTVphceOJz5diPFuW9xje1scm4xi3gZ52jlxc5wAdTa3Uv47yBOuw9rdp+J3b\/8N7oC91+d7\/vOr8btVd2P2socweeHLvR4747h\/AwCKctqhUdKbp9RfGiV5zbUnDt33Tls2\/Se\/FV2ITBKR9Rg9IXYkqtEfgDcsw2HQQ9\/tooY2vR7js9SQaA+G0L37yGw0YEPVTuyqq0erK\/Gug15\/AE6PB26fD9v21eC322fAJsfukWyIaDGvLRdvF9YjpOloagRKoNl\/CyQl+SrxiLEGimU7FGMtFAkAFIQrz4Wk6yMEzLuh6Jyorr4Oq3aeAwlAnuUQbEb1ce6AHauqzsE9a2\/Dy1uuwPTj\/41xR73X+3MCMFmdqN81B8dP3IOFJc\/1efzhUgD4Em86mZBfNxUvf3baoJVnpGMf0RA7sHUJphzzMiyO2I7iGrcXDV4fxmXZMC7LFhNIk7KzUGq1oMrZjhp319atvXY2d6hrbkVdcytObhiFokDiS\/aM8pvxk51TcdvULVDCduh2\/h2SnHg0LmL\/BJGS+wB77Jo2JZzVdwh1Hlv0BCIN30J9exnuWXM77llze+JyVWxExZz4ywHpNerld3p27JdVfoB5o9PfwL4\/3JgKYJAmlmYgNs0E2LI68XqjUERBVZsLa+oO4YA7ttpv0eswKz8Xx4zK77X\/KJlTDsWvI2tpc8HZ0TG+qLkAi\/acAd3md5Ouyo\/kv4TIlMvjQghATAjpdVrMnVSBZfNn4\/wlCzF3UgUsxtgdCRXHql7Lqzd6MDvBnKtRFhOWlRfjhNKiuGaro2A\/JuWmP3ObxGONSID66rnYv3VxwkvyAIAvLOOLpjbUuL2YlpsNh6GrOZVvMiJ\/VAE21qW+4numMxsznTldz+8PoK6hCe6ODe0njSuF2WTEuQdLsV7fS01o3M19nkuv0+Lr82dH+6YAYGxRIcYWFWJD1c5oLU7JX4FI5zXJAiWQ2k6MqYWVTfsABlP8iN7EbHX+kl6jRZnNgqq2rtG3\/LIdKJQ\/6Vo8RyMGg0iQTSuvQVbhvoR7+HRq9gextu4QSm0WVOY6Yppr+1sSD9cncvn+rhm9bo8P1fvrEh43M1KF8ZED2K2J71CPFN+X0rkKHFnREAqGQwiFZVhNal\/TUePH4mBzqzqZ0rodkW7LVZRwFrQNV0JTdwMAJGySmXXamFCu73EdsYk6OzThoemopoHFpplA7z95J\/ZvXdzncTVuL96tqUdVm\/oha\/b58eqmL1M6x3i3LaY2FOwYYTMZDcjPdaCivBjmbtcjWxj5Iu45IsaalPY5AtQ+qZ21B7Gz9iDe2rAJb23YhJ216s6PBp0eE0sSbzUi6doRKbkP4bE\/h6NgX1wfGgCMtnR1nvvC4bhrpE3S9GcPAhoOWCMSbNPKa+A8VI7Ji1bAYEze0drZf1TV3IoPt6XeSXpeXWztJjfbjtzs5MPmx0S+wL\/RYymCoTbl8wHA5t174\/6dbbNAr9Oitq9d4wtWQJdnSXhXSbdrqB30xA9ZVYS3pVXOwxGOJO74T0YvpT7Un4kYRMPA7k3LcLB6LqYsXIFREzYmDaTaphZs3Lmrz3VinYr8JpycoJNalmW0Ol2Q5QjcXh\/MRiOKR6nbjYxXBmfB6JrNqYdEi+YNALEbrPVsltV4Yj\/Yo3UWmPw7D6uM6dBo0tsDyhDh5MfeMIiGCV97PjatvAZYeQ1GVWxEduF+6IxehDv2KNot\/x1eJbWV3krYDknniukb6m5PTT083a686vb6kWW3wmZN\/C0veQfuSqypCKEVbW43sm1dEy37apbNGeJOBg2GZppApmAQDUP11XNRXz035rZItg2Y+IO+H9x0LnT7b4Gp5Hc4+VDijtuC3GwAbfD51cskazQamHuZEiDJDnXJR4r9RAMh2KPWN5yaZf2hDe0VXYRhjUE0QmjaTgb2\/AFy2e8g6RIvGJUaroB2\/68AABfsXgrgtYTHOexWOOzqB1vuWKem1fa+K6N2\/y2Qp5\/Tz9IfnuHWLOuPdJaDZCIGkQCzSz\/C7OKPMbFgK3Y2VuJgeyk21S1CfXv8sHl3mqbzILWeqM5Mtn8CxbIdkpwFuI6Gpuk8aFwLAABWxYuz5HcTPofT5UFrWztsVjOy7FYY9LFLPtxI0jzzTYNmzx9SmkvUXefmbRajEU6PB\/saGlPaRVKv6ZpT1Fez7HgpjbUWAv1w2RO4Z+UVoosxLDGIhtDE\/C\/xy5N\/hIkFXavDl1a8Ff35uU3X4N61t\/X6HJLsgFR3AzS4Iekx58jvwobEH3anywOn2wun24vahmbYLCZUjCmJ3r9HSh6GmqbzIHmmIFJyH5Scd3otZ6fReTnRHSQLsx2YWFIcM7ExofajcWjrOcjpWOjaV7NsVDC1qQyijc4Zmu1JRiLOIxoip019Do9dekpMCPV08eyH8NglJ8NmPLw37Ely8o3HSorykNXtg+32+uHzd10I7GPNUb0+t+SbBu2uf0C3oQpoOrfPsjS1uRAMh2JuO6qjhpSMpu4G7Pj4XOzfurjPZpndMxZ6Ob3pBQNCSuciQqrR9q8GoSBHBgbREBiVdQDLl9ya0rETC7amdd2vnk6SP0YhmuNub2xpQ0OjOodnXNkojC0dBb1eh\/xcR8yExo+1s\/p97kS8gQD++\/GneHHtx9i+X50aYNDpMSHJxEZN7Q3RJuamldegaetpCMrqmo3uzbJgwIyvPj4HE5t7b84OFouU\/gb9xITLtAAAIABJREFU\/XlMpmDTbAhcdfRf0rqW19KKtzAx\/0vsbJqe9rkuCyfuoHa6PPB4\/XC6PKgYUxzTYd1pizQJh6S8tM+Zqm37aqK7RYblxHsoRbJXRZd5AMCq1y\/AqtcvwPxjV6OoeDd21SyEpz0f9bvmIBSwYu4N5w9aeXujjaS\/lEQj9zGZM4OxRjTIbEYnTuu4dHI6+vOYnrWhr3YfQF292hejDtkDvkAQVXtqEAyF4h7\/V\/2VaZ1P8kxNu4x9sm6HYo4fit\/w4fF47YXvYMfH5+LA1iUIBawoymlHjtS\/yxOJoAvtFl2EYYtBNMh66xPq9XH56T+uZ9+QPxBEY6sTbo8PDrsV1o7Rp2AojGCPkaentWekXRuSnCelXcaPt+3AvoZD2FvfmPSYVDvCz5gtNoTChvR3XZxSzhnWiTCIjhAzIlWYoVQlvK\/Fqc47Ki8uRJbNiqL8nJhZ1FukSfi3Lv1L3WgCpZAa0huOrmtuxadV1dFLIh2OaaPFjpZJ\/bjQ9zmzVw98QY4ADKIjRKK+oc4aUGtHEBn0eowrG4VRBbnRY3ZLpbhDf22\/z6upvQEY4CUgSrj3vaw7TRa8CZpkyO37IEoJg2iQpXqZ5J52NqV+QcFCpTlhbchmUWs9Vkvivadf0Z6Am\/U\/hkdKvNo9FZLsgHbHk8lrRoGSlIMl+pwpNvlGUv9Qp6mF60QXYVjiqNkQeGPbRWl3Pj\/3eeqXc042UjaqIDem9tPpEPLwT92FWDdAQ\/WS7IB2\/6+g1N6g9u90bhviOhoa1wJEiu9T97lORfvR0ARK+zysKEf8BmhmnQuH38AkgEE0JB5ZfxOWVryZ8kUFn\/\/86j6Xe3TXOQnxmMjnsPWyKnyd5ih8rJmFVdqFKT93OiTZAakp\/jJEmrobEMl5G7DEX5OsOyVsh3bvH1I61+LJw3uRK6WHQTQE6tvLcP2LL+L+88\/vM4ze2HZR0qtaJLNOO6ujdnMlZkTUJtrMjv83SHlokPKwRTOpX2UfKNodTyIy7ubkI2LeKdDt\/gOkFGpDw4Ud21kjGiAMoiGys2k6rn\/xRfxw6a0Jr\/3uDtjx\/OffxSOf3HRY5+kMHNHB05MkO6Dd9Q91E\/78l7qab8ESaFwLoOmoSRXmSSjIVS8XNLYYsFo6fi4BOgf6KidqYG3bCvR9NaVhhzs1JsYgGkI7m6bj+pdexMT8LzG75CPYTWrtqKpxGjbVLoI7kPgKGiNd5cSuMZHKCYsALILFDIzrWGtrMUsYVyql9ZxSP2Y2Dwchxdr3QRmIQSTAzqbp\/Vq+MVxYLRLGlqjBUZALFObG11rGlmhg7f9gHGUYBhEBAMaVamDpbPpM6KqdVE5Q\/9+fWstgClkXAy3\/T3QxaIAwiI5Q3WstFhOiIaLWYNRjWGsZegdd6S8LyQQMohFkwcwIsmzqlhiTxsgIyTq0ufTRWgsQ2x9zJAsY+zdRVLQ2X07fB2UgBtEwkp8DfOdcP4yGCPKy1EWpel0EyS5ck5uXB70+M4InkZChEvpg\/xYVDwQvxgHYk9Zj\/vDKNwenMCMcg2gYmTstgjGjUh\/eDQQC0PfYczqTBM3HCg0iGYmXziQTMqS+bCfTZO7X6TDUltrE6yglEhmcgowQQcuxQs\/vS3MNXZsyZ5BKMvIxiIaRTzan93KEE2xulkn81tOEnj8STrzLZDIvbbpwkEoy8jGIhp3Uh8hlObNrRI0tCvb4LxJ2fimU+qb9QdM8vPHZvEEszcjGIBpmQuHUu+3kiBy9QGImOtSsYMXmbwg5dxBF0MoNKR+\/sUFcYI4EDKJhprYxvc7ncJrNgyPJ1l0KXlx3DFqVwdlNoDftcuq7I4QMlRwt6wODaJjZXJX8el+JBAdgy9WRam9Hy+jRDT8d8nPL3gMpH\/tpY3oXJchEDKJhZuO29F6SgD+Tg0id3PniumPwpSv1jeQOlwtTU26WeUzLWBtKAYNomGlqBULh1JtnckTOyOZZY4uCQ81K9N+\/efkmBDVDs5eRx6v0fRAAWVeI29+6Y5BLc2RgEA1Du2rSmyjn98dfD\/5It3VnbBg0tGbhtrcfQ0RKb25PulyYCl2w950mO72+9y7s2D9yNnoTiUE0DP3vo\/Q6rP3e5NvDHqnWb4mvlazeOg0vVw9eDSSsscPrSu1qrQek6\/DIu2LnOY0kDKJhqGqvlHbzLJRhkxu37krcPPrLaxfhpd13D8o5m\/wTU+obOiBdh+sf\/9WglOFIxSAapr7YmV7zzOvJnC1IN2yJ9NpP85fXLsL\/ffnogDbTWiNzoPN+1usxEcmK7cFfMIT6gUE0TD26woB0Zln7\/f6Mmdy4fnPfncWPvLsMv161Ah5p2mGfrzUyB3J77yEk6wrx2oF7cPOzNxz2+TIRg2gY23vQ3PdB3WRCrcjjS9w\/lMjqrdNw+RMvYV1z\/y9I0Bg+us8QajOeh1tWvcY+ocPAIBrGHn05vSDy+XxQIql9SEeqDZt7b5b11NCahZv+fRO+98r6tNalBVGEeu8USO71yY8xzcM\/v3wVVz50P0fHDpO06OL6I\/udO8LdtdwNhy31SYtWmw02m20QSyTWT\/8kY09N\/xf7Th9Tgwvnv4Wlpf+CIVITd38QRWgJliTtD5J1hXBpF+O5jd\/iItYBxCAa5iaNVfDDS1MbMgYASZKQl58PrVY7iKUSY2+tgp\/8ceAmbx5fuQ3Xnvohso0HIPv2w+\/cCV2oa8dFWVeIiKYAYSkPTcHp2HRgDptfg4Q7NA5zVXsl7D1owdjR3pSOVxQFbpcLjuzsQS7Z0Ht99cBue7J66zSUT5yGU5d03FACBDt+fH8D8OATA3o66gX7iEYAta8ovRG0I23ZR2OLgvc+Gfj9l7xJ8n1f6lsN0QBgEI0ATa3A9r3p9fs429oGqTRiPP\/m0G4Ct69uSE+X8RhEI8T9TxsgK6n3+4TDYXiTfd2PMINVG+rNtuohPV3GYxCNIP9+PSut490u1xExyfHRl4Y2hPayNjTkGEQjyCebNWhoSX1ukaIoaB\/hTbStOyNYv3mIm2XsHxpyDKIR5vYHLWk10YKhENxu9yCWaHA9tmLoZ5c0pT5bggYIg2gEUptoqY+iedzuEbk6\/\/XVkcOavNhf7B8aegyiEeiTzRp8uj29UbTWlpYR1V\/U2KLg+bfEXC6psVXIaTMag2iEenSFAU536hvtK4qCttbWEbMW7U8Pp7embCA1smk25BhEI9gt99rSHtJvb28fxBINjMdeGrommcUS+2+OmInBIBrhbn8wO60w8vt9cLY5B7FEh2f1JxG8tnrompBjRsf++wiZejXiMIhGuKZWNYzSWwIyPMNob62CR1eIvYz2voNCT5+xGERHgKZW4InXRnYY7a1VcOt98pD3C\/VsmrFGJAaD6AjxyWZNv8NIdAe2qBACgLHFQ35KSoBBdAT5ZLMGt\/4jN+0+o5aWZmFhtPqTiLAQKsgd8lNSEgyiI0xnn1E6Q\/vhcBiNjYcQCAzd5asbWxT86WEZ9\/9bTAgBwLQKIaelBLgx2hGoqVUd2r\/+UgOmjnUD6PuD3jnPyGg0wp6VNaA7PO6tVaJhs3WXgr21GPL1Y4ksTbDTa88+Ixoa3Cr2CDdprILvnu+B2ZhebcdkMsNkNsFojK9ZeXzA3o55Pl4\/sKdGfQs1tnRNBtzTLXyGm4Jc4PKzgPkz4u871AL84q9ABl48VygGUYZYdmwEx831wmELIlENSVa0iMhqS72lXQdfQO303lxlRFOrFoGQhC93iq\/FHI6CXODrS9SakK2Xms\/eWuCvj3GG9VBiEGWgSWMVjCtRsKdWQtXe1EfZRiKLGZhXCSw9GqhMo0\/I7QX++Rzw6ZeDVzbqwiCiI05n+Mybnrj5lY6t1cA\/n2XtaLAxiOiIMJDhk8h\/VgJvrmXf0WBhENERoXMovvuQ\/NSOny2WgZm46PYCb61lIA0GBhFlFIu5K5QKcoGCHPXn\/G4\/jykBrL3syHuoBXhxJbDm08EtayZhEBH1onsNa1q3GtaY0eoGam+t4dYhA4ETGol60X3bWG4hO3i4xIOIhGMQEZFwDCIiEo5BRETCMYiISDgGEREJxyAiIuEYREQkHIOIiIRjEBGRcAwiIhKOQUREwjGIiEg4BhERCccgIiLhGEREJByDiIiEYxARkXAMIiISjkFERMIxiIhIOAYREQnHICIi4RhERCQcg4iIhGMQEZFwDCIiEo5BRETCMYiISDgGEREJxyAiIuEYREQkHIOIiIRjEBGRcAwiIhKOQUREwjGIiEg4BhERCccgIiLhGEREJByDiIiEYxARkXAMIiISjkFERMIxiIhIOAYREQnHICIi4RhERCQcg4iIhGMQEZFwDCIiEk4nugBEg2HZYhNOWmTCtuoQHn3RI7o41AfWiOiIdOW5NiyaY8Q3z7IOyPPdttyBD58twv\/9Pm9Anm+4W\/H3Anz4bBG+f6ltSM436DWi85dZ8ONv2wEAP\/1jGz7aFIg75h+35WLmZD2CIeCym5pQd0iOO+bxP+ZhwhgdtlSFcO1vWga8nG8\/VgiLScLtf3di5Vp\/wmOKC7V44d58AMCFyxOXc6SpKNfh2m\/YMHm8Hlk2DTQawOdXUNsg47\/verHibZ\/oIvbLV3tCyM\/VYG9teMjP\/cSf8lBR3vtH68+PtI\/Yv+1gGPQgenGlF9d+wwaLWcLC2YaEQTS2RC2GQQ+cdaIZDz7jjjtmVIEWgPoGo4FRUa7Dn3+eg8I8DUJhoKY+jLAMFOVpMXmcDhO+lYWSIh3uf8oluqhpu+1+p+gioL4xAqc7kvC+5rbEt2eqIekjqm2QMXGsDuPL9HH3nXWCGVk2CREF0EjAjEmGuGOWLTbBZlGPeffjxLUVSt+3zrOiME8Dr0\/BXf904r116pdETpYGd92UjZmT9Tj3ZDP+96EPVXuGvmYx0n2+PYg7HhAfiCPBkATRrv1hTByrQ3GhNu6+BbOMAIDt1SFMq9BjTEn8MXOnq+HU1BLBFzvia0Q3fsuOBTONyM\/VwGiQEAgqaGqJYMOWAP766NB9m\/\/gMjsWzzWiIE8Dg06Cx6dg1\/4Qnn3Niz014Wiz7thvNGBsiRb\/9\/t8GA3Awy+4k3aoPvXnPIwr1WH95iB+dFdr9Pal8424YJkF48t1sFnUrj63N4Ld+8P4z0ov1myIr3n2VDZKffl37Q9HQwgAWtsjuOPvTvztlhzodRIWzDRGg6iz2fHWGj\/uf8qFG79lx6ypBmTZ1DK0uyP4cmcIf3\/KlbTp2p\/Xq2y0Ft+92IbpEw1w2DXQ6bqakG++78MLb3ljjr9tuQMnLTLhqz1hfOcXzTH3zZ9hwGVnWTFxrB42i4RwWEFzWwQfbAzg3idcuPfXOZhbacCnXwbxwztbMRTOOcmMry81Y0yxDlazhLAMuDwRbK8O4bGX3NixO\/EXwdxKAy4504pJY3WwW9WmtdurYM+BMP77njdpN8O5J5txxtcsKB2lhdkowRdQUNcg41VBzfEhCaKPPgvg1KUm5OVoUFGuQ\/X+rj\/qhI629EefBVCYq0VBrgbLlphi\/oBjS9Vj9h+MfTFysjT4yy9yMHmcDmEZONQsw+NVYLVIKBmlRXmxBTOnGPCj37WitX1wq8J3\/zIH82eogdnqjKCmTYZeJ2FahR6\/\/oEDDzwd+wHbWyvjqz0hzJysx+K5poRBtGi2EeXFOigK8NaarjfHVRfYcMmZFpiNEpwuBTX1YSgKUJinxdzpBlRO1OOZ17x4+IX4Jm53YVkBAJgMUtx9dYdkXHxjU9LHShJw329yUF6sQ32jjL01YVgtEkYVaHH80UZMrdDjjr87sWlbMPqY\/r5eS+cbcdN3spCfo4GiAG3tEcgRIMumUZuQY+yYPF6PO1OofZx1ohnXXWqH3SohFFZ\/z0BAgcOuwcWnWaLdBEPplmuzsGyJGTotEAwBLc4IdFogL1uDJfOMmDnZgAefdeHVd2ID4rIzrbjiXGu0tdDWHkEkAmRnaTB7mh6VEx2YWqHH3Y\/Fvvd+9G07zjnJAp0WiCiAsz2CiAKML9fhh1dmoSA3vjIw2Ibkr\/7uOj9ucmUh2y7hxIUmVO9XPyCTxukwukALX0DB8294MXOyAQW5Biyea4wJos6a1NadsbWh31zvwORxOuw+EMZDz7tjagGnLjXh2kvsmDhGh99c74ipTQy0H3\/bjvkzDJBl4LXVPvzpofbofWNLtPjZNQ5cdmb86M176\/yYOVmPinIdKifosXVX7O935glmaDXAgYMyVn6g\/j2WzjfikjMt0GokrHjbhz8\/0nUui0nCL67NwtcWmHDpmVZs2xVK2CfXaUtVCFMr9KgYo8MdNzrw67tTb0bMmKyHTivhjr878faHXa\/VqUtN+P6ldhTlaXDD5faY2kh\/X68bLrcjP0eDhqYIHvmPG6+vVj+QY0u0uO4yO46dY8SyJSbsrQnjqVeTD9XnZGlw1QU22K0Saupl\/O2xdqz7vCsoLz\/bim+ebYXTNXT9N1ddYMOpx5khAfjwswD++aw7+kW9bLEJ3z7fFq0N7tgditZMj5llwJXnWWE1S9i1L4x\/PefGh5+pf88Zk\/S45mIb5lYacO7JFhw4KOPFlWqNcdkSE846QQ2hno+rnKDH1RfZcN4pFgSCypD9DYAhnEdUczCMbLsek8Z19ROdttQMrRY4sF+G16\/gs21BLDjKgAnlXcfMn2FAtl2DsAy82a1WMGOSHrOnGeDyKPj5\/2uLawa8ucaPiAL86joHZk01YGyJFntr+x7luvQMKy46Nb0h36XzTQCADzYGYkIIUGs+1\/22Bc\/8LT\/ucc+\/6cUlZ6j9NOd\/3YKtPTpYZ0xS\/w6fftn1YTnvFLUmtPIDf0wIAYDXr+DXdzvx8O+0mFqh9u\/0FkT3PO5CRZkOcyoNOOEYE+Y8ZMRXu0P48LNA9I2bTF62Fr++uy36Ju705ho\/QmHg1z9wYNJYHU5aZMKqj\/z9fr2uvcSG4kItvD4Fv\/uHExu3dv0t9tbK+Nmf2vDPO3IxfaIepyw29RpEl59jRX6OBh6fgjsfcGJLVWzwP\/mKBxoN8N2LB2bIunKiHn+\/NTfu9n8954p2MSxbYoJGAjZsCeJnf2qLOW7lB358tSeE+36Ti1yHBpecbo12wl\/4dTWEDjbK+P6tLfD6u4JjS1UIy+9oxb\/uzEXlBD3OPMEcfT3P\/JoFBj0SPm7rrhB+dFcr7v9NLmZPi+\/PHUxDNo+oc7SrtKir2jd1gvrL7tit3vfUKx54\/QqKi7QY29FXtHieEZIE1DfKOHCw6827bIkZeh2wpyactC9i5Vo\/PF4FBj0wb7oxpXJOGKPDlPHJ\/+tp0WwjCnI1kCPAv3v5EKz9NHFbfdN29YM1a2psJ\/0V51iR49DA61fw+IquJlbnsPArq5IHxe4D6rdm50hjb5bf2YoHn3Fj264QTAZgwVEG\/Pjbdrz6YAF+8wMHLKb4ZhsAVO0NxYVQp1Uf+bGvNgxJApbMU\/\/u\/X29Ov8uX+0Jx4RQd6+s8uG9dYHo+yiZyold77eeIdTp8RUeNDQPTI2obLQWs6bq4\/7Ly1Zfl7mVBhQXahFRgKf\/m\/i9s7dWxoYt6u89bUJXOEwc29Wl0T1MuntllfrFPa606307tlTb5+OeetUNeYgH9YasRvTeJwGce4oFhXlaWEwSvH4FY4p1iCjA\/7pV7ffXyZgyXoczT7DgviddqOgYaes5HyQvW83Qygl6vPdkUdLzajWAHAG0KTZ7U51H1Gl8mfon9HiVuKZVd59vC+GyM+Nvf\/EtL762wISiPA3OX2aJfnMtntfVid\/Y0vWu6OyYvvuX8d+0nSQJab2RnnrVg6de9SAnS4NvnG7B0TONmDhWh2VLTJgyXo8f3NYS18fW0NR77bK5LYKKcrU5BPT\/9cqyavo83xvv+\/DG+313sHY+V31j72VvbJFRlHf439FvrfH3Omo2ebwOkgS4PQrWb04csgCwt0Z979usXWWyd\/y8vTr5e+711T789Oos6HXqF8LaTwOwmtXHJQtiAFj3eRBujwKHPfGX0GAYsiDatC2I5tYICnI1OPMEM4IhBXarWrXs3qG5vTqEKeN10W+vko4a1OYEo2UA8PmOIJbfMTQjG4cjoiT+9tm6K4Tq\/WpfzQnHmPDiSi8qynWYOEb9\/Vd9mDgUk038PByt7RH84xk3\/vGMG9\/7hg2XnGHFmBItvn+pDXc9GNsM1PTxOZWSvIdHyus1FCSk9kHvfOscTiz0fD06ByqSiUSUwzxjeoZ0icf+OjXZKyfqcfRM9Ru\/+wgaAKxc64McAcYU61BRrkNejgb+gIIVb8c2RTonhBXkJK\/qzJikxz2\/ysHdv8yJNvUGWmczyGqRMGlc8lyfPS1+flSn99erTZzJ49UpDhefprbj6w7JePXd2G96j1f9vU9YaEr6fD\/+th33\/CoHy6+w91r2Y+cYccbXzDhmVnzZ\/vmsO9qcriiP7y8oLuz9O6ywY+SlsybV39er3aM+rjA\/+Vv1tOPMuPPGbNxybVavZep8rlH5vb8XeivjQKraq\/59rRYJR89M\/v4Y11Hrdnm6aqXujvfB1IrkfTmnH682h8MyogMDHp\/6uMnjkj9uyngd7LahXf01pGfrbLqUd4QMgLgq6ZaqEBqaZGTZJFx2phVajfqB7NmefftDH8IyUDJKi2VLEn8ozz3FgnnTDZg4Vp9SR3V\/fLQpgKbWCLQa4Iqzk3dyLp2XPDiefMWD5rYIzEYJl55pjYbWxi\/jq+vVHcF33PzEfV7FhVqcstiMedMNMCfp3+l07ikW\/OJ7WfjxtxN\/gCMd7\/tEtZvxZTqcdYI54eMu\/LoFZcVaKIragQ\/0\/\/X6Yof6N5gyTo+jpiT+8Jx9khlfO8aIKeN772Dd1vH+mzxen\/RL4\/KzrSjqJfQG0oYtQdQdkqGRgEsTjKoC6shg57SQ7s2wnXvV98GiOcak\/Xhnn6S+Pntqur7s99aof9eFs5L3mV5+jg26IR7BH9IgeuP9jjdjoRaj8rVweZSEozOdtaRj56p\/rM5aR3df7Ahh07YgtBrg+m\/acdpxsR+K719iw9cWqG\/4NesHdzb22k\/VD9uS+Ub86NuxtZDiQi3u\/01un02ZzqbnknlGjC7QIhAEnn09vgNzxf+88AUUTJugx10\/zo55Ex41RY\/f35QNu1VCqzOCfz3b+zyitz\/wQZbV5u9tyx0x9y1bYsKkjg7RXfvim8U19WFcd5kdV10QG75XX2jD1RfZoJHUD0vn0H5\/X6\/HX\/LgYKMMi1nCr65TJyl2Ki7U4g8\/ycb0ifq4vsZEnv6vB02tEdgsEm67IRtzK2NrIZedacVlZ1lR2zB0awhXrlVHC+dNN+D\/\/Sw7Zo3assUm\/OEnOch1aNDmUmLeD\/95ywuPT8HoAi0evD0Xx87pCpYZk\/S499c5qJygR1gGXn+vq1b9+movgiF1UObPN+dE+\/A6\/eyaLMytNKDVObS91UM6e+vAQRkNTXK032dfkgWJn3wRwJJ5Rtgs6oesc9Sgp9vuU2f\/Thyrw83fy8K3zrPC3zE5LT9H\/QOv3xzEH3sMqQ+0Pz\/SjvLR6mTCC5ZZ8LUFJjS1RqDXAaMLtQiHgQefceGnVydvOqx424ul843Rcu\/YHUpYi1u9PoAJY7y45AwLjjvaiDmVBTjULMOgl1CYp4XRALg8Ch542t3nJM6VH\/gxfZIeZ59owUmLTJhTaUBjSwRGg4TSUVrotOrgwT+ejg+0qj1hBIIKvnOBFReeaoHXr8BikmC3qq\/ZoeYI7n0ydiJdf14vr1\/B\/U+68OPvZKG4UItbb3DghsvtkGXAYZdgMqqT+d7+wI+nXul9u4\/GlggefdGNay+xo7xYiz\/fnKNOaAwqyLZrUJinwYYtQWi1XX2Tg+3hF9wYVaDFKceasGiOEfNmGOF0qRMas7M0kCSg3a3g4eddMbOrP9oUwBMve3DFOVZUlOvw+59ko609AkVRH9c5OfK\/73pjZp2\/ucaPqRV6nH2SBQtnGfDs3fmob5ShKEB+rgZZVg1e+p8Xxx2dvAY\/GIZ8GumemnD0Rf5yZ+IO6BVv+\/C9b6izX10eBa+9l3hEpLU9gm\/d3IybvmPH\/BnqkgGDXl0ysKcmjDUbAvjXc73XCgbK8jtbccPl6uS6glwNsu06eP0KvtodxnNveLBrX+9rtTZuDaJ6fzjaZOhtTd3DL7hRfSCEc0+2oKJcjzEl6uxrlyeCz7eH8eiL7l5HRbr7y\/+5sHNvGGeeYEbZaB0mlOuis3S\/rArhz4+0Jw205Xe04kffzsK86QbkdHxomtsi2LozhAeedsVMtwD6\/3qtXh\/A3toWXHOxHZUT9DFLPKr2hLHyAx+efb33eU+dXl7lQ32TjEvPsGLCGD3KRmkRloHmNhkv\/s+Lvz2qLvEYSnc+4MT26hBOWWzCmGIdch3qdJDmtgh27A7hiRWehCOyT73iQdWeEL5xuhUTuy3x8HgV7K0N47X3Eo8m\/vVR9bU59TgzSkdpMa5MB39AQX2jjKde8eDZ14c+iKRFF9cP7RRKGtG6rzXjgk4aKNwYjYiEYxARkXAMIiISjkFERMIxiIhIOI6aEZFwrBERkXAMIiISjkFERMIxiIhIOAYREQnHICIi4RhERCQcg4iIhGMQEZFwDCIiEo5BRETCMYiISDgGEREJxyAiIuEYREQkHIOIiIRjEBGRcAwiIhKOQUREwjGIiEg4BhERCccgIiLhGEREJByDiIiEYxARkXAMIiISjkFERMIxiIhIOAYREQnHICIi4RhERCQcg4iIhGMQEZFwDCIiEo5BRETCMYiISDgGEREJxyAiIuEYREQkHIOIiIRjEBGRcAwiIhKOQUREwjGIiEg4BhERCccgIiLhGEREJByDiIiEYxARkXAMIiISjkFERMIxiIhIOAYREQnHICIi4RhERCQcg4iIhGMQEZFwDCIiEo5BRETCMYg3nf9+AAAIZElEQVSISDgGEREJxyAiIuF0ogswUtisGiyZZ8TSeUbYrRJsFg0mjuWfj7rs3BuG2xuBy6NgzacBrP00ALcnIrpYI4K06OJ6RXQhhrNTjzPj4lMtDB3ql517w3juTS\/efN8nuijDGoMoiTnTDLjl+1kYXaAVXRQ6AhxslHHXP9rx2bag6KIMSwyiHmxWDX55bRaWzjeKLgodgdZsCOB3D7azydYDO6u7GV2gxf2\/zmEI0aBZOt+I+3+dw5p2DwyiDhPH6vHYH\/LYF0SDbuJYXcd7TS+6KMMGgwhqc+z3Nzlgs0qii0IZwmaVOt5z\/AgCDCIAYFWZhOjsCiAGEa66wMrmGAkzcawOV11gFV0M4TI6iEYXaHHRqXwTkFgXnWrN+Bp5RgfRVRdY2S9EwtmsUsbXijI2iEYXaHHqcWbRxSACoM7gz+RaUcYG0dL5JtFFGFb218nYsTscd7vXp2DH7jCaWgdmAl6y81BmvyczNohmT+Mcju4eeNqFq25pxhvv+2Nu31cXxlW3NOO9df4kj+zfeSheJr8nM3K4qHMlPcV74GkXjp5pQH5O799RTa2RaC1pynj1beT1Kdh\/UI65DVBrQV6\/Ap8\/AlfH0obOWlH34zLdknlG2KyajFz+kZHvgkljMvLXTkmrM4K\/PtqOu36cnfB+r0\/BPU+48Np7XavJx5fpcOOVdsydbsC9T7Tjix0h3PurHMydbsD26hCu\/mULjpqixxc7QtHHdNaKPny2aHB\/oRFm0hhdRi6MzdimGSX2jdMteH99IK6J1unux9UQ+sbpFvz+pmzceKUdrc4Ibr3PiabWCG7+rgMAcOt9Tnh9Cu570gUAuPm7Dtx4pR3jStUvgRuvtOPGK+1D80vRsJeRQcQ1PslddYENOVkaPPC0C15f7MYMTa0RvL5aDaEbLrdj6XwjLjzVgtuWO9DqjOC9dX6UF2uj4fS937Tgix0hXH2hDeXFWlx4qgWlo9SRoQtPteDCUy0ifsVhLVPfmxnZRrHx\/Z+UxSzhtuUOLL+zFfc84cI5J3VNcdhXq\/brPPu6F8++7k36HBeeasF7n\/jxxY4QxpXqcPFp\/IOnKlPfmxkZRO7knyECMHe6Aacfb8Zr7\/kwKj9+bsuNV9pjajNNrRG894kf0yeq3+bdO60lzhdNS6a+NzOyabZzb6jvgzLcjVfakZOlwcMvuKO3jSlRv7defTd229P\/vuvD3Y+50NiijvY894YXrc4Ijpqix+4DYTz3RoZ+uvohU9+bGRlE1DeLWcJ1l8V2JufnaHD68WbsPhDGLX9tw5tr\/HjsJQ8efsGNnCwN5k03YH+djIdfcOOoKXo88NtcjCvV4eEX3NheHfsBe+wlD154iwFFqowMoqp9nNmbitOOM8XNt7rxSjuWzDPi\/fUB3PmAEw893xU6FrOEP\/zLCQC44XI1xH75\/SwAwF0PtsPrU3DluVbkZGnw0PNu3P2Ya2h\/oREgU9+bGbtn9R9+ks1Jjd3sr5Ph8UUwtSJ21MbrU7CvLoyCXG3MJMem1ggaW2RYzRqUF2tjjgUQ8zydzz2mWAeLWUp6XKZb+2kAN\/+5TXQxhMjIzmoA2LQtxCDqRg2T+I5pi1lKGBb5OZq42dfJju353MmOy3SbtmVm\/xCQoU0zAFizYWDWThENlEx+T2ZsEB1slHnROxo23nzfh4ONsuhiCJOxQQQAj\/zHA7c3I7vIaBhxexU88h+P6GIIldFBdLBRxvNvZPYbgMR7\/g1PRteGgAwPIkCtFe3K0CFTEm\/XvnDG14YABhEA4Ae3t6K+KbO\/kWjo1TfJ+MHtraKLMSwwiAC4PRHc\/Gcn+4toyLi9ivqey8BN0BJhEHXYuTeEb\/28mc00GnS79oXxrZ83Z+y6skQYRN0cbFSryms\/DYguCh2h1n4awA9ub834zumeMnaJR1\/mTDPgl9dlJdwGgyhd9U0yfvdAe0ZuA5sKBlEfTjvOjItPs2AC97mmfti1T90G5Q1Onu0VgyhFNqsGS+cZsXS+ETaLBLtVw3CiGLv2heHyROD2KlizIYA1nwbYGZ0iBhERCcfOaiISjkFERMIxiIhIOAYREQnHICIi4RhERCQcg4iIhGMQEZFwDCIiEo5BRETCMYiISDgGEREJxyAiIuEYREQkHIOIiIRjEBGRcAwiIhKOQUREwjGIiEg4BhERCccgIiLhGEREJByDiIiEYxARkXAMIiISjkFERMIxiIhIOAYREQnHICIi4RhERCQcg4iIhGMQEZFwDCIiEo5BRETCMYiISDgGEREJxyAiIuEYREQkHIOIiIRjEBGRcAwiIhKOQUREwjGIiEg4BhERCccgIiLhGEREJByDiIiEYxARkXAMIiISjkFERMIxiIhIOAYREQnHICIi4RhERCQcg4iIhGMQEZFwDCIiEo5BRETCMYiISDgGEREJxyAiIuEYREQkHIOIiIRjEBGRcAwiIhKOQUREwjGIiEg4BhERCccgIiLhGEREJByDiIiEYxARkXAMIiISjkFERMIxiIhIOAYREQnHICIi4RhERCQcg4iIhGMQEZFwDCIiEo5BRETCMYiISDgGEREJxyAiIuEYREQkHIOIiIRjEBGRcAwiIhKOQUREwjGIiEg4BhERCccgIiLhGEREJByDiIiEYxAR\/f926lgAAAAAYJC\/9TD2FETsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsRATsAvr\/2Wgcwh2HAAAAAElFTkSuQmCC";
  var data;

  @override
  void initState() {
    Future<String> loadString =
        DefaultAssetBundle.of(context).loadString("assets/json/data2.json");

    loadString.then((String value) {
      // 通知框架此对象的内部状态已更改
      setState(() {
        // 将参数赋予存储点击数的变量
        data = json.decode(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe6e6e6),
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.35000000000000003,
            decoration: BoxDecoration(
              color: Color(0xff3a57e8),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.zero,
              border: Border.all(color: Color(0x4d9e9e9e), width: 1),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 100, 20, 20),
            padding: EdgeInsets.all(5),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(color: Color(0x4d9e9e9e), width: 1),
            ),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ///***If you have exported images you must have to copy those images in assets/images directory.
                    ////Image.memory(Base64Decoder().convert(image64), width: 200, height: 200),
                    Image.asset('assets/images/main.jpg', height: 400),

                    MaterialButton(
                      onPressed: () {
                        _login();
                      },
                      color: Color(0xff3a57e8),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      textColor: Color(0xffffffff),
                      height: 40,
                      minWidth: MediaQuery.of(context).size.width,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 18, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          GestureDetector(
                              child: Text.rich(TextSpan(
                                  text: "All Widgets  ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.blue,
                                  ))),
                              onTapUp: (TapUpDetails details) {
                                _widgets();
                              }),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _login() async {
    var d = rootBundle.loadString("assets/json/data.json").then((value) {
      final jsonResult2 = json.decode(value);
      final map2 = new Map<String, dynamic>.from(jsonResult2);

      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return Home(map2);
      }));
    });

  }

  void _widgets() async {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return Widgets();
    }));
  }

}
