package me.kafeitu.demo.activiti.util;

import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Cell;
 
import java.io.*;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
 
/**
 * @author 
 * @create 2018-12-26 11:09
 * @description 导出数据为excel表格工具类
 **/
public class ExcelUtil <T>{
    /**
     * @param
     * @return
     * @info 写出Excel标题
     */
    public static void writeExcelTitle(String filePath, String[] ss)
            throws IOException {
        OutputStream fos = new FileOutputStream(filePath);
        HSSFWorkbook xls = new HSSFWorkbook();
        HSSFSheet sheet = xls.createSheet();
        HSSFRow row = sheet.createRow(0);// 第一行
        for (int i = 0; i < ss.length; i++) {
            row.createCell(i).setCellValue(ss[i]);
        }
        xls.write(fos);
        fos.close();
    }
 
    /**
     * @param
     * @return
     * @info 写出Excel标题内容
     */
    public static byte[] writeExcel(String[] titles, List<Map<Integer, String>> lists) throws IOException {
        HSSFWorkbook xls = new HSSFWorkbook();
        HSSFSheet sheet = xls.createSheet();
        HSSFRow row = sheet.createRow(0);// 第一行
 
        for (int i = 0; i < titles.length; i++) {
            row.createCell(i).setCellValue(titles[i]);
        }
        // 内容
        int rowNum = 1;
        for (Map<Integer, String> map : lists) {
            HSSFRow rowTmp = sheet.createRow(rowNum);
            int cols = map.size();
            for (int i = 0; i < cols; i++) {
                rowTmp.createCell(i).setCellValue(map.get(i));
            }
            rowNum++;
        }
        ByteArrayOutputStream fos = new ByteArrayOutputStream();
        xls.write(fos);
        byte[] buf = fos.toByteArray();// 获取内存缓冲区中的数据
        fos.close();
        return buf;
    }
 
    /**
     * @param filePath
     * @return
     * @info 读取Excel内容，List行，MAP行数据
     */
    public static List<Map<String, String>> reExcelKeyMap(String filePath) throws IOException {
        List<Map<String, String>> contents = new LinkedList<Map<String, String>>();
        InputStream is = new FileInputStream(filePath);
        POIFSFileSystem fs = new POIFSFileSystem(is);
        HSSFWorkbook wb = new HSSFWorkbook(fs);
        HSSFSheet sheet = wb.getSheetAt(0);
        // 得到总行数
        int rowNum = sheet.getLastRowNum();
 
        HSSFRow row = sheet.getRow(0);// 第一行
        // 总列数
        int colNum = row.getPhysicalNumberOfCells();
 
        // 正文内容应该从第二行开始,第一行为表头的标题
        String[] keys = readExcelTitle(filePath);
        for (int i = 1; i <= rowNum; i++) {
            row = sheet.getRow(i);
            int j = 0;
            Map<String, String> content = new HashMap<String, String>();
            while (j < colNum) {
                String cellValue = getCellFormatValue(row.getCell(j)).trim();
 
                content.put(keys[j], cellValue);
                j++;
            }
            contents.add(content);
        }
        is.close();
        return contents;
    }
 
    public static List<Map<String, String>> readExcelKeyMap(InputStream is) throws IOException {
        List<Map<String, String>> contents = new LinkedList<Map<String, String>>();
        POIFSFileSystem fs = new POIFSFileSystem(is);
        HSSFWorkbook wb = new HSSFWorkbook(fs);
        HSSFSheet sheet = wb.getSheetAt(0);
        // 得到总行数
        int rowNum = sheet.getLastRowNum();
 
        HSSFRow row = sheet.getRow(0);// 第一行
        // 总列数
        int colNum = row.getPhysicalNumberOfCells();
 
        // 正文内容应该从第二行开始,第一行为表头的标题
        // 标题总列数
        String[] keys = new String[colNum];
        for (int i = 0; i < colNum; i++) {
            keys[i] = getCellFormatValue(row.getCell(i));
        }
        for (int i = 1; i <= rowNum; i++) {
            row = sheet.getRow(i);
            int j = 0;
            Map<String, String> content = new HashMap<String, String>();
            while (j < colNum) {
                String cellValue = getCellFormatValue(row.getCell(j)).trim();
 
                content.put(keys[j], cellValue);
                j++;
            }
            contents.add(content);
        }
        is.close();
        return contents;
    }
 
    /**
     * @param
     * @return
     * @info 读取Excel标题
     */
    public static String[] readExcelTitle(String filePath) throws IOException {
        InputStream is = new FileInputStream(filePath);
        POIFSFileSystem fs = new POIFSFileSystem(is);
        HSSFWorkbook wb = new HSSFWorkbook(fs);
        HSSFSheet sheet = wb.getSheetAt(0);
        HSSFRow row = sheet.getRow(0);// 第一行
        // 标题总列数
        int colNum = row.getPhysicalNumberOfCells();
        String[] title = new String[colNum];
        for (int i = 0; i < colNum; i++) {
            title[i] = getCellFormatValue(row.getCell(i));
        }
        is.close();
        return title;
    }
 
