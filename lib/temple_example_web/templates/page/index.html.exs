div class: "grid grid-cols-3 gap-4 p-4 items-start" do
  for user <- @users do
    c Card do
      c Card.Header do
        div class: "w-10 rounded-full overflow-hidden flex-shrink-0" do
          div class: "aspect-w-1 aspect-h-1" do
            img class: "object-cover", src: user.avatar
          end
        end

        div do: user.name
      end

      c Card.Body do
        text_to_html(user.bio, attributes: [class: "first:mt-0 mt-2"])
      end

      unless Enum.empty?(user.socials) do
        c Card.Footer do
          c LinkList, socials: user.socials do
            slot :link, %{text: text, url: url} do
              c LinkList.Item, url: url do
                text
              end
            end
          end
        end
      end
    end
  end
end
