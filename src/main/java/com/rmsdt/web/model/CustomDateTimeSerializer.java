package com.rmsdt.web.model;

import java.io.IOException;
import java.text.SimpleDateFormat;

import org.joda.time.DateTime;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;

public class CustomDateTimeSerializer extends JsonSerializer<DateTime> {
    private static SimpleDateFormat formatter = 
      new SimpleDateFormat("MM-dd-yyyy hh:mm:ss");
 
    @Override
    public void serialize (DateTime value, JsonGenerator gen, SerializerProvider arg2)
      throws IOException, JsonProcessingException {
        gen.writeString(formatter.format(value.toDate()));
    }
}