/// <reference path="../typings/tsd.d.ts"/>

module DEMO {

    export class Layout {

        display($el: JQuery) {
            $('body').append($el);
        }

    }

    export class View {

        $el: JQuery = $('div');

        constructor(context: string) {
            this.render(context);
        }

        private render(context: string) {
            this.$el.append(context.toString());
        }

    }

    export class App {
        constructor() {
            var layout: Layout = new Layout();
            var simpleView: View = new View("hoge");
            layout.display(simpleView.$el);
        }
    }

    new App();

}
