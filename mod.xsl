<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.payconfig">
        <xsl:param name="dsid">e0ee59439b39fcc3</xsl:param>
        <xsl:param name="forward"></xsl:param>
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-payconfig" ox-mod="payconfig" data-forward="{$forward}" data-dsid="{$dsid}"
             data-uid="{login/uid}">
            <form class="J_mainform">
                <ul>
                    <xsl:for-each select="data/payconfig/*">
                        <xsl:variable name="fieldname" select="name(.)"/>
                        <li>
                            <xsl:choose>
                                <xsl:when test="$fieldname = '_id'">
                                    <input type="hidden" name="{$fieldname}" value="{.}"/>
                                </xsl:when>
                                <xsl:when test="$fieldname = 'type'">
                                    <select value="{.}">
                                        <option value="alipay">支付宝</option>
                                        <option value="weixin">微信支付</option>
                                    </select>
                                </xsl:when>
                                <xsl:otherwise>
                                    <input type="text" placeholder="{name(.)}" name="{name(.)}" value="{.}"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </li>
                    </xsl:for-each>
                    <li class="bottom">
                        <button class="J_submit">提交</button>
                    </li>
                </ul>
            </form>
        </div>
    </xsl:template>
</xsl:stylesheet>
