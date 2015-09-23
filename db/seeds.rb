include RandomData

# Create Posts
50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

# Create a Unique Post
1.times do
  Post.find_or_create_by!(
    title: "A Unique Post",
    body: "This is the body for a unique post. If the post is already in the database it will find. If it doesn't find an existing post it will create one."
  )
end

# Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
