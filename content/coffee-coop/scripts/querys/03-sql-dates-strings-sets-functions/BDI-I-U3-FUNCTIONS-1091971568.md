## Ejercicio 1. CURRENT_DATE, NOW y AGE — Antigüedad de los asociados

### Diferencia entre `NOW()` y `CURRENT_DATE` y comportamiento de los literales a y b

* **Diferencia entre `NOW()` y `CURRENT_DATE`:**
  * `NOW()` devuelve un valor de tipo `TIMESTAMP WITH TIME ZONE`, que incluye la fecha actual completa junto con la hora exacta del servidor (horas, minutos, segundos, fracciones de segundo) y la zona horaria configurada (por ejemplo, `-05` para Colombia).
  * `CURRENT_DATE` devuelve únicamente un valor de tipo `DATE` con el año, mes y día actuales sin información de hora ni zona horaria.

* **¿Por qué el resultado del literal a cambia cada día y el del literal b no?**
  * En el **literal a** se calcula la antigüedad usando la función dinámica `CURRENT_DATE` (`CURRENT_DATE - T1.membership_date`). Como `CURRENT_DATE` toma la fecha del sistema en el momento en que se ejecuta la consulta, cada día que pasa la fecha actual avanza y el número de días de antigüedad (`membership_days`) aumenta en 1 para todos los asociados.
  * En el **literal b** se calcula la antigüedad contra una fecha de corte fija y estática (`DATE '2026-09-30'`). Al ser ambos valores constantes (`2026-09-30` y `T1.membership_date`), el intervalo devuelto por `AGE` y los años extraídos con `DATE_PART` siempre darán exactamente el mismo resultado sin importar en qué fecha se ejecute la consulta.