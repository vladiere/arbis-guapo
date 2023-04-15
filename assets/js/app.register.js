const { createApp } = Vue

createApp({
    data() {
        return {
            guests: []
        }
    },
    methods: {
        saveGuests: function (evt) {
            evt.preventDefault()
            let form = evt.currentTarget
            const data = new FormData(form)
            data.append('fn', 'saveGuests')
            axios.post('models/userGuestModel.php', data)
            form.reset()
            this.getGuests()
        },
        getGuests: function () {
            const vm = this;
            const data = new FormData()
            data.append('fn', 'getGuests')
            axios.post('models/userGuestModel.php', data)
                .then(r => {
                    vm.guests = []
                    r.data.forEach(v => {
                        vm.guests.push({
                            fullname: v.guest_name,
                            email: v.guest_email,
                            website: v.guest_website,
                            comment: v.guest_comments,
                            date_inserted: v.date_inserted
                        })
                    })
                })
        }
    },
    created: function () {
        this.getGuests()
    }
}).mount('#signin')