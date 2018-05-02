<%@page import="java.io.*,org.w3c.dom.*,javax.xml.parsers.*,javax.xml.transform.*, javax.xml.transform.dom.*,javax.xml.transform.stream.*"%>  

  <%!
        public void createXmlTree(Document doc,String name,String address,String contact,String email) throws Exception {
        System.out.println(name);
        Element root = doc.createElement("Festival");
        doc.appendChild(root);

        Element child1 = doc.createElement("Name");
        root.appendChild(child1);

        Text text1 = doc.createTextNode(name);
        child1.appendChild(text1);

        Element child2 = doc.createElement("TID");
        root.appendChild(child2);


        TransformerFactory factory = TransformerFactory.newInstance();
        Transformer transformer = factory.newTransformer();

        transformer.setOutputProperty(OutputKeys.INDENT, "yes");

        StringWriter sw = new StringWriter();
        StreamResult result = new StreamResult(sw);
        DOMSource source = new DOMSource(doc);
        transformer.transform(source, result);
        String xmlString = sw.toString();

        File file = new File("C:/Users/orange/workspace/MulkiTempleJewellry/WebContent/emp.xml");
        BufferedWriter bw = new BufferedWriter(new FileWriter(file));
        bw.write(xmlString);
        bw.flush();
        bw.close();

    }%>
<%
      String name=request.getParameter("name");
      String address=request.getParameter("address");
  try{
      System.out.println(name);
      DocumentBuilderFactory builderFactory = DocumentBuilderFactory.newInstance();
      DocumentBuilder docBuilder = builderFactory.newDocumentBuilder();
      Document doc = docBuilder.newDocument();
      createXmlTree(doc,name,address,contact,email);

      out.println("<b>Xml File Created Successfully</b>");
  }
  catch(Exception e)
  {
    System.out.println(e);
  }     
  %>