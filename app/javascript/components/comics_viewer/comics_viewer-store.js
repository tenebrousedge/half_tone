import { Store } from "json-api-store"

let store = new Store(Store.AjaxAdapter({ base: "/api/v1" }))

export default store