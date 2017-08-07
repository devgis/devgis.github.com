<%@ WebHandler Language="C#" Class="wx" %>

using System;
using System.Web;
using System.Xml;
using System.IO;
using System.Text;
using System.Web.Security;
using LYF.WeiXinLib;
using LYF.WeiXinLib.Messages;

public class wx : IHttpHandler {

    const string Token = "liyafei";//你的token
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        if (context.Request.HttpMethod.ToUpper() == "POST")
        {
            string weixin = "";
            weixin = PostInput();//获取xml数据
            try
            {
                WriteLog(DateTime.Now.ToString() +"-"+ weixin);
                
            }
            catch (Exception ex)
            {
                WriteLog(DateTime.Now.ToString() +"-"+  ex.Message);
            }

            if (!string.IsNullOrEmpty(weixin))
            {
                ResponseMsg(weixin);//调用消息适配器
            }
        }
        else
        {
            Valid();//Token验证 
        }
        
    }

    #region 获取post请求数据
    /// <summary>
    /// 获取post请求数据
    /// </summary>
    /// <returns></returns>
    private string PostInput()
    {
        Stream s = System.Web.HttpContext.Current.Request.InputStream;
        byte[] b = new byte[s.Length];
        s.Read(b, 0, (int)s.Length);
        return Encoding.UTF8.GetString(b);
    }
    #endregion

    #region 消息类型适配器
    private void ResponseMsg(string weixin)// 服务器响应微信请求
    {

        WXMSG xmlMsg = MessageHelper.GetExmlMsg(weixin);
        string messageType = xmlMsg.MsgType;//获取收到的消息类型。文本(text)，图片(image)，语音等。


        try
        {
            switch (messageType)
            {
                //当消息为文本时
                case "text":
                    WXTextMSG txtMSG= (xmlMsg as WXTextMSG);
                    string txtmessage = MessageHelper.GetTextContent(txtMSG.FromUserName, txtMSG.ToUserName, DateTime.Now, "已经收到您的消息了");
                    MessageHelper.WriteContent(txtmessage);
                    break;
                case "event":
                    WXEventMSG eventMSG = (xmlMsg as WXEventMSG);
                    string welcomemessage = MessageHelper.GetTextContent(eventMSG.FromUserName, eventMSG.ToUserName, DateTime.Now, "欢迎您关注周原镇微信号，您可以通过公众号直接给我们发送消息！");
                    MessageHelper.WriteContent(welcomemessage);
                    break;
                case "image":
                    WXImageMSG imgMSG = (xmlMsg as WXImageMSG);
                    string imgmessage = MessageHelper.GetImageContent(imgMSG.FromUserName, imgMSG.ToUserName, DateTime.Now, imgMSG.MediaId);
                    MessageHelper.WriteContent(imgmessage);
                    break;
                case "voice":
                    break;
                case "vedio":
                    break;
                case "location":
                    WXLocationMSG locationMSG = (xmlMsg as WXLocationMSG);
                    string tm = MessageHelper.GetTextContent(locationMSG.FromUserName, locationMSG.ToUserName, DateTime.Now, string.Format("x:{0 y:{1} scale:{2} label:{3}}", locationMSG.Location_X, locationMSG.Location_Y, locationMSG.Scale, locationMSG.Label));
                    MessageHelper.WriteContent(tm);
                    break;
                case "link":
                    break;
                default:
                    break;
            }

            WriteLog(DateTime.Now.ToString() + "-" + messageType);
            HttpContext.Current.Response.End();
        }
        catch (Exception)
        {

        }
    }
    #endregion

    private string getText(WXTextMSG xmlMsg)
    {
        string con = xmlMsg.Content.Trim();

        System.Text.StringBuilder retsb = new StringBuilder(200);
        retsb.Append("这里放你的业务逻辑");
        retsb.Append("接收到的消息：" + xmlMsg.Content);
        retsb.Append("用户的OPEANID：" + xmlMsg.FromUserName);

        return retsb.ToString();
    }

    #region 验证微信签名 保持默认即可
    /// <summary>
    /// 验证微信签名
    /// </summary>
    /// * 将token、timestamp、nonce三个参数进行字典序排序
    /// * 将三个参数字符串拼接成一个字符串进行sha1加密
    /// * 开发者获得加密后的字符串可与signature对比，标识该请求来源于微信。
    /// <returns></returns>
    private bool CheckSignature()
    {
        string signature = HttpContext.Current.Request.QueryString["signature"].ToString();
        string timestamp = HttpContext.Current.Request.QueryString["timestamp"].ToString();
        string nonce = HttpContext.Current.Request.QueryString["nonce"].ToString();
        string[] ArrTmp = { Token, timestamp, nonce };
        Array.Sort(ArrTmp);     //字典排序
        string tmpStr = string.Join("", ArrTmp);
        tmpStr = FormsAuthentication.HashPasswordForStoringInConfigFile(tmpStr, "SHA1");
        tmpStr = tmpStr.ToLower();
        if (tmpStr == signature)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    private void Valid()
    {
        string echoStr = HttpContext.Current.Request.QueryString["echoStr"].ToString();
        if (CheckSignature())
        {
            if (!string.IsNullOrEmpty(echoStr))
            {
                HttpContext.Current.Response.Write(echoStr);
                HttpContext.Current.Response.End();
            }
        }
    }
    #endregion

    #region 写日志(用于跟踪) ＋　WriteLog(string strMemo, string path = "*****")
    /// <summary>
    /// 写日志(用于跟踪)
    /// 如果log的路径修改,更改path的默认值
    /// </summary>
    private void WriteLog(string strMemo, string path = "wx.txt")
    {
        string filename = HttpContext.Current.Server.MapPath(path);
        StreamWriter sr = null;
        try
        {
            if (!File.Exists(filename))
            {
                sr = File.CreateText(filename);
            }
            else
            {
                sr = File.AppendText(filename);
            }
            sr.WriteLine(strMemo);
        }
        catch
        {

        }
        finally
        {
            if (sr != null)
                sr.Close();
        }
    }
    //#endregion 
    #endregion
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}
