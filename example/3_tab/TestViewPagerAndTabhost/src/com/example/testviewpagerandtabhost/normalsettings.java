package com.example.testviewpagerandtabhost;

import java.util.List;

import android.preference.PreferenceActivity;

public class normalsettings extends PreferenceActivity{
	@Override
	public void onBuildHeaders(List<Header> target) {
//		super.onCreate(savedInstanceState);
	//	addPreferencesFromResource(R.xml.normalsetting);
		loadHeadersFromResource(R.xml.normalsetting, target);
	}
}
//public class SettingsActivity extends PreferenceActivity {
//    @Override
//    public void onBuildHeaders(List<Header> target) {
//        loadHeadersFromResource(R.xml.preference_headers, target);
 //   }
//}
