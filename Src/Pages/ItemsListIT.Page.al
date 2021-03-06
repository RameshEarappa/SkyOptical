page 50102 "Items List_IT"
{
    DeleteAllowed = false;
    Editable = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = Item;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    Caption = 'product_id';
                    ToolTip = 'Specifies the number of the item.';
                }
                field("SKU Id"; Rec."SKU Id")
                {
                    Caption = 'sku';
                }
                field("Website ID"; Rec."Website ID")
                {
                    Caption = 'website_id';
                }
                field("Product Type"; Rec."Product Type")
                {
                    Caption = 'type_id';
                }
                field(Location; Rec.Location)
                {
                    Caption = 'store_id';
                }
                field(Description; Rec.Description)
                {
                    Caption = 'product_name_value';
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    Caption = 'price';
                }
                field("Tax Class"; Rec."Tax Class")
                {
                    Caption = 'tax_class_id';
                }
                field("Parent SKU No."; Rec."Parent SKU No.")
                {
                    Caption = 'parent_sku';
                }
                field("Parent SKU Name"; Rec."Parent SKU Name")
                {
                    Caption = 'parent_sku_name';
                }
                field("Attribute Set"; Rec."Attribute Set")
                {
                    Caption = 'Attribute_Set';
                }
                field(Weight; Rec.Weight)
                {
                    Caption = 'weight';
                }
                field(Power; Rec.Power)
                {
                    Caption = 'power';
                }
                field(Add; Rec.Add)
                {
                    Caption = 'add';
                }
                field(Axis; Rec.Axis)
                {
                    Caption = 'axis';
                }
                field(Cylinder; Rec.Cylinder)
                {
                    Caption = 'cylinder';
                }
                field("Base Curve"; Rec."Base Curve")
                {
                    Caption = 'base_curve';
                }
                field("Country of Origin"; Rec."Country of Origin")
                {
                    Caption = 'country_of_manufacture';
                }
                field(GTIN; Rec.GTIN)
                {
                    Caption = 'gtin';
                }
                field(Manufacturer; Rec.Manufacturer)
                {
                    Caption = 'manufacturer';
                }
                field(Usage; Rec.Usage)
                {
                    Caption = 'usage';
                }
                field("HS Code_Intwo"; Rec."HS Code_Intwo")
                {
                    ToolTip = 'Specifies the value of the HS Code field.';
                }
                field(Diameter_Intwo; Rec.Diameter_Intwo)
                {
                    ToolTip = 'Specifies the value of the Diameter field.';
                }
                field(Color_Intwo; Rec.Color_Intwo)
                {
                    ToolTip = 'Specifies the value of the Color field.';
                }
                field(Group_Intwo; Rec.Group_Intwo)
                {
                    ToolTip = 'Specifies the value of the Group field.';
                }
                field("Sub Group_Intwo"; Rec."Sub Group_Intwo")
                {
                    ToolTip = 'Specifies the value of the Sub Group field.';
                }
                field(Collection_Intwo; Rec.Collection_Intwo)
                {
                    ToolTip = 'Specifies the value of the Collection field.';
                }
                field("Last Date Modified"; Rec."Last Date Modified")
                {
                }
                field("Last Time Modified"; Rec."Last Time Modified")
                {
                }
            }
        }
    }

    actions
    {
    }
}

