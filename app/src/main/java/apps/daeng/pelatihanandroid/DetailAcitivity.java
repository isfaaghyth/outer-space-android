package apps.daeng.pelatihanandroid;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;

/**
 * Created by isfaaghyth on 19/08/16.
 */
public class DetailAcitivity extends AppCompatActivity {

    private ImageView img_header, img_icon;
    private TextView txt_judul, txt_waktu, txt_mass, txt_equator, txt_surface, txt_volume, txt_deskripsi;
    private Button btn_wiki;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_detail);
        // image
        img_header = (ImageView) findViewById(R.id.img_header);
        img_icon = (ImageView) findViewById(R.id.img_icon);
        // text
        txt_judul = (TextView) findViewById(R.id.txt_judul);
        txt_waktu = (TextView) findViewById(R.id.txt_waktu);
        txt_mass = (TextView) findViewById(R.id.txt_mass);
        txt_equator = (TextView) findViewById(R.id.txt_equator);
        txt_surface = (TextView) findViewById(R.id.txt_surface);
        txt_volume = (TextView) findViewById(R.id.txt_volume);
        txt_deskripsi = (TextView) findViewById(R.id.txt_deskripsi);
        // button
        btn_wiki = (Button) findViewById(R.id.btn_wiki);

        btn_wiki.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent bukasitus = new Intent(Intent.ACTION_VIEW,
                        Uri.parse(getIntent().getStringExtra("situs wiki")));
                startActivity(bukasitus);
            }
        });

        txt_judul.setText(getIntent().getStringExtra("judul"));
        txt_waktu.setText(getIntent().getStringExtra("waktu"));

        txt_mass.setText("Massa : " + getIntent().getStringExtra("massa"));
        txt_equator.setText("Khatulistiwa : " + getIntent().getStringExtra("khatulistiwa"));
        txt_surface.setText("Luas Permukaan : " + getIntent().getStringExtra("luas permukaan"));
        txt_volume.setText("Volume : " + getIntent().getStringExtra("volume"));

        txt_deskripsi.setText(getIntent().getStringExtra("deskripsi"));

        // ini untuk icon
        Glide.with(getApplicationContext())
                .load("http://dev.daeng.id/android/icon/" +
                        getIntent().getStringExtra("ikon planet"))
                .placeholder(R.mipmap.ic_launcher)
                .into(img_icon);

        // ini untuk sampul
        Glide.with(getApplicationContext())
                .load("http://dev.daeng.id/android/header/" +
                        getIntent().getStringExtra("foto sampul"))
                .placeholder(R.mipmap.ic_launcher)
                .into(img_header);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_share, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case R.id.menu_share:
                //untuk kirim konten di sosial media
                Intent i = new Intent(Intent.ACTION_SEND);
                i.setType("text/plan");
                i.putExtra(Intent.EXTRA_SUBJECT, "Planet");
                i.putExtra(Intent.EXTRA_TEXT, getIntent().getStringExtra("judul") + "\n" +
                        getIntent().getStringExtra("situs wiki"));
                i.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);

                Intent share = Intent.createChooser(i, "Bagikan Planet");
                share.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                startActivity(share);
                break;
        }
        return super.onOptionsItemSelected(item);
    }
}
