<%@ val model: fonttheater.models.FontTheatreModel %>

#use (config/config.tpl) as config

#{
  val style = """
    p {
      font-size: 12px;
    }

    h1, h2, h3, h4, h5, h6 {
      color: white;
      font-weight: normal;
    }

    h3 {
      font-size:24px;
      line-height:28px;
      padding-bottom:10px;
    }

  """
}#

#do(layout(
  "/layout/layout-font-posters.tpl", 
  Map(
    "model" -> model, 
    "style" -> style,
    "posterFontSize" -> "[adjust-to-canvas-width]", 
    "posterBackgroundColor" -> "#008DD0", 
    "posterTextColor" -> "#00476E", 
    "pageBackgroundColor" -> "#008DD0", 
    "pageTextColor" -> "#00476E", 
    "canvasWidth" -> "640", 
    "canvasHeight" -> "600", 
    "lineSpaceFactor" -> "1.3")))
  <div class="content-wrapper">
    <div class="content">
      <div class="inner-content">
        <h3>Typography</h3>
        <p>
          Ex aliquip suavitate nec, dico mundi sadipscing ea nec. Et has enim tractatos sententiae. Harum labore ne quo, recusabo consulatu in duo, vim agam voluptaria eu. Cu commodo ornatus molestiae mel, per at autem saepe hendrerit. In elit tantas eam.
        </p>
        <p>
          Ex aliquip suavitate nec, dico mundi sadipscing ea nec. Et has enim tractatos sententiae. Harum labore ne quo, recusabo consulatu in duo, vim agam voluptaria eu. Cu commodo ornatus molestiae mel, per at autem saepe hendrerit. In elit tantas eam.
        </p>
        <p>
          Ex aliquip suavitate nec, dico mundi sadipscing ea nec. Et has enim tractatos sententiae. Harum labore ne quo, recusabo consulatu in duo, vim agam voluptaria eu. Cu commodo ornatus molestiae mel, per at autem saepe hendrerit. In elit tantas eam.
        </p>
        <div class="line"></div>
        <h3>
          This is a heading
        </h3>
        <p>
          Ex aliquip suavitate nec, dico mundi sadipscing ea nec. Et has enim tractatos sententiae. Harum labore ne quo, recusabo consulatu in duo, vim agam voluptaria eu. Cu commodo ornatus molestiae mel, per at autem saepe hendrerit. In elit tantas eam.
        </p>
        <p>
          Ex aliquip suavitate nec, dico mundi sadipscing ea nec. Et has enim tractatos sententiae. Harum labore ne quo, recusabo consulatu in duo, vim agam voluptaria eu. Cu commodo ornatus molestiae mel, per at autem saepe hendrerit. In elit tantas eam.
        </p>
        <p>
          Ex aliquip suavitate nec, dico mundi sadipscing ea nec. Et has enim tractatos sententiae. Harum labore ne quo, recusabo consulatu in duo, vim agam voluptaria eu. Cu commodo ornatus molestiae mel, per at autem saepe hendrerit. In elit tantas eam.
        </p>
        <div class="line"></div>
      </div>
    </div>
  </div>
#end