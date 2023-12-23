# Notes

## Understanding Widget Size Constraints

- Widgets get sized based on their **size preferences** and the **size constraints** applied by the parent widget. To make this sentence little bit less abstract.
  - Scaffold
    - Constraints
      - **height**: max. device height
      - **width**: max. device width
  ⬇️
  - Column Widget:
    - Preferences:
      - **height**: as much as possible
      - **width**: as much as needed by children.
  ⬇️
  - Result (Column size)
    - **height**: max. device height
    - **width**: max. device width

**Note:** Since the column, want to take as much height as possible, so the parent should restricts the height because, otherwise it will go outside the screen boundaries.
That is why we have no problem if a Column is used directly inside of a Scaffold widget. Because Scaffold widget turns out to constrain the height and the width to maximum device height or width.
But every widget has different constraints for its child widget.

**Constraint Example:**

- **Column constraint**:
  - **width**: 0 → depends on children.
  - **height**: 0 → INFINITY.
  ⬇️
- **Row constraint**:
  - **width**: 0 → INFINITY.
  - **height**: 0 → depends on children.
  ⬇️
- **Column constraint**:
  - **width**: 0 → depends on children.
  - **height**: 0 → INFINITY.

**Problem**: No height constraint from parent.
