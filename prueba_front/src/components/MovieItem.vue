<template>
    <label>
        <slot>{{movie.title}}</slot>
    </label>
</template>

<script>
export default{
    props:{
        movie:{
            id: Number,
            title: String
        }
    }
}
</script>

<style>
</style>
