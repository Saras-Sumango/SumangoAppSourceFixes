tableextension 31281 "Vendor Ledger Entry CZB" extends "Vendor Ledger Entry"
{
    fields
    {
#pragma warning disable AA0232
        field(11790; "Amount on Pmt. Order (LCY) CZB"; Decimal)
        {
            CalcFormula = - sum("Iss. Payment Order Line CZB"."Amount (LCY)" where(Type = const(Vendor), "Applies-to C/V/E Entry No." = field("Entry No."), Status = const(" ")));
            Caption = 'Amount on Payment Order (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
#pragma warning restore
    }
}
