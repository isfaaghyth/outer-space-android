package apps.daeng.pelatihanandroid;

import com.google.gson.annotations.SerializedName;

import java.util.List;

/**
 * Created by isfaaghyth on 19/08/16.
 */
public class ItemObject {
    @SerializedName("planet")
    public List<Children> planet;

    public class Children {
        @SerializedName("planet_icon")
        public String planet_icon;
        @SerializedName("planet_name")
        public String planet_name;
        @SerializedName("date_created")
        public String date_created;
        @SerializedName("header_img")
        public String header_img;
        @SerializedName("wiki_site")
        public String wiki_site;
        @SerializedName("surface_area")
        public String surface_area;
        @SerializedName("equator")
        public String equator;
        @SerializedName("mass")
        public String mass;
        @SerializedName("volume")
        public String volume;
        @SerializedName("description")
        public String description;
    }
}
