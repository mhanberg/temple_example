defmodule TempleExampleWeb.PageController do
  use TempleExampleWeb, :controller

  def index(conn, _params) do
    users = [
      %{
        name: "Mitch Hanberg",
        avatar:
          "https://res.cloudinary.com/mhanberg/image/upload/v1574047220/Becca___Mitch-67_copy.jpg",
        bio: """
        Mitch "motch" Hanberg is the greatest tennis player of all time in addition to being incredibly humble and attractive.

        His mother has been quoted saying "Yeah, he's alright."
        """,
        socials: []
      },
      %{
        name: "Pete Sampras",
        avatar:
          "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimages.thestar.com%2FCLn-BuOZ-IbBcqvDCtpkNzYs_DY%3D%2F1086x766%2Fsmart%2Ffilters%3Acb(2700061000)%2Fhttps%3A%2F%2Fwww.thestar.com%2Fcontent%2Fdam%2Fthestar%2Fsports%2Ftennis%2F2013%2F07%2F22%2Fpete_sampras_says_wimbledon_singles_record_likely_untouchable%2Fpete_sampras.jpg&f=1&nofb=1",
        bio: """
        Petros "Pete" Sampras is an American former professional tennis player. His professional career began in 1988 and ended at the 2002 US Open, which he won, defeating rival Andre Agassi in the final; he is the only man in the open era to have won the final Grand Slam tournament at which he competed.
        """,
        socials: [
          twitter: "https://twitter.com/PeteSampras",
          wikipedia: "https://en.wikipedia.org/wiki/Pete_Sampras"
        ]
      },
      %{
        name: "Andy Roddick",
        avatar:
          "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmarriedbiography.com%2Fwp-content%2Fuploads%2F2018%2F01%2FAndy-Roddick.jpg&f=1&nofb=1",
        bio: """
        Andrew Stephen Roddick is an American former world No. 1 professional tennis player. Roddick became world No. 1 shortly after he won the title at the 2003 US Open, defeating French Open champion Juan Carlos Ferrero in the final.
        """,
        socials: [
          twitter: "https://twitter.com/andyroddick",
          wikipedia: "https://en.wikipedia.org/wiki/Andy_Roddick"
        ]
      }
    ]

    render(conn, "index.html", users: users)
  end
end
