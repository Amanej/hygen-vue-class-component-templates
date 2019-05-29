---
to: src/components/<%= folder %>/<%= name %>/<%= name %>.ts
---
import { Component, Prop, Vue } from 'vue-property-decorator'

/**
 * This is a description of <%= name %>.
 * Describe the functionality, use case and
 * any other relevant information.
 */

@Component
export default class <%= name %> extends Vue {
    // Props
    @Prop({ default: 'Basic text', required: true }) public MyProp!: string
    // Data 
    public show: boolean = false
    // Methods
    public toggleShow() {
        this.show = !this.show
    }    
    // Computed
    get iconFound() {
        return this.myprop.toLowerCase()
    }    
    // Lifecycle Hooks
    created() {

    }
    mounted() {

    }
    destroyed() {

    }
}
