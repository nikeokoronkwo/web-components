/// TODO: GET Ideas

/// 1. Element Registration
class DartCustomElements {
    define(name, constructor) {
        window.customElements.define(name, class extends HTMLElement {
            constructor() {
                super();
                constructor();
            }
        });
    }
}

window.define = DartCustomElements.define;

window.DartCustomElements = DartCustomElements;