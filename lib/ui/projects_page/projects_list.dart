import 'dart:js';

import 'package:flutter/material.dart';
import 'package:placeholder_website/ui/projects_page/projects_tech_icon.dart';

class ProjectsList extends StatelessWidget {
  ProjectsList({@required this.horizontal});

  final bool horizontal;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (horizontal) {
      return _buildHorizontalList();
    }
    return _buildVerticalList(size);
  }

  Widget _buildHorizontalList() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Color.fromRGBO(245, 245, 245, 1),
          border: Border.all(width: 1.0, color: Colors.black),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _horizontalListButton('HOUSEKEEPING'),
              SizedBox(
                height: 7,
              ),
              _horizontalListButton('DRUGIPROJEKAT'),
              SizedBox(
                height: 7,
              ),
              _horizontalListButton('TRECI PROJEKAT'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVerticalList(Size size) {
    return Container(
      height: size.height * 0.8,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color.fromRGBO(245, 245, 245, 1),
        border: Border.all(width: 1.0, color: Colors.black),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: ListView(
          children: [
            _verticalListButton('HOUSEKEEPING'),
            _verticalListButton('DRUGIPROJEKAT'),
            _verticalListButton('TRECI PROJEKAT'),
          ],
        ),
      ),
    );
  }

  Widget _verticalListButton(String projectName) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Column(
        children: [
          Container(
            width: 240,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                    Color.fromRGBO(195, 20, 50, 1.0)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                overlayColor: MaterialStateProperty.all<Color>(
                    Color.fromRGBO(36, 11, 54, 0.9)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(
                        color: Color.fromRGBO(195, 20, 50, 1.0), width: 2.2),
                  ),
                ),
              ),
              child: Text('$projectName'),
            ),
          ),
          Container(
            height: 102,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0)),
              border: Border(
                top: BorderSide(
                    width: 2.2, color: Color.fromRGBO(195, 20, 50, 1.0)),
                left: BorderSide(
                    width: 2.2, color: Color.fromRGBO(195, 20, 50, 1.0)),
                right: BorderSide(
                    width: 2.2, color: Color.fromRGBO(195, 20, 50, 1.0)),
                bottom: BorderSide(
                    width: 2.2, color: Color.fromRGBO(195, 20, 50, 1.0)),
              ),
            ),
            child: Column(
              children: [
                Text(
                  'For platforms:',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProjectsTechIcon(
                        imgUrl:
                            'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAABI1BMVEUAgAH///8AggD//P8AegAAfQD/+v8EfAr//f4ciCEAdgD8//nx//Pq9+8AeQBElUb8//3W8c4AcwD///cAhgD//vuKxouEvYXw/uJoo275//uWzZr/+P8AbACXupL4///5/+rJ7MpXnFPg+9vp9+l2sHn///MAZwC/48EAigBko17s/+5rrXL1//cagBr//fJxpHKezaLQ7dHD6sDc+N2u16xdmmGr2as7gzq85rUnfCXT9MtwsG+a1J94vHvX+9khcRKSv352rWdCmTmXwY+728DT7dMogzImji9IoE6x3rdttmqRz5FQjVLk/9e01baV3ZF7yHsseSim4KNVpFJUrk+Ar33M9smq1qHR57k7kju37bV5wHRSpVpYpGRfmGKhxZKclXNiAAAV+ElEQVR4nO2dC0PbuLKALclyhO1rhGOF1NhrSJYAdZ0ukC5tyqPnlr7Z7T2ld9vL7vac//8r7oyTUEjstM6DGE5nuy0E2+jzjKQZPUYamU4sEYj4Ue2JbQRWQsSUT+uJIIkVGMnJ7qOOZFE05dO0Ke9PLBH/uhWGBzIgUsyGEN6bNOTJ463wcUcIOeWzpiX0ZfVJ6FGn2xRsZoBKMBbfD6nnfn5oTPuwaQkjpp5WdjzqHibCmBGhUgbzj1yN7uj7yli0lQrDSI5NSmm47zM25cP6ohSTJy73dPfQZmzRhApMc6XLKdWXO9PWmK/CkkPTo/qzFUmkmvJZ0xK2/Ei0/mFyTTPXrCmfdSmCbLtUo9p/t0RktaZ82NRWqqTB6l1aqXiVjiCRVA/HvHQhoA2BFimvwkaCSCkJi5/jA81OwCw5relPS8iULwzryNSgQIfYXaiH1ewrVV/gC4kYOSKlMMiZS03qHPuBSFQJCKWh6suOxj13m0BjY1nZKlI9svQfy8okhBujCLTc1DQw+3YTekV/4YRCQUU0rH2Hapwu29Bj+H62a4P9JSCIVFjOJREQCnloanzH3a1CQ+rLabugqQklqIOx6qFGueauJViobEJmYBVMCdMvsh4mENDad+FteQ0bXglY86IJCalWsWidtsdNbenEMkgmIVRQME3f90FLYKuomtGrUiNtdZa5o6HJCwucm6nLN7VPQ6oPJXrHpyataM5xKxC+ynrtMl7Ze/Fi++37Fy9evHzZif2sp8mIiPU1l1Yo/0VG0mqB1S/aLwXB3iEKkldU06j7lAWklUTYaFgWNJxEknjl0Wrjoq1xx3RRTNfRubb0+s3x7pM6lF9Vq1UL34qftCIWNNtg79T52cAfzSBamQEhimT+Wxcqj7MMfpZlQZsRMLAw/+Tg+LkbhqbDgV/D/3sCTSU33XArfP7ufMWG92EYjEjUq/8AOnvNPYtm5ALOilBFkX1f39E889yCVgTbiMjeOP2163LN88BtHXCl0vsOPoUf6eGz3063begGoQUymPUEPG6qPe4kydRRRU9mRyhWKlBq73XTwJYyOVl7rHPONV4B9cEXDteuC7hlAFiBKzSuP149SaBNNtTvF5xy6rwXdukIZeAfu9gG/pFEfrzfCE0A8EBbKaaWJTwVUBko2Qwbb+uJ1bwPNqrzhm+A4zCbos2IEEIAJpptXaN698+To+Utl3o7vKKnekoNktIsRPwxr1S452lm+Kp29MbFGupuQGcybUwxkBkRQqchWRXcSUqd5xchRFNQcH5VW/qIHq9gcxNYKTchrIfO3jkmqsVYZn9SXGZGCK2EipfRs+E6lh7blQy1XUe8rJK8/236UTtWBjZVsynarOqhAnfEV/+jj2f6LnH+CZ5gFFkzMtMZEWKPHcXbr2lOo1JAOH39yAZCOaOAelZWCh10/dicGq8n7mGdiGhGgyIzIjRYdNA1vW9UvO8Uz3M/vAX/bTZFm1U9jFehf5gJn4aGyt3juFz94UkDGnpamY2V8ormUbexMpuiTT2aCOGvn2y8GnHKphSqOZXzlmFEatGjiYkyDP9gaxa9xDCjHq61GAbUiyUEHfo/hTOrgdeEh6t1NXXHPy1hIOLjUEs97FkDQsvl/t3xpw0xph5NtN+ZO96MmpgRQqq/6Sy2HgrSbITenAgRcsdsNBdJKIj/0dErFT6bnn5YwHXnjvNlyqZmYkLwGyNm/40jwZcKnAHoaCTp/G2z6GHm+N18CYWUInkQZr/7SYXzjHvdL7aUkw99T05IRLXmZlTAzFJ+PyFG/EOfmsdJFN08ocXItukN0fQsbHJCSke7Ha7tuLuETRxLTUyYqJ+7mYMvmR9+F146qIP/jTzx2ctqcuOEUfxB9661LZw7ruuA/zZhEAURhYlDx8MmwLnHnzXtGyeUm85VEFAcd73//fjcdPmkSjSXlj++abvDY1bQaezQxg0SStVSIrLOTegFv44lYdS627GTeO8PdOL0gpjc8/Rnj2I7sTsHj8HNpVy/ah8QafzTZ4ZKJmhSJ9ChagnD77R1HEsblIJz9++TRAgio/jIhAIWVSTVlz5Z6Syw3Tx009G3azVAMzf8gNwMoZCRMOIvbtrTX5bCbdQtXLYQESuuhVlt4lg+qj/7ZCsiiTDUw/WGO+o8mMuxZCJ//n+GhEAhqp/d6wC8fUKYwEFFwSz7i+l5WpFu0fPCn3x8AMHJi+pTMPSh+7nm1hLGJogWJyCEYjS7w67VO58JnCiVwmBkHwkrBZw46nVfEkMQRnCKWFQbjkeHu1pufoKfF+8WJ2hpmJEcu0OE5lEUyCQCSlyOET/mO7xSoCZSvhwLg6DzCYiRqrmjPY7nNGImboIwMthGZbjTMp+IoGWD/iIJlmr/5nhA+P2RPzUbMS5cSeeO4SWeD79BvIaGj+TNELL1+/rw73f+JIGSQWAQq6VYfVn3uF5Ahx7HlRctGxUINVGduXRk1oN6eqM5weqaCQir/xeOtJNmLYLeCteeVKuC/d7W0GMtYKW02wGwdMpQMFZ9p2cQUm3r3Co+plGc0Kg2dGhGrgu/iJlKEtu2WMDIZxwdLuJ/e9w9SkRgYFsshGy2s94O1/jr+CYIxYbpacOjh567BmVjUhpBkHS6OMZSpLeA/rD7yQ8CbI2jKKlBNRy5O11ks1t8cUZxwtYXbTho0rQdGm5HIgAxfJypLuh8gwW6H098IQ3DsHBVhzc6iQV+3I72OCZFGYsTPnF3RtUDRQzXmgnE4vGTC2wIC8aIiPjqz3oL5PfVLZ458MPBDQj/JEVXkxcnPNSprg93BDgT77b/Wjs4+2g6UFy9UqShSYNKiL3e1I7W3rXToGz0Znxtuv53YaemAGEkcN16s83p6DsGHvBCcMWTwyeK89MH4qIph4+xcGhs9g0jkdkL/2ZAKCLWOnALln22Ym4KICzSohYhVEyIuDGHSZgCwkNbQJdSIMQoQCgVM+T+YlWo0fAtAd++wHRNEUJc0V0z5zO+/d1ivksMlr2IempC4UuRXMxpBP+7hWuxIYoMvBUhTHyyt2AjBU9JfytkMp+2VEVCnZmLJtT4oSJ+gSm3AoRVyVof89YZ3hyhdrEuopw9HVMSKiHq3RkseppS6LMVeNvzIcQBmIUDQoBxAKHknAjlkTsa1dywcOquSjaf3oIY1rE5EvvevOhfkjkRysBe1vi8puy/V+DXL8fGfAijoLm0aBvFiSja7hTZOluIcMWZyVz9tIThRpGts0UI2bZbAkJK3V01J89b7DoL7yyQ0PmjOidCcgoezYJ1mEqjNS/CTaoVmY2Yl3jtIrufi/T48ou3cEIcSPXc9fnEFsJe7m1hmo/kLsRJP7+8TNcdc2ulQIBYKD7818Xzi+U5SmNE7g/k8N4vIJsgq7W19+vz8UsFseN4fd2eo7SuSbUKfwZyyaRUlRgFBtsKRU/MMIz0r3kI6+UiuCL9D+Dvr1ujRXpZkaQ1BQhbVYYbPYmYm2BChSsSpTL4xk8FZ4hV1Sow8l0kxq/ieJtvzVGqV0VdE8JSEb2L5lMPUWax9Xg66bFN3ltYgoGHHQhJ0DoYmKWwEt+X8LEMjE4d5Of/Woz83JP6er0TiyBNGyOrto+bh1maaCMiAcQcI4sZhgh9YYivazl9zADRSzeSrnZ61W5320uLlW4XCrEXQZMKRbIw1wiWsicsilgghuroEGEkVKv+5/lZbRXl7Oz8qS0CgykwfOGfuLgVlC5WcJrL/YTlxLY9EPbT87MzLGytdnT+qYlr7sYSCrn++SIcLA903TBsvIigi2hZUNProQOEvLJI0TVd5+FTwXwbapSIXjRC13VTzwfKG3Y/rxM2ltCwj10d3lPvcbjk0AnPbGjKfMlE08T1rd6ilQgB4goQJhaT8Vmo41bqgeOX7nkbT7i+ms7BX96Bi3bNWvyQYdKRDv5s8bEFEO4xgWlxQB39LfGDH3leuLk+lvAI18x9vQGU6YDZf1YBiVqi6WasUbhpSYP8FVH1SUAOQtzixrVL9aYrp84zCQVTPmGyvtRf7dTXodZbOd/F1Hc+aeLC0QUPY8BL96j5FDtmEXd5v4CD4qZFX2paqOKBnzcgNMARCpLTzJ28nrtqCWiiQIff3oI+Z8FURpq5gmtt/V03c8mGWbMN4lvsug5BfwDe+aBnrTHwnA+4v0qUiVAxFT8eWRKSXsG7J6nChuuhVAbZzZ4dBNve9Vm5CEFFu9fajIFgp7GmjKofZRGuOpnF59RcleUjPM1YhJpewleVoUYIBRDKHELdc1YxQ2OPcLEyIJSoDy+zNEBImLpcEX5ZD5Vk0Wn2DG8FCIlRrpYmCkjNoZnTRNRZjcTXrWCXOsT8VavZhFwDQhaR+qKnuLUrOmSkpud0zlBaofwMQqJyCCnXV3G4tO4ufkD4kpAAYSW7NPomhJFZhKBDJ/upl4T0thBm6xAIs1d0XRKat0aHuYTf0KF5O3ToTG6lPwhvQL6fcNhru0uEd6gejmxs6UmvtxiKnn4Q3jZCkUkIPs0tI8yth+qu6HBsS5NJuHk3CHmvLR0iZCnht7y2W0J4DzU2Mk5zGwmzWxoKVqpYcocJtTtPePd1ePcJ/5OtlNw6wrwe/wGRwhqOLRhGG5vZY1e3jZA/ID6p/mcSqjtCqOfr8N4dIbz3g3DkqXeCMF1J9CCnt6jcCcKq8PMJnXIS5vk0eYQyj1Arqw5nRkgrvHbXCfXarZqZya+H93LrYe1Wza7l63A8oVwvm5XOmpCsO7fcSr9NaC5869qc6+EPwpuQH4QoPwgznvqD8AblklCQmpPTd90RQtCh+YPw1vf4kxDmjGKUlHCSenirCFcnqIf5oxilIqSTWalFxkTA5SLU3JRwrRjh2NHEAWFl4cu8ewcJuk0xF0LRqix8T1CP0JwX4XoJCLVpCEU+od4nLJeVujljbfwesXLmnvIIdb1vpbeGUGYTyrw54FtGmGelY2a5daiHolyEZEw9dDazZrnHr2sz18qmQyXJIzMnrb3+S+760ttFuGtm73sCK81dfZlD6OmlJHzk5OkwdwVt/o6SchLm6nAMYa6VHt0ywmwrRW89+6ncPChPj68PCJ/k7D/s710bJiS+FND+Zu8h1ZDQIqjDRccWvW2wTUxxsm96mbWKOjWVsaMEU4Oof/cyXQ2HSCZ19oloKR8IF78hn3Jq1onF2IrpDe2w7G/L5/9WJKpaQ4QKCZ+YmRkTuKdj2lcg5OUhFOylPmyl6RFbECB/BprLU3YvrRStdqWd/UxvqYkZqKyl8hBKIurtnAz8lacqImzEp2EkYvGykxXEe9pFnUSS+GUhdOtpw7c8XNi0aFx/VVeRMIYJiSEiYe2GlazjxMx7Vcz6UhpC0CHoo7o52vRD2XX3FEt7meFkQBihDkHxbsZmbR5uCFYiQq1HKDaGzwjF5B/cbHcEHnY9vB8/PbyCWeehnh6C02+UeHo6XngcG2UipE5KyOyzMNUa7+c9gr7Mozw8t8AercvuYih7S3K6RXeo3k8WUsFbNPdfdRsaIkuWhVAz17GlIXZ8z6UaFLfSz6dToTtaeDp0UuJwFqXkKExdt9RUMbuNG35p2jjEUS5CC5Ob2M3DLejgvIEHzrnu1oZz7g8RBizZ+LVrYopJEMcxu433dgItbQkJoUxJ/Pa3rmmaWFYdCt3+dds3grGEmAXN7+zt7W1sg+zvr3RsKdPUhWUi5KmVYlZFYiWdlf19LOzGxt5KJ8HUfGMJMTeikWZixAx+7Gt6RkHK0x9qlXUcp+knj4TiDQpMsPCqOpYQE4LA5f00hn2+NGEjKU9bioSkV6g+Yr+8vQyZciwh9BmRb6l+Lkrf9/FyCTfjv8lS9lFTNyycL63ja++XSkIpL3Nn+lE0nFOxQGZIFrf5wrO34CGuvF3kgLlihIvGQ+EUD+qbG6G38NMfINLhb+w5EdqPdS87rL5BcTzPeZDMx0ox9Bg54vWmBdo6b2vXEt8u7iSEJH6cN0R5g4Se87hT5NzjIoSGfOLSrNSQ82p/Unv5ajM0PURQM58kczqVDFwH/zQcnIE7yMWYnl39HYi5yTrHCOYX5YOKn6bixOSWp36hQx6LZEoWQsbHW+kJEJip9YqMbX7Ai+8nlc+QsYRp4Kf1cqmmv7FSMbeOY3CU53TODHi1vv2o66aB5nXVjNdemgc1ZzZz/J308kTTNFEpN93V2C92PHcBQotgxnJ1UltuO65rpvGVbqJoYw9W9ajpOs7ghuvijDk2GA9cwdvSUM5xIDzS28/P/Qhd7AJHOxfSYc/PVfHG24PdtZ6c1U7Xzi7GWimt/AXXrGXKX24ltxajm/9m8/B4c3W1tra2+/799l4njVWZGPauZ0SYisAjcZX6mse/SlTr/thkfLT9tKWs7CzqT8OxhOYTaV05rUOwIEAHu1DW9EL9IbjxmO2eYMQ4SHcvAsP6MrbB8JZOGB5BJUeF7Id8DCF19gIDfpOFf4iSfvpq04Of50KYKRGYjHqQs2SgL+09kVdxNjAHaV5VhMbzpVH4dNxhmZ6QfIuQtldym4ZxhDhLdFsIO5MRQjtbFsLDuRBiRXzJSkKYPTs+NaGm3XVCrnVKQvggO//wtIQapyUglCIianMsoQaEwsrupr/R0rSbLCpw4EqmzIQwJ4f0FUKWc3zLeB1q7aYoCeH4o6zb8YSEfOmu61BfKo0Ov+G13X7C2ngdvp7CShdPSISM1DeOlEfCCdpS6A9fl4BQ4NFJp2N7fP4qht4iO2YFQjqmt4B3UwJCCJ9Ox1rpxITpnaUgVGtjY3ycSJmMUL+Iy2CljKicNY3fRchzCTUKhKXQIVGfpyDM1+HdJ6RlIRRCfc48tOcq4ZjYIl+HJamH0hLk0Vgd0uVEWjmMK2E6XZe9NJny5XUiq1n3FZCZEL4dq0OtR5gZ6K2Enp5PqJWEkJHt7yHM1GEzxHW+OecAl4OQ4ElYG+HYetjw4SKZSVjforw/T5hBSEtBiOt0TrJPwuqL/iAieVZqQz2ENrPUOvQtg8XuuEkyZ5MI0GEmYeuC6zRnfQcQNspACDoM7Oe9Mg7Zav9b84gwmWOl1WMTdJgz7UF5o0XkonsLRZjw7Z+wIo5MlKanS1LvQyfJn0rZa1OOc9na1dqIX+Cy0XCbDI7HnVymJlRMyKTTxeLhuZ6Xx6TD3xVcFs/dmp2kq/+ybhdW7crpaVcOWk+VfxhDVLl4QoGIB6EDMJVr5kZxclhzl+NEpctTs24XKv6N71A+PFOO37ofmlUIXMpACOW3d0Pued71c2Y1uuOZv9UtfAkqm9AnRtzltNJb+NC/j6dz9mZ3o4XrgBdNKFW6kpX4B10XinVtkp561P27wwy8QGXrIooC9vuyW+G9xR29+3DSlIcXnyzU/cJ12F+wagi5t/ksvH4csh4+W4tJMHaVnQRD7Ww61+9z3fDZaQd1H0VFlj9lygwILctSxAiY39n96Zqc7nZUYPRmt3Pm3g1mJ8xYf3p67b7V1aMTPwhwp9L0hP8P1b17CBULDBQAAAAASUVORK5CYII='),
                    ProjectsTechIcon(
                        imgUrl:
                            'https://evo.audio/wp-content/uploads/2016/05/Windows-10-Icon.png'),
                  ],
                ),
                Text(
                  'Powered by:',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProjectsTechIcon(
                        imgUrl:
                            'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAt1BMVEX///9B0P1A0P0JWp0fvP0OUZkszf36/v8AU5pa1f3b9v6IosSV4v4Auf153P5x2/4AVpscv/8fwv/m+P/w+/9J0v0PSZK26/6l5/71/f981P4PSpMATpdU1P3N8f+/7v6H3/6U2/5sz/5Xyf00puEkltXj7PMejc2btdFkj7rL8f6d5f6D1v5Jzf1v0P4/xv3N2+gZYqHm7fQmaKQ6c6uazOoAP45BeK2Rr81OgLKlvdZnkby5y94p6fsnAAAE00lEQVR4nO3dCVvaQBAG4BDDWQ8Ih1LBo9Vqta09bbX+/99VQtASyO5OJsSdGeb7ATz7PvMthCxHEGg0Go1Go9FoNBqNhkma+PheOiy70zYu0/bA99pB2W3UcAnDvu+1g6JAI3AoHSh+ggqkkRLAju+1g4IG1qQDtaJEohU1+hrCgeInKB4o/klG9yCRlKjoie+1g1KiouKBWlESUaARKH8PSgeGN77XDkqJCYoHakVJRCuqQOIpATz1vXZQFKhA4lGgAomnBPDQ99pBUaACiUeBCiQeBZqBR77XDgr++Ew6UPwExQPFV1Q8UHxFxQPFV7TWuPW9dlBKVFQ4UPwEtwC463vtoOgEt3iCCiQRBW4x8Mz32kFRoBmoFSURBSqQeBSoQOIpAdz3vXZQFKhA4lGgAolHgWbgge+1g6JAM3CfxS+rlZmgeKD1gccddDb6i3TVAacNbDZajcoqOmiHyGz22as64JQ/0PrAgyEauNEriOomKAA4tj1wHw+kUtG2dYL9Go0JdhphNcAO1rdhYBCcIomNtrWidIBBcIgihpUBK7iKxxAdFT0hNEEc0VHRkwYtYEIsBnRUtMQEK3ujeVRoig7gDUFgMWJo34M35Cqa5hZcVMcET4kC4cRwan1jWgJY+c0e2OVbOLVO8JDsBKFE1kAI0VHREsBXuh955iCGQ+ZAFzEcWit6RLyiaWxER0V5AINg30h0AM9j7Fv61z4TODAQHXvwfC9CEl//0CN/ig7gp70oimLMfQsP53LNvCk6/lHjPAFGUa/4FP0cPK4TYUAE0de5XLuxCnRXdEEsVlRvR8crRYUDZylC9Hg2Pm6H4IpmgUWIXo+Om9MXouMPJ1aBUfSZA3BpimForejbNSCU6P3jG4OU6KhoHhBG9A6cn/05K5oPhBBJfHxjfjiGArqJBCaYZEa0Ar8YgS4iEWAQ9K2/BW8DRtGd5fKGDNAeO9BGJLEH3XnnAEZ7d4bXfiYTdAKNRDlAA1FKRRdZJzIBvgcC14mSKrpI9uaNQGCWKK6iq0QmEywK/H/zhgewWRz4TOQBREzwmchkD96hgLMw+ULGGDfB+RR5THAQY4W9i52vvlcPyhhJnAG7XSZE1EacAWeZ8CAOEFsxBe7siJ1i76K7EDLZi82CxOcJJkQmUyx2WbMEnBFbH3yvHpQixAyQT1HhlzYrwBnxG48pQi9P14DJXuRBhBU1XgcmReVBhEwxvuzmCAUVNb48rvMmOm7XxJejet1A5FJUKzEFmogCpphUNE0rn/jd9+JhMR4/9RYT5E80HALHS0BjUZkQc6eYBZqIP/gS46vjejb5ReVCXCtq72pUhwj5FHXlQ1HxKrCVW9J0ihv91YTqkpniyh4085K0fvKbYmaCdt6cyGWKL8QlYNfJS4nWLzjQyeJDwi9AGC8tKpMpzokLoLucWSKLX7dJv42QAIvxeBGjq1FxHivir3sMb078zYT451g88XqCJnIp6vUWTHGEJj5wIeKLymaKJYi+1w4Mvqj1B99rB6bMXvS9dmAe0UVlM0U8kc8U8Xvxo++1A/OIf+lnQ6zrFI2ZsCHi9+Jf32sHBv+MymeK8olP6KJO2BQV/3TDhfiEftHgQ5y0kLlnQ3yDDpOPwGk0Go1Go9FoNBoNg/wD3zy1H66aaH0AAAAASUVORK5CYII='),
                    ProjectsTechIcon(
                        imgUrl:
                            'data:image/jpeg;base64,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'),
                    ProjectsTechIcon(
                        imgUrl:
                            'data:image/png;base64,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'),
                    ProjectsTechIcon(
                        imgUrl:
                            'https://cdn4.iconfinder.com/data/icons/google-i-o-2016/512/google_firebase-2-512.png'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _horizontalListButton(String projectName) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Container(
        width: 150,
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(
                Color.fromRGBO(195, 20, 50, 1.0)),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            overlayColor: MaterialStateProperty.all<Color>(
                Color.fromRGBO(36, 11, 54, 0.9)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(
                    color: Color.fromRGBO(195, 20, 50, 1.0), width: 2.2),
              ),
            ),
          ),
          child: Text('$projectName'),
        ),
      ),
    );
  }
}
