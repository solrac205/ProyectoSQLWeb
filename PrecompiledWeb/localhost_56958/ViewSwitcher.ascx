<%@ control language="C#" autoeventwireup="true" inherits="AppPersonalWebSite.ViewSwitcher, App_Web_lstu40hg" %>

<div id="viewSwitcher">
    <%: CurrentView %> view | <a href="<%: SwitchUrl %>" data-ajax="false">Switch to <%: AlternateView %></a>
</div>