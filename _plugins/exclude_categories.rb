# _plugins/no_write_cat.rb
module Jekyll
  Jekyll::Hooks.register :posts, :post_init do |post|
    # Check if this document is part of the 'cat' collection
    if post.data['categories'] && post.data['categories'].include?('problems')
      # Override the `write?` method to return false, preventing it from being written
      def post.write?()
        # no_op
      end
    end
  end
end
