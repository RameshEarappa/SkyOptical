pageextension 50108 "Item List Ext" extends "Item Lookup"
{
    layout
    {
        addbefore(Description)
        {
            field("SKU Id"; Rec."SKU Id")
            {
                ApplicationArea = All;
            }
        }
    }
}