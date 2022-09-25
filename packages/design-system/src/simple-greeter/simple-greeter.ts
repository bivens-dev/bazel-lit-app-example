import { html, LitElement } from "lit";
import { customElement, property } from "lit/decorators.js";

import { defaultStyle } from "./lib/styles.css.js";

@customElement("simple-greeting")
export class SimpleGreeting extends LitElement {
    static override styles = [defaultStyle];

    @property()
    name = "Somebody";

    override render() {
        return html`<p>Hello, ${this.name}!</p>`;
    }
}
