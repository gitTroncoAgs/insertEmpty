package com.axa.dtroncoso.insertio;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;

import sdk.insert.io.Insert;

/**
 * Created by dtroncoso on 13/07/2017.
 */

public class MyApplication extends Application {

    private Context mContext;

    @Override
    public void onCreate() {
        this.mContext = this.getApplicationContext();
        super.onCreate();
        this.initInsertIO();
    }

    private void initInsertIO() {
        String insertID = getResources().getString(R.string.insert_id);
        String insertAccount = getResources().getString(R.string.insert_company);

        if (!TextUtils.isEmpty(insertID) && !TextUtils.isEmpty(insertAccount)) {
            try {
                Insert.initSDK(this, insertID, insertAccount, null);
            } catch (Exception e) {
                Log.e("MyApplication","Insert.io error.", e);
            }
        }
    }

}
