package com.example.ustudy

import android.content.Context
import io.flutter.plugin.platform.PlatformView
import io.flutter.plugin.platform.PlatformViewFactory
import io.flutter.plugin.common.StandardMessageCodec
import android.view.View
import com.google.android.gms.maps.MapView


class GoogleMapsViewFactory : PlatformViewFactory(StandardMessageCodec.INSTANCE) {
    override fun create(context: Context, id: Int, args: Any?): PlatformView {
        return GoogleMapsView(context, id, args)
    }
}

class GoogleMapsView(context: Context, id: Int, args: Any?) : PlatformView {
    private val mapView: MapView = MapView(context)

    init {
        mapView.onCreate(null)
        mapView.onResume()
    }

    override fun getView(): View {
        return mapView
    }

    override fun dispose() {}
}

