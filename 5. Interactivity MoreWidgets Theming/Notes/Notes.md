# Notes

1. What is context in Modal Sheet?

   * This context values that's made available by flutter automatically ,since we are in the class that extends state.
   * When you are in class that extends **State**, Flutter automatically add a context property to your class the scenes.
   * That is context value that is made available by flutter can be used as a value inside Model Bottom Sheet first Argument.

1. Understanding context:
   * It is some of metadata collection managed by Flutter that belongs to a specific widget.
   * Every widget has its own context object and that contains metadata information related to the widget and very important information related to the the widget position in overall widget tree
**Note:** So the context which we get in `showModalBottomSheet()` holds information about `Expense` widget and its position n the widget tree.

1. And context for builder parameter inside `showModalBottomSheet` is the context of object or metadata information for the **modal** elements that's created by fFlutter.