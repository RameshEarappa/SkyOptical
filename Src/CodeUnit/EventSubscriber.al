codeunit 50103 "Event Subscriber CU"
{
    [EventSubscriber(ObjectType::Table, Database::Item, 'OnAfterValidateEvent', 'Blocked', false, false)]
    local procedure OnAfterValidateEventBlocked(var Rec: Record Item; CurrFieldNo: Integer; var xRec: Record Item)
    begin
        if Rec."Parent Item" then
            Error('You cannot disabled Blocked, Because Parent Item is Enabled');
    end;
}