    /**
     * @param filePath
     * @return
     * @info 读取Excel内容，List行，MAP行数据
     */
    public static List<Map<Integer, String>> readExcelContent(String filePath) throws IOException {
        List<Map<Integer, String>> contents = new LinkedList<Map<Integer, String>>();
        InputStream is = new FileInputStream(filePath);
        POIFSFileSystem fs = new POIFSFileSystem(is);
        HSSFWorkbook wb = new HSSFWorkbook(fs);
        HSSFSheet sheet = wb.getSheetAt(0);
        // 得到总行数
        int rowNum = sheet.getLastRowNum();
 
        HSSFRow row = sheet.getRow(0);// 第一行
        // 总列数
        int colNum = row.getPhysicalNumberOfCells();
 
        // 正文内容应该从第二行开始,第一行为表头的标题
 
        for (int i = 1; i <= rowNum; i++) {
            row = sheet.getRow(i);
            int j = 0;
            Map<Integer, String> content = new HashMap<Integer, String>();
            while (j < colNum) {
                String cellValue = getCellFormatValue(row.getCell(j)).trim();
                content.put(j, cellValue);
                j++;
            }
            contents.add(content);
        }
        is.close();
        return contents;
    }
 
    /**
     * @param cell
     * @return
     * @info 读取Excel值
     */
    static String getCellFormatValue(HSSFCell cell) {
        String cellvalue = "";
        if (cell != null) {
            switch (cell.getCellType()) {
                case HSSFCell.CELL_TYPE_NUMERIC: {
                    BigDecimal b = new BigDecimal(cell.getNumericCellValue());
                    cellvalue = b.toPlainString();
                    break;
                }
                case HSSFCell.CELL_TYPE_FORMULA: {
                    cell.setCellType(Cell.CELL_TYPE_STRING);
                    cellvalue = cell.getStringCellValue();
                    //System.out.println(cellvalue);
                    break;
                }
                case HSSFCell.CELL_TYPE_STRING:
                    cellvalue = cell.getRichStringCellValue().getString();
                    //System.out.println(cellvalue);
                    break;
                default:
                    cellvalue = "";
            }
        } else {
            cellvalue = "";
        }
        return cellvalue;
 
    }
 
    /**
     * @param cell
     * @return
     * @info 读取Excel值
     */
    static String getStringCellValue(HSSFCell cell) {
        String strCell = "";
        switch (cell.getCellType()) {
            case HSSFCell.CELL_TYPE_STRING:
                strCell = cell.getStringCellValue();
                break;
            case HSSFCell.CELL_TYPE_NUMERIC:
                strCell = String.valueOf(cell.getNumericCellValue());
                break;
            case HSSFCell.CELL_TYPE_BOOLEAN:
                strCell = String.valueOf(cell.getBooleanCellValue());
                break;
            case HSSFCell.CELL_TYPE_BLANK:
                strCell = "";
                break;
            default:
                strCell = "";
                break;
        }
        if (strCell.equals("") || strCell == null) {
            return "";
        }
        return strCell;
    }
 
    /**
     * @param
     * @return 主要用的是这个方法
     * @info 写出Excel标题内容
     */
    public static HSSFWorkbook writeExcel(String sheetName, String[] titles, List<Map<Integer, String>> lists) {
 
        // 第一步，创建一个HSSFWorkbook，对应一个Excel文件
        HSSFWorkbook xls = new HSSFWorkbook();
 
        // 第二步，在workbook中添加一个sheet,对应Excel文件中的sheet
        HSSFSheet sheet = xls.createSheet(sheetName);
 
        // 第三步，在sheet中添加表头第0行,注意老版本poi对Excel的行数列数有限制
        HSSFRow row = sheet.createRow(0);// 第一行
 
        // 第四步，创建单元格，并设置值表头 设置表头居中
        HSSFCellStyle style = xls.createCellStyle();
 
        // 创建一个居中格式
        style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
 
        //创建标题
        for (int i = 0; i < titles.length; i++) {
            HSSFCell cell = row.createCell(i);
            cell.setCellValue(titles[i]);
            cell.setCellStyle(style);
        }
 
        // 创建内容
        int rowNum = 1;
        for (Map<Integer, String> map : lists) {
            HSSFRow rowTmp = sheet.createRow(rowNum);
            int cols = map.size();
            for (int i = 0; i < cols; i++) {
                rowTmp.createCell(i).setCellValue(map.get(i));
            }
            rowNum++;
        }
 
        return xls;
    }
 
    /**
     * 导出Excel
     *
     * @param sheetName sheet名称
     * @param title     标题
     * @param values    内容
     * @param wb        HSSFWorkbook对象
     * @return
     */
    public static HSSFWorkbook getHSSFWorkBook(String sheetName, String[] title, String[][] values, HSSFWorkbook wb) {
 
        // 第一步，创建一个HSSFWorkbook，对应一个Excel文件
        if (wb == null) {
            wb = new HSSFWorkbook();
        }
 
        // 第二步，在workbook中添加一个sheet,对应Excel文件中的sheet
        HSSFSheet sheet = wb.createSheet(sheetName);
 
        // 第三步，在sheet中添加表头第0行,注意老版本poi对Excel的行数列数有限制
        HSSFRow row = sheet.createRow(0);
 
        // 第四步，创建单元格，并设置值表头 设置表头居中
        HSSFCellStyle style = wb.createCellStyle();
        style.setAlignment(HSSFCellStyle.ALIGN_CENTER); // 创建一个居中格式
 
        //声明列对象
        HSSFCell cell = null;
 
        //创建标题
        for (int i = 0; i < title.length; i++) {
            cell = row.createCell(i);
            cell.setCellValue(title[i]);
            cell.setCellStyle(style);
        }
 
        //创建内容
        for (int i = 0; i < values.length; i++) {
            row = sheet.createRow(i + 1);
            for (int j = 0; j < values[i].length; j++) {
                //将内容按顺序赋给对应的列对象
                row.createCell(j).setCellValue(values[i][j]);
            }
        }
        return wb;
    }
}
