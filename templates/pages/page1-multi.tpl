<%@ val model: fonttheater.models.FontTheatreModel %>

#use (config/config.tpl) as config

#{
  val style = """
    p {
      font-size: 16px;
    }

    h1, h2, h3, h4, h5, h6 {
      color: white;
      font-weight: normal;
    }

    h1 {
      font-size:48px;
      letter-spacing:-1.5px;
      line-height:56px;
      padding-bottom:4px;
      margin: 0px;      
    }

    h2 {
      font-size:30px;
      line-height:32px;
      letter-spacing:-0.8px;
      padding-bottom:10px;
    }

    h3 {
      font-size:24px;
      line-height:28px;
      padding-bottom:10px;
    }

    h4 {
      font-size:20px;
      line-height:24px;
      padding-bottom:6px;
    }

    h5 {
      font-size:18px;
      line-height:24px;
      padding:2px;
    }

    h6 {
      font-size:15px;
      margin-top:8px;
      padding-bottom:2px;
    } 

    select {
      -webkit-appearance: button;
      -webkit-border-radius: 2px;
      -webkit-box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.1);
      -webkit-padding-end: 20px;
      -webkit-padding-start: 2px;
      -webkit-user-select: none;
      background-image: url(../images/select-arrow.png), 
        -webkit-linear-gradient(#FAFAFA, #F4F4F4 40%, #E5E5E5);
      background-position: center right;
      background-repeat: no-repeat;
      border: 1px solid #AAA;
      color: #555;
      -moz-use-system-font: false;
      font-size: inherit;
      margin: 0;
      overflow: hidden;
      padding-top: 2px;
      padding-bottom: 2px;
      text-overflow: ellipsis;
      white-space: nowrap;
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
      <div class="gw-intro">
        <h1>Typography</h1>
        <div class="intro">
          <p>Hi and welcome to the typography page, along with different other elements that embed, separate or enhance the texts of this awesome theme.</p>
        </div>
        <div class="line"></div>
      </div>
      <div class="inner-content">
        <h2>
          This is heading 2
        </h2>
        <p>
          Ex aliquip suavitate nec, dico mundi sadipscing ea nec. Et has enim tractatos sententiae. Harum labore ne quo, recusabo consulatu in duo, vim agam voluptaria eu. Cu commodo ornatus molestiae mel, per at autem saepe hendrerit. In elit tantas eam.
        </p>
        <div class="line"></div>
        <h3>
          This is heading 3
        </h3>
        <p>
          Ex aliquip suavitate nec, dico mundi sadipscing ea nec. Et has enim tractatos sententiae. Harum labore ne quo, recusabo consulatu in duo, vim agam voluptaria eu. Cu commodo ornatus molestiae mel, per at autem saepe hendrerit. In elit tantas eam.
        </p>
        <div class="line"></div>
        <h4>
          This is heading 4
        </h4>
        <p>
          Ex aliquip suavitate nec, dico mundi sadipscing ea nec. Et has enim tractatos sententiae. Harum labore ne quo, recusabo consulatu in duo, vim agam voluptaria eu. Cu commodo ornatus molestiae mel, per at autem saepe hendrerit. In elit tantas eam.
        </p>
        <div class="line"></div>
        <h5>
          This is heading 5
        </h5>
        <p>
          Ex aliquip suavitate nec, dico mundi sadipscing ea nec. Et has enim tractatos sententiae. Harum labore ne quo, recusabo consulatu in duo, vim agam voluptaria eu. Cu commodo ornatus molestiae mel, per at autem saepe hendrerit. In elit tantas eam.
        </p>
        <div class="line"></div>
        <h6>
          This is heading 6
        </h6>
        <p>
          Ex aliquip suavitate nec, dico mundi sadipscing ea nec. Et has enim tractatos sententiae. Harum labore ne quo, recusabo consulatu in duo, vim agam voluptaria eu. Cu commodo ornatus molestiae mel, per at autem saepe hendrerit. In elit tantas eam. No mei melius albucius ocurreret.
        </p>
        <div class="line"></div>
      </div>
    </div>
  </div>
#end