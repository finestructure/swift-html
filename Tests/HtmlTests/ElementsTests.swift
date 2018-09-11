import Html
import SnapshotTesting
import XCTest

final class ElementsTests: XCTestCase {
  func testElementsSnapshot() {
    let doc = [
      a(["foo1"]),
      abbr([]),
      abbr([], []),
      address([]),
      address([], []),
      map(name: "foo2", [
        area([])
        ]),
      article([]),
      article([], []),
      aside([]),
      aside([], []),
      audio([]),
      audio([], []),
      audio([], [track(src: "track1")], ["Fallback"]),
      b([]),
      b([], []),
      bdi([]),
      bdi([], []),
      bdo(dir: .ltr, []),
      bdo(dir: .ltr, [], []),
      blockquote([]),
      button([]),
      canvas([]),
      canvas([], []),
      cite([]),
      cite([], []),
      code([]),
      code([], []),
      del([]),
      del([], []),
      details([
        // todo: `summary` returns ChildOf<FieldSet> but `details` only wants Node. is that correct?
//        summary([]),
//        summary([], []),
        ]),
      dfn([]),
      dfn([], []),
      div([]),
      dl([
        dd([]),
        dd([], []),
        dt([]),
        dt([], [])
        ]),
      dl([], []),
      em([]),
      em([], []),
      embed([]),
      fieldset([
        // todo: `legend` returns ChildOf<FieldSet> but `fieldset` only wants Node. is that correct?
//        legend([]),
//        legend([], []),
        ]),
      fieldset([], []),
      figure([
        figcaption([]),
        figcaption([], [])
        ]),
      figure([], []),
      footer([]),
      footer([], []),
      form([]),
      h1([]),
      h1([], []),
      h2([]),
      h2([], []),
      h3([]),
      h3([], []),
      h4([]),
      h4([], []),
      h5([]),
      h5([], []),
      h6([]),
      h6([], []),
      header([]),
      header([], []),
      hr([]),
      html([
        head([
          base([]),
          meta(contentType: .html),
          meta(defaultStyle: "foo"),
          meta(refresh: 1),
          meta(applicationName: "foo"),
          meta(author: "Blob"),
          meta(description: "Functional programming."),
          meta(generator: "foo"),
          meta(keywords: ["math"]),
          meta(name: "foo", content: "bar"),
          meta(property: "foo", content: "bar"),
          meta(viewport: Viewport.height(.deviceHeight)),
          // todo: more of these ^
          script(""),
          script([]),
          script([], ""),
          style(""),
          style([], ""),
          ]),
        body([])
        ]),
      i([]),
      i([], []),
      img(base64: "deadbeef", type: .image(.svg), alt: "", []),
      ins([]),
      ins([], []),
      kbd([]),
      kbd([], []),
      label([]),
      label([], []),
      main([]),
      main([], []),
      mark([]),
      mark([], []),
      meter(value: 1, []),
      meter(value: 2, [], []),
      nav([]),
      nav([], []),
      object([], [param(name: "foo", value: "bar")]),
      ol([
        li([]),
        li([], []),
        ]),
      ol([], []),
      optgroup([
        option("foo"),
        option([], "foo"),
        ]),
      optgroup([], []),
      output([]),
      output([], []),
      p([]),
      p([], []),
      pre([]),
      pre([], []),
      q([]),
      q([], []),
      s([]),
      s([], []),
      samp([]),
      samp([], []),
      script(""),
      script([]),
      script([], ""),
      section([]),
      section([], []),
      select([]),
      select([], []),
      small([]),
      small([], []),
      span([]),
      span([], []),
      strong([]),
      strong([], []),
      sub([]),
      sub([], []),
      sup([]),
      sup([], []),
      svg(""),
      svg([], ""),
      table([
        caption([]),
        caption([], []),
        colgroup([
          col([])
          ]),
        colgroup([], []),
        tbody([]),
        tbody([], []),
        tfoot([]),
        tfoot([], []),
        thead([]),
        thead([], []),
        tr([
          th([]),
          th([], []),
          td([]),
          td([], [])
          ]),
        tr([], [])
        ]),
      textarea(""),
      time([]),
      u([]),
      u([], []),
      ul([
        li([]),
        li([], []),
        ]),
      ul([], []),
      `var`([]),
      `var`([], []),
      video([], []),
    ]

    assertSnapshot(matching: render(doc), pathExtension: "html")
  }
}

