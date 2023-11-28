<section id="content" class="product-show-container">
  <div class="product-card">
    <div class="product-image-wrapper">
      <%= image_tag(@product.image, class: 'product-image') if @product.image.attached? %>
    </div>

    <div class="product-details">
      <div class="product-info">
        <h1 class="product-title"><%= @product.title %></h1>
        <span class="product-condition"><%= @product.condition %></span>
        <span class="product-category"><%= @product.category.camelcase %></span>
        <p class="product-description"><%= @product.description %></p>
        <strong><span class="product-price"><%= number_to_currency(@product.price_per_day, unit: '', format: "%n€") %>/day</span></strong>
      </div>

      <% unless current_user == @product.user %>
        <div class="rent-button-wrapper">
          <button class="btn-chat">Chat</button>
          <% if user_signed_in? %>
            <% if current_user.products.exclude?(@product) %>
              <% if @product.favorited_by?(current_user) %>
                <%= link_to toggle_favorite_product_path(@product), method: :post, class: 'product-icon-filled' do %>
                  <%= image_tag 'like_filled.png' %>
                <% end %>
              <% else %>
                <%= link_to toggle_favorite_product_path(@product), method: :post, class: 'product-icon' do %>
                  <%= image_tag 'like.png' %>
                <% end %>
              <% end %>
            <% end %>

              <div class="booking-container">
                      <div id="booking">
                        <% unless current_user == @product.user %>
                            <%= simple_form_for [@product, Booking.new], html: { id: 'rental-form', data: { controller: 'rental-form' } } do |f| %>
                            <div class="date-inputs">
                              <%= f.input :start_date, as: :string, input_html: { data: { controller: "datepicker" } } %>
                              <%= f.input :end_date, as: :string, input_html: { data: { controller: "datepicker" } } %>
                            </div>
                         <%= f.button :submit, 'Rent now!', class: 'btn-rent-now', data: { disable_with: 'Renting...' }, disabled: current_user.rented?(@product) %>

                          <% end %>
                        <% end %>
                      </div>
                    </div>
                  </div>
                </div>
          <% else %>
            <%= link_to 'Rent now!', new_user_session_path, class: 'btn-rent-now' %>
          <% end %>
        </div>
      <% end %>
</section>
