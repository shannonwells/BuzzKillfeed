(() => {
  // js/clickbait_generator.js
  CBG = {
    getNewHeadline: function(event) {
      CBG.getHeadline($(this).attr("id"));
    },
    getBestOf: function(id) {
      $.get("/home/generate", { id }, CBG.onGetSuccess, "json");
    },
    getHeadline: function(headlineType) {
      $.get("/home/generate.json", { headline_type: headlineType }, CBG.onGetSuccess);
      CBG.resetLocationHash();
    },
    resetLocationHash: function() {
      location.hash = "";
    },
    setActiveButton: function(headline_type) {
      var $activeButton = $("#" + headline_type);
      $("#clickbait-buttons .button--clickbait").removeClass("active");
      $activeButton.addClass("active");
    },
    reTwit: function(headline) {
      var twit_html = [
        '<a href="https://twitter.com/share" class="twitter-share-button" data-url="http://clickbaitgenerator.herokuapp.com" data-text="',
        headline,
        '" data-via="ShannonEWells" data-size="large" data-count="none" data-hashtags="clickbaitgenerator"></a>'
      ].join("");
      $("#init-twit").html(twit_html);
      twttr.widgets.load();
    },
    onGetSuccess: function(data, status, xhr, leaveHashAlone) {
      $(".ladom").html("");
      $("#headline").html(data.clickbait.headline);
      const ogUrl = document.createElement("meta");
      ogUrl.setAttribute("property", "og:url");
      ogUrl.setAttribute("content", document.URL);
      document.head.appendChild(ogUrl);
      const ogTitle = document.createElement("meta");
      ogUrl.setAttribute("property", "og:title");
      ogUrl.setAttribute("content", data.clickbait.headline);
      const ogImage = document.createElement("meta");
      ogUrl.setAttribute("property", "og:image");
      ogUrl.setAttribute("content", "/images/animagicalunicorn.gif");
      CBG.reTwit(data.clickbait.headline);
      CBG.setActiveButton(data.clickbait.type);
    },
    onShareSuccess: function(html) {
      var $modalDiv = $(".ladom");
      $(html).appendTo($modalDiv);
      $modalDiv.modal();
    },
    sharePermalink: function(event) {
      var $modalDiv = $(".ladom");
      var imageUrl = $("#headline-img").attr("href");
      event.preventDefault();
      if ($modalDiv.text() == "") {
        var headLine = $("#headline").text();
        var headlineType = "listicle";
        $.post("/clickbaits", {
          clickbait: {
            headline: headLine,
            headline_type: headlineType
          }
        }, CBG.onShareSuccess);
      } else {
        $modalDiv.modal();
      }
    }
  };
  window.onload = function() {
    $("a.clickbaits #clickbait-buttons .button--clickbait").click(function(event) {
      window.location = "/";
    });
    $(".home #clickbait-buttons .button--clickbait").click(CBG.getNewHeadline);
    $("#manual-ajax").click(CBG.sharePermalink);
    $(".sparkley").sparkleh({
      color: "rainbow",
      count: 100,
      overlap: 20
    });
    $(window).resize(() => {
      $(".sparkley").removeEventListener("mouseover focus").removeEventListener("mouseout blur").sparkleh({
        color: "rainbow",
        count: 100,
        overlap: 20
      });
    });
    if (location.hash) {
      CBG.getBestOf(location.hash.substr(1));
    } else if ($(".home #headline").length) {
      CBG.getHeadline("listicle");
    }
    document.getElementById("js-demo").textContent = "I am from clickbait_generator.js";
  };
})();
//# sourceMappingURL=data:application/json;base64,ewogICJ2ZXJzaW9uIjogMywKICAic291cmNlcyI6IFsiLi4vLi4vLi4vanMvY2xpY2tiYWl0X2dlbmVyYXRvci5qcyJdLAogICJzb3VyY2VzQ29udGVudCI6IFsiQ0JHID0ge1xuICAgIGdldE5ld0hlYWRsaW5lOiBmdW5jdGlvbiAoZXZlbnQpIHtcbiAgICAgICAgQ0JHLmdldEhlYWRsaW5lKCQodGhpcykuYXR0cignaWQnKSk7XG4gICAgfSxcblxuICAgIGdldEJlc3RPZjogZnVuY3Rpb24gKGlkKSB7XG4gICAgICAgICQuZ2V0KCcvaG9tZS9nZW5lcmF0ZScsIHtpZDogaWR9LCBDQkcub25HZXRTdWNjZXNzLCBcImpzb25cIik7XG4gICAgfSxcblxuICAgIGdldEhlYWRsaW5lOiBmdW5jdGlvbiAoaGVhZGxpbmVUeXBlKSB7XG4gICAgICAgICQuZ2V0KCcvaG9tZS9nZW5lcmF0ZS5qc29uJywge2hlYWRsaW5lX3R5cGU6IGhlYWRsaW5lVHlwZX0sIENCRy5vbkdldFN1Y2Nlc3MpO1xuICAgICAgICBDQkcucmVzZXRMb2NhdGlvbkhhc2goKTtcbiAgICB9LFxuXG4gICAgcmVzZXRMb2NhdGlvbkhhc2g6IGZ1bmN0aW9uICgpIHtcbiAgICAgICAgbG9jYXRpb24uaGFzaCA9IFwiXCI7XG4gICAgfSxcblxuICAgIHNldEFjdGl2ZUJ1dHRvbjogZnVuY3Rpb24oaGVhZGxpbmVfdHlwZSkge1xuICAgICAgICB2YXIgJGFjdGl2ZUJ1dHRvbiA9ICQoXCIjXCIgKyBoZWFkbGluZV90eXBlKTtcbiAgICAgICAgJChcIiNjbGlja2JhaXQtYnV0dG9ucyAuYnV0dG9uLS1jbGlja2JhaXRcIikucmVtb3ZlQ2xhc3MoJ2FjdGl2ZScpO1xuICAgICAgICAkYWN0aXZlQnV0dG9uLmFkZENsYXNzKCdhY3RpdmUnKTtcbiAgICB9LFxuXG4gICAgcmVUd2l0OiBmdW5jdGlvbihoZWFkbGluZSkge1xuICAgICAgICB2YXIgdHdpdF9odG1sID0gW1xuICAgICAgICAgICAgJzxhIGhyZWY9XCJodHRwczovL3R3aXR0ZXIuY29tL3NoYXJlXCIgY2xhc3M9XCJ0d2l0dGVyLXNoYXJlLWJ1dHRvblwiIGRhdGEtdXJsPVwiaHR0cDovL2NsaWNrYmFpdGdlbmVyYXRvci5oZXJva3VhcHAuY29tXCIgZGF0YS10ZXh0PVwiJyxcbiAgICAgICAgICAgIGhlYWRsaW5lLFxuICAgICAgICAgICAgJ1wiIGRhdGEtdmlhPVwiU2hhbm5vbkVXZWxsc1wiIGRhdGEtc2l6ZT1cImxhcmdlXCIgZGF0YS1jb3VudD1cIm5vbmVcIiBkYXRhLWhhc2h0YWdzPVwiY2xpY2tiYWl0Z2VuZXJhdG9yXCI+PC9hPiddLmpvaW4oJycpO1xuXG4gICAgICAgICQoXCIjaW5pdC10d2l0XCIpLmh0bWwodHdpdF9odG1sKTtcbiAgICAgICAgdHd0dHIud2lkZ2V0cy5sb2FkKCk7XG4gICAgfSxcblxuICAgIC8vIG1heWJlIHRoaXMgd2lsbCBkbyBzb21ldGhpbmcgZWxzZSBsYXRlciwgbGlrZSByZWdpc3RlciBhbmFseXRpY3NcbiAgICBvbkdldFN1Y2Nlc3M6IGZ1bmN0aW9uIChkYXRhLCBzdGF0dXMsIHhociwgbGVhdmVIYXNoQWxvbmUpIHtcbiAgICAgICAgLy8gY2xlYXIgdGhlIHNoYXJlIG1vZGFsIGxpbmtcbiAgICAgICAgJChcIi5sYWRvbVwiKS5odG1sKFwiXCIpO1xuICAgICAgICAkKFwiI2hlYWRsaW5lXCIpLmh0bWwoZGF0YS5jbGlja2JhaXQuaGVhZGxpbmUpO1xuXG4gICAgICAgIGNvbnN0IG9nVXJsID0gZG9jdW1lbnQuY3JlYXRlRWxlbWVudChcIm1ldGFcIik7XG5cbiAgICAgICAgb2dVcmwuc2V0QXR0cmlidXRlKFwicHJvcGVydHlcIiwgXCJvZzp1cmxcIik7XG4gICAgICAgIG9nVXJsLnNldEF0dHJpYnV0ZShcImNvbnRlbnRcIiwgZG9jdW1lbnQuVVJMKTtcbiAgICAgICAgZG9jdW1lbnQuaGVhZC5hcHBlbmRDaGlsZChvZ1VybCk7XG5cbiAgICAgICAgY29uc3Qgb2dUaXRsZSA9ICBkb2N1bWVudC5jcmVhdGVFbGVtZW50KFwibWV0YVwiKTtcbiAgICAgICAgb2dVcmwuc2V0QXR0cmlidXRlKFwicHJvcGVydHlcIiwgXCJvZzp0aXRsZVwiKTtcbiAgICAgICAgb2dVcmwuc2V0QXR0cmlidXRlKFwiY29udGVudFwiLCBkYXRhLmNsaWNrYmFpdC5oZWFkbGluZSk7XG5cbiAgICAgICAgY29uc3Qgb2dJbWFnZSA9ICBkb2N1bWVudC5jcmVhdGVFbGVtZW50KFwibWV0YVwiKTtcbiAgICAgICAgb2dVcmwuc2V0QXR0cmlidXRlKFwicHJvcGVydHlcIiwgXCJvZzppbWFnZVwiKTtcbiAgICAgICAgb2dVcmwuc2V0QXR0cmlidXRlKFwiY29udGVudFwiLCBcIi9pbWFnZXMvYW5pbWFnaWNhbHVuaWNvcm4uZ2lmXCIpO1xuXG4gICAgICAgIENCRy5yZVR3aXQoZGF0YS5jbGlja2JhaXQuaGVhZGxpbmUpO1xuICAgICAgICBDQkcuc2V0QWN0aXZlQnV0dG9uKGRhdGEuY2xpY2tiYWl0LnR5cGUpO1xuICAgIH0sXG5cbiAgICBvblNoYXJlU3VjY2VzczogZnVuY3Rpb24gKGh0bWwpIHtcbiAgICAgICAgdmFyICRtb2RhbERpdiA9ICQoXCIubGFkb21cIik7XG4gICAgICAgICQoaHRtbCkuYXBwZW5kVG8oJG1vZGFsRGl2KTtcbiAgICAgICAgJG1vZGFsRGl2Lm1vZGFsKCk7XG4gICAgfSxcblxuICAgIHNoYXJlUGVybWFsaW5rOiBmdW5jdGlvbiAoZXZlbnQpIHtcbiAgICAgICAgdmFyICRtb2RhbERpdiA9ICQoXCIubGFkb21cIik7XG4gICAgICAgIHZhciBpbWFnZVVybCA9ICQoXCIjaGVhZGxpbmUtaW1nXCIpLmF0dHIoXCJocmVmXCIpO1xuICAgICAgICBldmVudC5wcmV2ZW50RGVmYXVsdCgpO1xuICAgICAgICBpZiAoJG1vZGFsRGl2LnRleHQoKSA9PSBcIlwiKSB7XG4gICAgICAgICAgICB2YXIgaGVhZExpbmUgPSAkKFwiI2hlYWRsaW5lXCIpLnRleHQoKTtcbiAgICAgICAgICAgIHZhciBoZWFkbGluZVR5cGUgPSBcImxpc3RpY2xlXCI7XG4gICAgICAgICAgICAkLnBvc3QoXCIvY2xpY2tiYWl0c1wiLFxuICAgICAgICAgICAgICAgIHsgY2xpY2tiYWl0OiB7XG4gICAgICAgICAgICAgICAgICAgIGhlYWRsaW5lOiBoZWFkTGluZSxcbiAgICAgICAgICAgICAgICAgICAgaGVhZGxpbmVfdHlwZTogaGVhZGxpbmVUeXBlLFxuICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgIH0sXG4gICAgICAgICAgICBDQkcub25TaGFyZVN1Y2Nlc3MpO1xuICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgJG1vZGFsRGl2Lm1vZGFsKCk7XG4gICAgICAgIH1cbiAgICB9XG59XG5cblxud2luZG93Lm9ubG9hZCA9IGZ1bmN0aW9uICgpIHtcbiAgICAkKFwiYS5jbGlja2JhaXRzICNjbGlja2JhaXQtYnV0dG9ucyAuYnV0dG9uLS1jbGlja2JhaXRcIikuY2xpY2soZnVuY3Rpb24gKGV2ZW50KSB7XG4gICAgICAgIHdpbmRvdy5sb2NhdGlvbiA9ICcvJztcbiAgICB9KTtcbiAgICAkKCcuaG9tZSAjY2xpY2tiYWl0LWJ1dHRvbnMgLmJ1dHRvbi0tY2xpY2tiYWl0JykuY2xpY2soQ0JHLmdldE5ld0hlYWRsaW5lKTtcbiAgICAkKCcjbWFudWFsLWFqYXgnKS5jbGljayhDQkcuc2hhcmVQZXJtYWxpbmspO1xuXG4gICAgLy8gcmFpbmJvdyBhcyBhIGNvbG9yIGdlbmVyYXRlcyByYW5kb20gcmFpbmJvdyBjb2xyb3NcbiAgICAvLyBjb3VudCBkZXRlcm1pbmVzIG51bWJlciBvZiBzcGFya2xlc1xuICAgIC8vIG92ZXJsYXAgYWxsb3dzIHNwYXJrbGVzIHRvIG1pZ3JhdGUuLi4gd2F0Y2ggb3V0IGZvciBvdGhlciBkb20gZWxlbWVudHMgdGhvdWdoLlxuICAgICQoXCIuc3BhcmtsZXlcIikuc3BhcmtsZWgoe1xuICAgICAgICBjb2xvcjogXCJyYWluYm93XCIsXG4gICAgICAgIGNvdW50OiAxMDAsXG4gICAgICAgIG92ZXJsYXA6IDIwXG4gICAgfSk7XG5cbiAgICAkKHdpbmRvdykucmVzaXplKCgpID0+IHtcbiAgICAgICAgJChcIi5zcGFya2xleVwiKVxuICAgICAgICAgICAgLnJlbW92ZUV2ZW50TGlzdGVuZXIoJ21vdXNlb3ZlciBmb2N1cycpXG4gICAgICAgICAgICAucmVtb3ZlRXZlbnRMaXN0ZW5lcignbW91c2VvdXQgYmx1cicpXG4gICAgICAgICAgICAuc3BhcmtsZWgoe1xuICAgICAgICAgICAgY29sb3I6IFwicmFpbmJvd1wiLFxuICAgICAgICAgICAgY291bnQ6IDEwMCxcbiAgICAgICAgICAgIG92ZXJsYXA6IDIwXG4gICAgICAgIH0pO1xuICAgIH0pXG5cbiAgICAvLyBmZXRjaCBiZXN0X29mIGlmIHRoZSBhbmNob3IgdGFnIGlzIHByZXNlbnRcbiAgICBpZiAobG9jYXRpb24uaGFzaCkge1xuICAgICAgICBDQkcuZ2V0QmVzdE9mKGxvY2F0aW9uLmhhc2guc3Vic3RyKDEpKTtcbiAgICB9IGVsc2UgaWYgKCQoJy5ob21lICNoZWFkbGluZScpLmxlbmd0aCkge1xuICAgICAgICBDQkcuZ2V0SGVhZGxpbmUoJ2xpc3RpY2xlJyk7XG4gICAgfVxuICAgIGRvY3VtZW50LmdldEVsZW1lbnRCeUlkKFwianMtZGVtb1wiKS50ZXh0Q29udGVudCA9IFwiSSBhbSBmcm9tIGNsaWNrYmFpdF9nZW5lcmF0b3IuanNcIlxufTtcbiJdLAogICJtYXBwaW5ncyI6ICI7O0FBQUEsUUFBTTtBQUFBLElBQ0YsZ0JBQWdCLFNBQVUsT0FBTztBQUM3QixVQUFJLFlBQVksRUFBRSxNQUFNLEtBQUs7QUFBQTtBQUFBLElBR2pDLFdBQVcsU0FBVSxJQUFJO0FBQ3JCLFFBQUUsSUFBSSxrQkFBa0IsRUFBQyxNQUFTLElBQUksY0FBYztBQUFBO0FBQUEsSUFHeEQsYUFBYSxTQUFVLGNBQWM7QUFDakMsUUFBRSxJQUFJLHVCQUF1QixFQUFDLGVBQWUsZ0JBQWUsSUFBSTtBQUNoRSxVQUFJO0FBQUE7QUFBQSxJQUdSLG1CQUFtQixXQUFZO0FBQzNCLGVBQVMsT0FBTztBQUFBO0FBQUEsSUFHcEIsaUJBQWlCLFNBQVMsZUFBZTtBQUNyQyxVQUFJLGdCQUFnQixFQUFFLE1BQU07QUFDNUIsUUFBRSx5Q0FBeUMsWUFBWTtBQUN2RCxvQkFBYyxTQUFTO0FBQUE7QUFBQSxJQUczQixRQUFRLFNBQVMsVUFBVTtBQUN2QixVQUFJLFlBQVk7QUFBQSxRQUNaO0FBQUEsUUFDQTtBQUFBLFFBQ0E7QUFBQSxRQUEwRyxLQUFLO0FBRW5ILFFBQUUsY0FBYyxLQUFLO0FBQ3JCLFlBQU0sUUFBUTtBQUFBO0FBQUEsSUFJbEIsY0FBYyxTQUFVLE1BQU0sUUFBUSxLQUFLLGdCQUFnQjtBQUV2RCxRQUFFLFVBQVUsS0FBSztBQUNqQixRQUFFLGFBQWEsS0FBSyxLQUFLLFVBQVU7QUFFbkMsWUFBTSxRQUFRLFNBQVMsY0FBYztBQUVyQyxZQUFNLGFBQWEsWUFBWTtBQUMvQixZQUFNLGFBQWEsV0FBVyxTQUFTO0FBQ3ZDLGVBQVMsS0FBSyxZQUFZO0FBRTFCLFlBQU0sVUFBVyxTQUFTLGNBQWM7QUFDeEMsWUFBTSxhQUFhLFlBQVk7QUFDL0IsWUFBTSxhQUFhLFdBQVcsS0FBSyxVQUFVO0FBRTdDLFlBQU0sVUFBVyxTQUFTLGNBQWM7QUFDeEMsWUFBTSxhQUFhLFlBQVk7QUFDL0IsWUFBTSxhQUFhLFdBQVc7QUFFOUIsVUFBSSxPQUFPLEtBQUssVUFBVTtBQUMxQixVQUFJLGdCQUFnQixLQUFLLFVBQVU7QUFBQTtBQUFBLElBR3ZDLGdCQUFnQixTQUFVLE1BQU07QUFDNUIsVUFBSSxZQUFZLEVBQUU7QUFDbEIsUUFBRSxNQUFNLFNBQVM7QUFDakIsZ0JBQVU7QUFBQTtBQUFBLElBR2QsZ0JBQWdCLFNBQVUsT0FBTztBQUM3QixVQUFJLFlBQVksRUFBRTtBQUNsQixVQUFJLFdBQVcsRUFBRSxpQkFBaUIsS0FBSztBQUN2QyxZQUFNO0FBQ04sVUFBSSxVQUFVLFVBQVUsSUFBSTtBQUN4QixZQUFJLFdBQVcsRUFBRSxhQUFhO0FBQzlCLFlBQUksZUFBZTtBQUNuQixVQUFFLEtBQUssZUFDSDtBQUFBLFVBQUUsV0FBVztBQUFBLFlBQ1QsVUFBVTtBQUFBLFlBQ1YsZUFBZTtBQUFBO0FBQUEsV0FHdkIsSUFBSTtBQUFBLGFBQ0Q7QUFDSCxrQkFBVTtBQUFBO0FBQUE7QUFBQTtBQU10QixTQUFPLFNBQVMsV0FBWTtBQUN4QixNQUFFLHNEQUFzRCxNQUFNLFNBQVUsT0FBTztBQUMzRSxhQUFPLFdBQVc7QUFBQTtBQUV0QixNQUFFLCtDQUErQyxNQUFNLElBQUk7QUFDM0QsTUFBRSxnQkFBZ0IsTUFBTSxJQUFJO0FBSzVCLE1BQUUsYUFBYSxTQUFTO0FBQUEsTUFDcEIsT0FBTztBQUFBLE1BQ1AsT0FBTztBQUFBLE1BQ1AsU0FBUztBQUFBO0FBR2IsTUFBRSxRQUFRLE9BQU8sTUFBTTtBQUNuQixRQUFFLGFBQ0csb0JBQW9CLG1CQUNwQixvQkFBb0IsaUJBQ3BCLFNBQVM7QUFBQSxRQUNWLE9BQU87QUFBQSxRQUNQLE9BQU87QUFBQSxRQUNQLFNBQVM7QUFBQTtBQUFBO0FBS2pCLFFBQUksU0FBUyxNQUFNO0FBQ2YsVUFBSSxVQUFVLFNBQVMsS0FBSyxPQUFPO0FBQUEsZUFDNUIsRUFBRSxtQkFBbUIsUUFBUTtBQUNwQyxVQUFJLFlBQVk7QUFBQTtBQUVwQixhQUFTLGVBQWUsV0FBVyxjQUFjO0FBQUE7IiwKICAibmFtZXMiOiBbXQp9Cg==
