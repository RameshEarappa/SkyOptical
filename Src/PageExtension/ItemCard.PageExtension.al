pageextension 50102 "item Card Ext" extends "Item Card"
{
    layout
    {
        addafter("Purchasing Code")
        {
            field("SKU Id"; Rec."SKU Id")
            {
                ToolTip = 'Specifies the value of the SKU Id field.';
                ApplicationArea = All;
            }
            field("Website ID"; Rec."Website ID")
            {
                ToolTip = 'Specifies the value of the Website ID field.';
                ApplicationArea = All;
            }
            field("Product Type"; Rec."Product Type")
            {
                ToolTip = 'Specifies the value of the Product Type field.';
                ApplicationArea = All;
            }
            field("Tax Class"; Rec."Tax Class")
            {
                ToolTip = 'Specifies the value of the Tax Class field.';
                ApplicationArea = All;
            }
            field("Parent SKU No."; Rec."Parent SKU No.")
            {
                ToolTip = 'Specifies the value of the Parent SKU field.';
                ApplicationArea = All;
                Editable = SetEditable;
            }
            field("Parent Item Name"; Rec."Parent SKU Name")
            {
                ToolTip = 'Specifies the value of the Parent SKU Name.';
                ApplicationArea = All;
                Editable = SetEditable;
            }
            field("Attribute Set"; Rec."Attribute Set")
            {
                ToolTip = 'Specifies the value of the Attribute Set field.';
                ApplicationArea = All;
            }
            field(Weight; Rec.Weight)
            {
                ToolTip = 'Specifies the value of the Weight field.';
                ApplicationArea = All;
            }
            field(Power; Rec.Power)
            {
                ToolTip = 'Specifies the value of the Power field.';
                ApplicationArea = All;
            }
            field("Add"; Rec."Add")
            {
                ToolTip = 'Specifies the value of the Add field.';
                ApplicationArea = All;
            }
            field(Axis; Rec.Axis)
            {
                ToolTip = 'Specifies the value of the Axis field.';
                ApplicationArea = All;
            }
            field(Cylinder; Rec.Cylinder)
            {
                ToolTip = 'Specifies the value of the Cylinder field.';
                ApplicationArea = All;
            }
            field("Base Curve"; Rec."Base Curve")
            {
                ToolTip = 'Specifies the value of the Base Curve field.';
                ApplicationArea = All;
            }
            field(Manufacturer; Rec.Manufacturer)
            {
                ToolTip = 'Specifies the value of the Manufacturer field.';
                ApplicationArea = All;
            }
            field("Manufacturer Code"; Rec."Manufacturer Code")
            {
                ToolTip = 'Specifies the value of the Manufacturer Code field.';
                ApplicationArea = All;
            }
            field(Usage; Rec.Usage)
            {
                ToolTip = 'Specifies the value of the Usage field.';
                ApplicationArea = All;
            }
            field("HS Code_Intwo"; Rec."HS Code_Intwo")
            {
                ToolTip = 'Specifies the value of the HS Code field.';
                ApplicationArea = All;
            }
            field(Diameter_Intwo; Rec.Diameter_Intwo)
            {
                ToolTip = 'Specifies the value of the Diameter field.';
                ApplicationArea = All;
            }
            field(Color_Intwo; Rec.Color_Intwo)
            {
                ToolTip = 'Specifies the value of the Color field.';
                ApplicationArea = All;
            }
            field(Group_Intwo; Rec.Group_Intwo)
            {
                ToolTip = 'Specifies the value of the Group field.';
                ApplicationArea = All;
            }
            field("Sub Group_Intwo"; Rec."Sub Group_Intwo")
            {
                ToolTip = 'Specifies the value of the Sub Group field.';
                ApplicationArea = All;
            }
            field(Collection_Intwo; Rec.Collection_Intwo)
            {
                ToolTip = 'Specifies the value of the Collection field.';
                ApplicationArea = All;
            }
        }
        addafter(Blocked)
        {
            field("Parent Item"; Rec."Parent Item")
            {
                ApplicationArea = All;
                Editable = SetEditable;
                trigger OnValidate()
                var
                    myInt: Integer;
                begin
                    if Rec."Parent Item" then
                        SetEditable := false
                    else
                        SetEditable := true;
                    CurrPage.Update(true);
                end;
            }
        }
    }
    trigger OnAfterGetRecord()
    begin
        if Rec."Parent Item" then
            SetEditable := false
        else
            SetEditable := true;
    end;

    trigger OnOpenPage()
    begin
        if Rec."Parent Item" then
            SetEditable := false
        else
            SetEditable := true;
    end;

    var
        SetEditable: Boolean;
}
