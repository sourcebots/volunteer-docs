---
title: Inventory
---

The inventory is how we track what is owned by SourceBots, and its location.

Our current inventory takes the form of a [Google Spreadsheet][inventory-spreadsheet].

## Updating the location of items

To update the location of an item, simply change the location column, if the item is inside a container, put the serial of the container. You should also update the 'Date last updated' field.

## Finding items

- To find an item by its location, you can [filter][sort-and-filter] the 'location' column for the specific code you want.
- To find an item by its item code, you can [filter][sort-and-filter] the 'item code' column for the specific code you want.
- To find an item by its type, first [sort][sort-and-filter] by the 'Summary' column, then use `CTRL+F` to find the type.

## Adding items

Tools for generating new part codes are provided in the 'Inventory' tab on the top of the page.

Once new part codes are generated, you should update the summary and location of the item.

It's recommended that you print a label for things to better track them. If you have access to a more advanced label printer (like a [brother QL570][brother-ql570]), there are some barcode generation scripts available in the [barcode-gen GitHub repository][barcode-gen] which use the `brother-ql-create` script to automatically print labels.

## Removing items

To remove an item, mark them as deleted by setting the font as strike-through, and marking it as removed in the notes column. You should never delete rows in the inventory, otherwise there is a chance of a duplicate barcode being used for two different things.

[inventory-spreadsheet]: https://docs.google.com/spreadsheets/d/1C0oOGQNJ-7rAppNlEvt1zI5zew3wNtpBUpZjMcK-Ork/edit?usp=sharing
[barcode-gen]: https://github.com/sourcebots/barcode-gen
[brother-ql570]: https://www.brother.co.uk/labelling/ql-printers/ql570
[sort-and-filter]: https://support.google.com/docs/answer/3540681
