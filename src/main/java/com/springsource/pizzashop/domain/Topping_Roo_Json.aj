// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.pizzashop.domain;

import com.springsource.pizzashop.domain.Topping;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Topping_Roo_Json {
    
    public String Topping.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public String Topping.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static Topping Topping.fromJsonToTopping(String json) {
        return new JSONDeserializer<Topping>().use(null, Topping.class).deserialize(json);
    }
    
    public static String Topping.toJsonArray(Collection<Topping> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static String Topping.toJsonArray(Collection<Topping> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<Topping> Topping.fromJsonArrayToToppings(String json) {
        return new JSONDeserializer<List<Topping>>().use(null, ArrayList.class).use("values", Topping.class).deserialize(json);
    }
    
}
