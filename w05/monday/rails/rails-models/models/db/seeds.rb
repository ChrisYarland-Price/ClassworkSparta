# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

videos = Video.create([
    {
        name: 'Casey Neistat Can''t Run Anymore', 
        description: 'Casey Neistat goes to a specialist to find out if he will ever be able to run like he wants too', 
        url: 'https://www.youtube.com/embed/8-M7WA1qX1g'
    }, {
        name: 'The WAN Show', 
        description: 'The wan show is a weekly video podcast by the team at LinusTechTips', 
        url: 'https://www.youtube.com/embed/XZP03YBhKzs'
    }, {
        name: 'Linux Terminal 201: Monitoring System Resources Pt 1 - HakTip 164', 
        description: 'Today we''re monitoring system resources with ps, aux, grep, kill, killall, and lsof. Use coupon code haktip at https://www.eero.com for free overnight shipping on your order to the US or Canada!', 
        url: 'https://www.youtube.com/embed/xcR_FjAy1HI'
    }, {
        name: 'Building a Solar Powered Workshop' , 
        description: 'A full post with cost info and product specifications is coming soon to HomeMade-Modern.com follow me on instagram for project updates: https://www.instagram.com/benjaminuye... Thanks to Jason Andrade of West Coast Sustainables and to Mike Montgomery of Modern Builds', 
        url: 'https://www.youtube.com/embed/xnSew-tCuPo'
    }
])