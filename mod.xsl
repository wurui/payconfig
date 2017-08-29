<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.payconfig">
        <xsl:param name="dsid">e0ee59439b39fcc3</xsl:param>
        <xsl:param name="forward"></xsl:param>
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-payconfig" ox-mod="payconfig" data-forward="{$forward}" data-dsid="{$dsid}"
             data-uid="{login/uid}">

            <xsl:variable name="payconf" select="data/payconfig"/>
            <form class="J_mainform">
                <xsl:if test="$payconf/_id">
                    <input type="hidden" name="_id" value="{$payconf/_id}"/>
                </xsl:if>
                <ul>
                    <li>
                        <select value="{$payconf/type}" name="type">
                            <option value="alipay">支付宝</option>
                            <option value="weixin">微信支付</option>
                        </select>
                    </li>
                    <li>
                        <input type="text" placeholder="name" name="name" value="{$payconf/name}"/>
                    </li>
                    <li>
                        <input type="text" placeholder="biz_id" name="biz_id" value="{$payconf/biz_id}"/>
                    </li>
                    <li>
                        <input type="text" placeholder="secret" name="secret" value="{$payconf/secret}"/>
                    </li>
                    <li>
                        <input type="text" placeholder="return_url" name="return_url" value="{$payconf/return_url}"/>
                    </li>
                    <li>
                        <input type="text" placeholder="notify_url" name="notify_url" value="{$payconf/notify_url}"/>
                    </li>
                    <li>
                        <input type="text" placeholder="site_url" name="site_url" value="{$payconf/site_url}"/>
                    </li>
                    <li>
                        <input type="text" placeholder="site_name" name="site_name" value="{$payconf/site_name}"/>
                    </li>
                    <li>
                        <input type="text" placeholder="appid" name="appid" value="{$payconf/appid}"/>
                    </li>
                    <li class="bottom">
                        <button class="J_submit">提交</button>
                    </li>
                </ul>
            </form>
        </div>
    </xsl:template>
</xsl:stylesheet>
