module PostsHelper
    def author_id_field(cheese)
        if cheese.author.nil?
          select_tag "post[author_id]", options_from_collection_for_select(Author.all, :id, :name)
        else
          hidden_field_tag "post[author_id]", cheese.author_id
        end
      end
end
