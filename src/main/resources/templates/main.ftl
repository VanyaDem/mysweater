<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
        <dif>
            <@l.logout/>
            <span><a href="/user">User List</a> </span>
            <form method="post">
                <input type="text" name="text" placeholder="Enter your message"/>
                <input type="tag" name="tag" placeholder="Tag">
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <button type="submit">Add</button>
            </form>
        </dif>
         <div>Messages list</div>
            <form method="get" action="/main">
                <input type="text" name="filter" value="${filter?if_exists}">
                <button type="submit">Find by tag</button>
            </form>
         <#list messages as message>
             <div>
                 <b>${message.id}</b>
                 <span>${message.text}</span>
                 <i>${message.tag}</i>
                 <strong>${message.authorName}</strong>
             </div>
             <#else>
             No message
         </#list>
</@c.page>