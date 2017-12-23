require "rails_helper"

feature "Home page" do
  it "has a top-level heading", points: 1 do
    visit "/"

    expect(page).to have_selector("h1", text: /Welcome/i)
  end

  it "has an unordered list with three items", points: 1 do
    visit "/"

    expect(page).to have_tag("ul") do
      with_tag("li", count: 3)
    end
  end

  it "has a link to Wikipedia", points: 1 do
    visit "/"

    expect(page).to have_link("Wikipedia", href: "https://en.wikipedia.org/wiki/Rock–paper–scissors")
  end

  it "has some paragraphs", points: 1 do
    visit "/"

    expect(page).to have_selector("p", minimum: 3)
  end

  it "has a table", points: 1 do
    visit "/"

    expect(page).to have_selector("table")
  end

  it "has a link to play rock" do
    visit "/"

    click_on "Play Rock"

    expect(page).to have_current_path(/\/rock/)
  end

  it "has a link to play paper" do
    visit "/"

    click_on "Play Paper"

    expect(page).to have_current_path(/\/paper/)
  end

  it "has a link to play scissors" do
    visit "/"

    click_on "Play Scissors"

    expect(page).to have_current_path(/\/scissors/)
  end
end

feature "Move table" do
  it "has five rows", points: 1 do
    visit "/"

    expect(page).to have_tag("table") do
      with_tag("tr", count: 5)
    end
  end

  it "has the correct number of cells in the first row" do
    visit "/"

    expect(page).to have_tag("table") do
      with_tag("tr:first-child") do
        with_tag("td", count: 2)
      end
    end
  end

  it "has the first row's cells sized correctly" do
    visit "/"

    expect(page).to have_tag("table") do
      with_tag("tr:first-child") do
        with_tag("td[colspan='2']")

        with_tag("td[colspan='3']")
      end
    end
  end

  it "has the correct number of cells in the second row" do
    visit "/"

    expect(page).to have_tag("table") do
      with_tag("tr:first-child") do
        with_tag("td[rowspan='2']")
      end

      with_tag("tr:nth-child(2)") do
        with_tag("td", count: 3)
      end
    end
  end

  it "has the correct number of cells in the third row" do
    visit "/"

    expect(page).to have_tag("table") do
      with_tag("tr:nth-child(3)") do
        with_tag("td", count: 5)
      end
    end
  end

  it "has the correct number of cells in the fourth row" do
    visit "/"

    expect(page).to have_tag("table") do
      with_tag("tr:nth-child(3)") do
        with_tag("td[rowspan='3']")
      end

      with_tag("tr:nth-child(4)") do
        with_tag("td", count: 4)
      end
    end
  end

  it "has the correct number of cells in the fifth row" do
    visit "/"

    expect(page).to have_tag("table") do
      with_tag("tr:nth-child(3)") do
        with_tag("td[rowspan='3']")
      end

      with_tag("tr:nth-child(5)") do
        with_tag("td", count: 4)
      end
    end
  end
end

feature "Play Rock page" do
  it "has the correct content" do
    visit "/rock"

    expect(page).to have_content("We played rock!")
    expect(page).to_not have_content("We played paper!")
    expect(page).to_not have_content("We played scissors!")
  end

  it "has a link to the homepage", points: 1 do
    visit "/rock"

    click_on "Rules"

    expect(page).to have_current_path("/").or have_current_path(/\/index/)
  end

  it "has a link to play rock" do
    visit "/"

    click_on "Play Rock"

    expect(page).to have_current_path(/\/rock/)
  end

  it "has a link to play paper" do
    visit "/"

    click_on "Play Paper"

    expect(page).to have_current_path(/\/paper/)
  end

  it "has a link to play scissors" do
    visit "/"

    click_on "Play Scissors"

    expect(page).to have_current_path(/\/scissors/)
  end
end

feature "Play Paper page" do
  it "has the correct content" do
    visit "/paper"

    expect(page).to have_content("We played paper!")
    expect(page).to_not have_content("We played rock!")
    expect(page).to_not have_content("We played scissors!")
  end

  it "has a link to the homepage", points: 1 do
    visit "/paper"

    click_on "Rules"

    expect(page).to have_current_path("/").or have_current_path(/\/index/)
  end

  it "has a link to play rock" do
    visit "/"

    click_on "Play Rock"

    expect(page).to have_current_path(/\/rock/)
  end

  it "has a link to play paper" do
    visit "/"

    click_on "Play Paper"

    expect(page).to have_current_path(/\/paper/)
  end

  it "has a link to play scissors" do
    visit "/"

    click_on "Play Scissors"

    expect(page).to have_current_path(/\/scissors/)
  end
end

feature "Play Scissors page" do
  it "has the correct content" do
    visit "/scissors"

    expect(page).to have_content("We played scissors!")
    expect(page).to_not have_content("We played rock!")
    expect(page).to_not have_content("We played paper!")
  end

  it "has a link to the homepage", points: 1 do
    visit "/scissors"

    click_on "Rules"

    expect(page).to have_current_path("/").or have_current_path(/\/index/)
  end

  it "has a link to play rock" do
    visit "/"

    click_on "Play Rock"

    expect(page).to have_current_path(/\/rock/)
  end

  it "has a link to play paper" do
    visit "/"

    click_on "Play Paper"

    expect(page).to have_current_path(/\/paper/)
  end

  it "has a link to play scissors" do
    visit "/"

    click_on "Play Scissors"

    expect(page).to have_current_path(/\/scissors/)
  end
end
