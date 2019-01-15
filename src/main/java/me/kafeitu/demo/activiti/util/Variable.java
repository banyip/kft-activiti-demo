package me.kafeitu.demo.activiti.util;

import jodd.util.StringUtil;
import org.apache.commons.beanutils.ConvertUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.HashMap;
import java.util.Map;

public class Variable {

    private String keys;
    private String values;
    private String types;
    private Logger logger = LoggerFactory.getLogger(getClass());
    
    public String getKeys() {
        return keys;
    }

    public void setKeys(String keys) {
        this.keys = keys;
    }

    public String getValues() {
        return values;
    }

    public void setValues(String values) {
        this.values = values;
    }

    public String getTypes() {
        return types;
    }

    public void setTypes(String types) {
        this.types = types;
    }

    public Map<String, Object> getVariableMap() {
        Map<String, Object> vars = new HashMap<String, Object>();

        ConvertUtils.register(new DateConverter(), java.util.Date.class);

        if (StringUtil.isBlank(keys)) {
            return vars;
        }

        String[] arrayKey = keys.split(",",-1);
        String[] arrayValue = values.split(",",-1);
        String[] arrayType = types.split(",",-1);
        logger.debug("学生信息保存中Variable keys:："+arrayKey.length+keys);
        logger.debug("学生信息保存中Variable values:："+arrayValue.length+values);
        logger.debug("学生信息保存中Variable types:："+arrayType.length+types);
        for (int i = 0; i < arrayKey.length; i++) {
            if ("".equals(arrayKey[i]) || "".equals(arrayValue[i]) || "".equals(arrayType[i])) {
                continue;
            }
            String key = arrayKey[i];
            String value = arrayValue[i];
            String type = arrayType[i];

            Class<?> targetType = Enum.valueOf(PropertyType.class, type).getValue();
            Object objectValue = ConvertUtils.convert(value, targetType);
            vars.put(key, objectValue);
        }
        return vars;
    }

}
