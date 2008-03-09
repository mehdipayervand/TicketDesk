﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChangeDetailsPopup.ascx.cs"
    Inherits="TicketDesk.Controls.ChangeDetailsPopup" %>
<%@ Register Src="EditDetails.ascx" TagName="EditDetails" TagPrefix="uc1" %>
<asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
</asp:ScriptManagerProxy>
<asp:ImageButton ImageUrl="~/Controls/Images/edit.gif" CausesValidation="false" ID="ShowChangeDetailsButton"
    runat="server" Text="..." />
<ajaxToolkit:ModalPopupExtender BehaviorID="changeDetailsBH" ID="ChangeDetailsModalPopupExtender"
    runat="server" TargetControlID="ShowChangeDetailsButton" PopupControlID="ChangeDetailsPanel"
    BackgroundCssClass="ModalBackground" CancelControlID="CancelChangeDetailsButton"
    DropShadow="true" PopupDragHandleControlID="ChangeDetailsPanelHandle" />
<asp:Panel ID="ChangeDetailsPanel" runat="server" CssClass="ModalPopup" Style="width:650px;display: none;">
    <div style="border: solid 1px #A0A0A0;">
        <asp:Panel ID="ChangeDetailsPanelHandle" runat="server" Style="cursor: move; border-bottom: solid 1px #A0A0A0;">
            <div class="ModalPopupHandle">
                Edit the details for this ticket:
            </div>
        </asp:Panel>
        <div style="padding: 5px;">
            <br />
            <uc1:EditDetails ID="EditDetailsControl" runat="server" />
            <br />
            <br />
            Comments (optional):<br />
            <asp:TextBox ID="CommentsTextBox" ValidationGroup="DetailsChangePopup" TextMode="MultiLine"
                Rows="5" runat="server" Width="100%" />
            <br />
            <asp:Button ID="ChangeDetailsButton" ValidationGroup="DetailsChangePopup" OnClick="ChangeDetailsButton_Click"
                runat="server" Text="Change Details" />
            <asp:Button ID="CancelChangeDetailsButton" CausesValidation="false" ValidationGroup="DetailsChangePopup"
                runat="server" Text="Nevermind" />
        </div>
    </div>
</asp:Panel>