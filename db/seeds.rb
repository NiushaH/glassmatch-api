# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

frame_A = Frame.create(name: "Frame A", style: "round", condition: "like new", image_url: "https://static.zennioptical.com/production/products/general/78/13/7813125-eyeglasses-angle-view.jpg", rx_id: [0, 1])
frame_B = Frame.create(name: "Frame B", style: "square", condition: "good", image_url: "https://static.zennioptical.com/production/products/general/12/69/126921-eyeglasses-angle-view.jpg", rx_id: [2, 3])
frame_C = Frame.create(name: "Frame C", style: "oval", condition: "fair", image_url: "https://static.zennioptical.com/production/products/general/44/49/4449139-eyeglasses-front-view.jpg", rx_id: [4, 5])
frame_D = Frame.create(name: "Frame D", style: "readers", condition: "new in box", image_url: "https://static.zennioptical.com/production/products/general/20/40/2040123-eyeglasses-front-view.jpg", rx_id: [6, 7])
frame_E = Frame.create(name: "Frame E", style: "cat-eye", condition: "poor", image_url: "https://static.zennioptical.com/production/products/general/12/74/127425-eyeglasses-front-view.jpg", rx_id: [8, 9])


Rx.create([
    {OD_SPH: -9.00, OD_CYL:-4.00, OD_AXIS: 180, OD_PRISM: 0.5, OD_BASE: "down", OD_ADD: 2.00, OS_SPHERE: -5.00, OS_CYL: -0.50, OS_AXIS: 10, OS_PRISM: 0.5, OS_BASE: "up", OS_ADD: -2.00, frame_id: 0},
    {OD_SPH: 9.00, OD_CYL: 4.25, OD_AXIS: 10, OD_PRISM: 0.5, OD_BASE: "up", OD_ADD: -2.00, OS_SPHERE: 5.00, OS_CYL: -0.50, OS_AXIS: 180, OS_PRISM: 0.5, OS_BASE: "down", OS_ADD: 2.00, frame_id: 0},
    {OD_SPH: -9.00, OD_CYL:-4.00, OD_AXIS: 180, OD_PRISM: 0.5, OD_BASE: "down", OD_ADD: 2.00, OS_SPHERE: -5.00, OS_CYL: -0.50, OS_AXIS: 10, OS_PRISM: 0.5, OS_BASE: "up", OS_ADD: -2.00, frame_id: 1},
    {OD_SPH: 9.00, OD_CYL: 4.25, OD_AXIS: 10, OD_PRISM: 0.5, OD_BASE: "up", OD_ADD: -2.00, OS_SPHERE: 5.00, OS_CYL: -0.50, OS_AXIS: 180, OS_PRISM: 0.5, OS_BASE: "down", OS_ADD: 2.00, frame_id: 1},
    {OD_SPH: -9.00, OD_CYL:-4.00, OD_AXIS: 180, OD_PRISM: 0.5, OD_BASE: "down", OD_ADD: 2.00, OS_SPHERE: -5.00, OS_CYL: -0.50, OS_AXIS: 10, OS_PRISM: 0.5, OS_BASE: "up", OS_ADD: -2.00, frame_id: 2},
    {OD_SPH: 9.00, OD_CYL: 4.25, OD_AXIS: 10, OD_PRISM: 0.5, OD_BASE: "up", OD_ADD: -2.00, OS_SPHERE: 5.00, OS_CYL: -0.50, OS_AXIS: 180, OS_PRISM: 0.5, OS_BASE: "down", OS_ADD: 2.00, frame_id: 2},
    {OD_SPH: -9.00, OD_CYL:-4.00, OD_AXIS: 180, OD_PRISM: 0.5, OD_BASE: "down", OD_ADD: 2.00, OS_SPHERE: -5.00, OS_CYL: -0.50, OS_AXIS: 10, OS_PRISM: 0.5, OS_BASE: "up", OS_ADD: -2.00, frame_id: 3},
    {OD_SPH: 9.00, OD_CYL: 4.25, OD_AXIS: 10, OD_PRISM: 0.5, OD_BASE: "up", OD_ADD: -2.00, OS_SPHERE: 5.00, OS_CYL: -0.50, OS_AXIS: 180, OS_PRISM: 0.5, OS_BASE: "down", OS_ADD: 2.00, frame_id: 3},
    {OD_SPH: -9.00, OD_CYL:-4.00, OD_AXIS: 180, OD_PRISM: 0.5, OD_BASE: "down", OD_ADD: 2.00, OS_SPHERE: -5.00, OS_CYL: -0.50, OS_AXIS: 10, OS_PRISM: 0.5, OS_BASE: "up", OS_ADD: -2.00, frame_id: 4},
    {OD_SPH: 9.00, OD_CYL: 4.25, OD_AXIS: 10, OD_PRISM: 0.5, OD_BASE: "up", OD_ADD: -2.00, OS_SPHERE: 5.00, OS_CYL: -0.50, OS_AXIS: 180, OS_PRISM: 0.5, OS_BASE: "down", OS_ADD: 2.00, frame_id: 4}
])