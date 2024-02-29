<template>
   <div>
       <h1>Total List of movies</h1>
   </div> 

   <ul>
       <li v-for="movie in moviesUpdated" :key="movie.id">
           <MovieItem> {{movie.title}} </MovieItem>
            <button @click="removeMovie(movie.id)">X</button>
       </li>
   </ul>

   <MovieForm @addMovie="addMovie"/>
   <div v-if="isLoading">
       <p>LOADING...</p>
   </div>
</template>

<script>
import axios from "axios"
import MovieItem from "./MovieItem.vue"
import MovieForm from "./MovieForm.vue"

export default{
    components:{
        MovieItem,
        MovieForm
    },
    data(){
        return{
            movies: [],
            newMovie: {},
            data:{},
            loading: false
        }
    },
    methods:{
        async removeMovie(id){
            this.loading = true
            try{
                await axios.delete(`http://localhost:4000/films/${id}}`)
                await this.loadMovies()
            } catch (error){
                console.error(error)
            } finally{
                this.loading = false
            }
        },
        async addMovie(movie){
            this.loading = true
            try{
                await axios.post("http://localhost:4000/films", {
                    film: movie
                })

                await this.loadMovies()
            } catch (error){
                console.error(error)
            } finally{
                this.newMovie = {}
                this.loading = false
            }
        },
        async loadMovies(){
            this.loading = true
            try{
                const { data } = await axios.get("http://localhost:4000/films")
                this.movies = data
            } catch (error){
                console.error(error)
            } finally{
                this.loading = false
            }
        },
    },
    computed:{
        moviesUpdated(){
            return this.movies
        },
        isLoading(){
            return this.loading
        },
    },
    mounted(){
        this.loadMovies()
    }
}
</script>

<style>
</style>
