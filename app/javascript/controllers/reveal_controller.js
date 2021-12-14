import { Controller } from "@hotwired/stimulus"
import { enter, leave } from 'el-transition';
import { useClickOutside } from 'stimulus-use'

export default class extends Controller {
  static targets = ['item']

  initialize() {
    this.isHidden = true
  }

  connect() {
    useClickOutside(this)
  }

  show() {
    this.isHidden = false
    this.itemTargets.forEach(enter)
  }

  hide() {
    this.isHidden = true
    this.itemTargets.forEach(leave)
  }

  clickOutside(e) {
    if (this.isHidden) return
    e.preventDefault()
    this.hide()
  }
}
