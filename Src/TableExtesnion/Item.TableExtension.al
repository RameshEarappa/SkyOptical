tableextension 50101 "Item Ext" extends Item
{
    fields
    {
        field(50000; "SKU Id"; Text[100])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                ItemL: Record Item;
            begin
                Clear(ItemL);
                if Rec."SKU Id" <> '' then begin
                    ItemL.SetRange("SKU Id", Rec."SKU Id");
                    ItemL.SetFilter("No.", '<>%1', Rec."No.");
                    if ItemL.FindFirst() then
                        Error('SKU ID already exists. Item No. %1', ItemL."No.");
                end;
            end;
        }
        field(50001; "Website ID"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = " ","lense.me",solotica,wholesale;
        }
        field(50002; "Product Type"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = " ",Simple,Conf,"Gift Card",Bundle,Virtual;
        }
        field(50003; "Tax Class"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "None","Taxable Goods","Taxable Goods-Plano Cosmetic",Shipping;
        }
        field(50004; "Parent SKU No."; Text[80])
        {
            DataClassification = ToBeClassified;
            ValidateTableRelation = false;
            TableRelation = Item."SKU Id" where("Parent Item" = const(true));
            trigger OnValidate()
            var
                ItemL: Record Item;
            begin
                if Rec."Parent SKU No." <> '' then begin
                    ItemL.SetRange("SKU Id", Rec."Parent SKU No.");
                    ItemL.FindFirst();
                    "Parent SKU Name" := ItemL.Description;
                end else
                    "Parent SKU Name" := '';
            end;
        }
        field(50005; "Attribute Set"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = " ","Contact Lens Colored","Contact Lens Daily","Contact Lends Daily WBc","Contact Lens Default","Contact Lens Default WBc","Contact Lens Multifocal","Contact Lens Toric",Default,"Standard Product";
        }
        field(50006; Weight; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50007; Power; Option)
        {
            DataClassification = ToBeClassified;
            Description = 'Need to create Master for Power';
            OptionMembers = " ","0.00","-0.25","-0.50";
        }
        field(50008; Add; Code[10])
        {
            DataClassification = ToBeClassified;
            Description = 'Need to create Master for Power';
        }
        field(50009; Axis; Code[10])
        {
            DataClassification = ToBeClassified;
            Description = 'Need to create Master for Power';
        }
        field(50010; Cylinder; Code[10])
        {
            DataClassification = ToBeClassified;
            Description = 'Need to create Master for Power';
        }
        field(50011; "Base Curve"; Code[10])
        {
            DataClassification = ToBeClassified;
            Description = 'Need to create Master for Power';
        }
        field(50012; "Country of Origin"; Code[10])
        {
            DataClassification = ToBeClassified;
            Description = 'Need to create Master for Power';
            TableRelation = "Country/Region";
        }
        field(50013; Manufacturer; Code[10])
        {
            DataClassification = ToBeClassified;
            Description = 'Need to create Master for Power';
        }
        field(50014; Usage; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = " ",Daily,Biweekly,Monthly,"3-Monthly","6-Monthly",Yearly;
        }
        field(50015; Location; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = Location;
        }
        field(50016; "Parent Item"; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Parent Item';
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                if Rec."Parent Item" then
                    Rec.Blocked := true
                else
                    Rec.Blocked := false;
            end;
        }
        field(50017; "Parent SKU Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Parent SKU Name';
        }
        field(50018; "HS Code_Intwo"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'HS Code';
        }
        field(50019; "Diameter_Intwo"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Diameter';
        }
        field(50020; "Color_Intwo"; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Color';
        }
        field(50021; "Group_Intwo"; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Group';
        }
        field(50022; "Sub Group_Intwo"; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Sub Group';
        }
        field(50023; "Collection_Intwo"; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Collection';
        }
    }
    // keys
    // {
    //     key(Custom; "SKU Id")
    //     {
    //     }
    // }
    fieldgroups
    {
        addlast(DropDown; "SKU Id")
        {
        }
    }
}