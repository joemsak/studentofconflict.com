import { Controller } from "@hotwired/stimulus"
import { enter, leave } from 'el-transition';
import { useClickOutside } from 'stimulus-use'

export default class extends Controller {
  static targets = ['item']

  connect() {
    useClickOutside(this)
  }

  show() {
    this.itemTargets.forEach(enter)
  }

  hide() {
    this.itemTargets.forEach(leave)
  }

  clickOutside(event) {
    event.preventDefault()
    this.hide()
  }
}
