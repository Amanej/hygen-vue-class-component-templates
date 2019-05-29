---
to: src/components/<%= folder %>/<%= name %>/<%= name %>.test.js
---
import { expect } from 'chai'
import { createLocalVue, shallowMount, mount } from '@vue/test-utils'
import <%= name %> from './<%= name %>.vue'

describe('<%= name %>.vue', () => {
    const props = {
        MyProp: 'This is a test'
    }
    const wrapper = mount(<%= name %>, {
        propsData: props,
    })
    it('Has a div as parent', () => {
        expect(wrapper.contains('div')).to.equal(true)
    })
    it('Sets text prop MyProp correct', () => {
        expect(wrapper.text()).to.equal(props.MyProp)
    })
})