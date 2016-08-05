package cn.gov.cnis.graphical.utils;

import org.junit.Test;

import java.io.File;

/**
 * 文件工具类
 * @author :  Amayadream
 * @date :  2016.08.05 00:12
 */
public class FileUtil {

    /**
     * 构建上传路径
     * @return
     */
    public static String buildName(String uploadPath, String fileName){
        String name = "";
        if (fileName.contains(".")) {
            name = getPrefix(fileName) + "[" + DateUtil.getStamp() + "]" + "." + getSuffix(fileName);
        }else{
            name = fileName + "[" + DateUtil.getStamp() + "]";
        }
        return getNotrepeatFileName(uploadPath, name, "(1)");
    }

    public static String getSuffix(String fileName){
        if (fileName.contains(".")) {
            return fileName.substring(fileName.lastIndexOf(".") + 1);
        }
        return null;
    }

    public static String getPrefix(String fileName){
        if (fileName.contains(".")) {
            return fileName.substring(0, fileName.lastIndexOf("."));
        }
        return fileName;
    }

    /**
     * 循环判断文件是否存在,如果存在则给文件后面加上特定标记
     * @param path      文件路径
     * @param fileName  文件名
     * @param mark      标记
     * @return  返回可用的文件名
     */
    public static String getNotrepeatFileName(String path, String fileName, String mark){
        if(fileName.contains(".")){    //如果文件有后缀名
            while(isFileExists(path,fileName)){
                String name = fileName.substring(0, fileName.lastIndexOf("."));
                String prefix=fileName.substring(fileName.lastIndexOf(".")+1);
                fileName = name + mark + "." + prefix;
                getNotrepeatFileName(path, fileName, mark);
            }
        }else{      //如果没有后缀名
            while(isFileExists(path, fileName)){
                fileName = fileName + mark;
                getNotrepeatFileName(path, fileName, mark);
            }
        }
        return fileName;
    }

    /**
     * 判断文件是否存在
     * @param path  文件路径,有没有结尾反斜杠
     * @param fileName  文件名
     * @return
     */
    public static boolean isFileExists(String path, String fileName){
        File file = new File(checkPathEnd(path) + fileName);
        if(file.exists()){
            return true;
        }else{
            return false;
        }
    }

    /**
     * 判断路径后是否有反斜杠,如果有则直接返回路径,如果没有则返回添加反斜杠后的路径
     * @param path  路径
     * @return
     */
    public static String checkPathEnd(String path){
        if(path.endsWith("\\")){
            return path;
        }else{
            return path + "\\";
        }
    }

}
