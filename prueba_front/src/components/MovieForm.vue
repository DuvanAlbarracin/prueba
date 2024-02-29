<template>
    <div>
        <form @submit.prevent="addMovie">
            <p>Title:
                <input v-model="movie.title" placeholder="Title">
            </p>
            <p>Description:
                <input v-model="movie.description" placeholder="Description">
            </p>
            <p>Year:
                <input v-model="movie.year" placeholder="Year">
            </p>
            <p>Rental Duration:
                <input v-model="movie.rental_duration" placeholder="Rental Duration">
            </p>
            <p>Rating:
                <input v-model="movie.rating" placeholder="Rating">
            </p>
            <p>Rental Price:
                <input v-model="movie.rental_price" placeholder="Rental Price">
            </p>
            <button type="submit">Add Movie</button>
        </form>
    </div>
</template>

<script>
export default{
    data(){
        return{
            movie: {}
        }
    },
    methods:{
        addMovie(){
            this.$emit("addMovie", this.movie)
            this.movie = {}
        }
    }
}
</script>
