import { application } from "@/controllers/application"

import { registerControllers } from 'stimulus-vite-helpers'

const controllers = import.meta.globEager('./**/*_controller.js')
registerControllers(application, controllers)
