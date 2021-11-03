"use strict";
var EmpleadoEdit;
(function (EmpleadoEdit) {
    var formulario = new Vue({
        data: {
            Formulario: "#FormEdit"
        },
        mounted: function () {
            CreateValidator(this.Formulario);
        }
    });
    formulario.$mount(" #AppEdit");
})(EmpleadoEdit || (EmpleadoEdit = {}));
//# sourceMappingURL=Edit.js.map