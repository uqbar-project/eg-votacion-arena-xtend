# Encuestas de votación

![votacion](https://cloud.githubusercontent.com/assets/4549002/17304773/a06ae090-57fd-11e6-851a-9a28506405cf.png)

Aplicación que permite a una empresa encuestadora registrar las intenciones de voto de los distintos candidatos.

![image](https://cloud.githubusercontent.com/assets/4549002/17304850/0a57784c-57fe-11e6-8f11-eae4ec64b442.png)

## Conceptos a ver

* combos anidados entre zonas y candidatos
* en el combo de zonas se muestra una propiedad específica "descripcionLarga" para Zona
* al votar se ve el binding bidireccional: la vista dispara un cambio en el candidato, y el candidato termina disparando una notificación a la tabla
