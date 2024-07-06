
const App = Vue.createApp({
    data() {
        return {
            data: {},
            locales: {},
            page: "home",
            boost: "normal",
            showSettings: false
        };
    },
    methods: {
        close() {
            fetch(`https://${GetParentResourceName()}/exit`);
            this.showSettings = false
        },
        fpsChange(type) {
            fetch(`https://${GetParentResourceName()}/fpsChange`, {
                method: 'POST',
                body: JSON.stringify({
                    type: type,
                })
            });
        },
        changes(event) {
            let type = event.target.value
            let checked = event.target.checked
            fetch(`https://${GetParentResourceName()}/settings`, {
                method: 'POST',
                body: JSON.stringify({
                    state: checked,
                    type: type,
                })
            });
        },
        copyID() {
            fetch(`https://${GetParentResourceName()}/copyID`, {
                method: 'POST',
                body: JSON.stringify({
                    identifier: this.data.license
                })
            });
        },
        handleKeyDown(event) {
            if (event.key === "Escape" || event.key === "Home") {
                this.close();
            }
        },
        switchpage(newPage) {
            document.getElementById(this.page).style.display = "none"
            document.getElementById(newPage).style.display = "block"

            if (newPage === "settings") {
                this.showSettings = true
            } else {
                this.showSettings = false
            }
        },
    },

    mounted() {
        var _this = this;

        window.addEventListener('message', function (event) {
            if (event.data.type === "show") {
                document.body.style.display = event.data.enable ? "block" : "none";
                
            } else if (event.data.type === "loadData") {
                _this.data = event.data.data;
                _this.locales = event.data.locales
            }
        });


        window.addEventListener('keydown', this.handleKeyDown);

    }
}).mount('#app');