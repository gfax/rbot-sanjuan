# Title:: San Juan
# Author:: Jay Thomas <degradinglight@gmail.com>
# Copyright:: (C) 2013 gfax
# License:: GPL
# Version:: 2013-04
#

class SanJuan

  Title = 'San Juan'

  Max_Buildings = 12
  Colors = { silver_smelter: Irc.color(:black, :lightgray),
             indigo_plant: Irc.color(:white, :blue),
             sugar_mill: Irc.color(:black, :white),
             tobacco_storage: Irc.color(:black, :olive),
             coffee_roaster: Irc.color(:white, :black),
             violet: Irc.color(:purple, :black),
             cost: Irc.color(:red),
           }
  Cards = {
    indigo_plant: {
      cost: 1,
      phase: :producer,
      vps: 1,
      text: "Producer phase: owner produces 1 indigo",
      quantity: 10
    },
    sugar_mill: {
      cost: 2,
      phase: :producer,
      vps: 1,
      text: "Producer phase: owner produces 1 sugar",
      quantity: 8
    },
    tobacco_storage: {
      phase: :producer,
      cost: 3,
      vps: 2,
      text: "Producer phase: owner produces 1 tobacco",
      quantity: 8
    },
    coffee_roaster: {
      phase: :producer,
      cost: 4,
      vps: 2,
      text: "Producer phase: owner produces 1 coffee",
      quantity: 8
    },
    silver_smelter: {
      phase: :producer,
      cost: 5,
      vps: 3,
      text: "Producer phase: owner produces 1 silver",
      quantity: 8
    },
    smithy: {
      phase: :builder,
      cost: 1,
      vps: 1,
      text: "Builder phase: owner pays 1 card less when building a production building",
      quantity: 3
    },
    gold_mine: {
      phase: :prospector,
      cost: 1,
      vps: 1,
      text: "Prospector phase: owner turns up 4 cards from the supply; if " +
            "all have different building costs, he made add one to his hand",
      quantity: 3
    },
    archive: {
      phase: :councillor,
      cost: 1,
      vps: 1,
      text: "Councillor phase: owner may discard hand cards in addition to drawn cards",
      quantity: 3
    },
    market_stand: {
      phase: :trader,
      cost: 2,
      vps: 1,
      text: "Trader phase: owner takes 1 card from the supply when he sells at least 2 goods",
      quantity: 3
    },
    poor_house: {
      phase: :builder,
      cost: 2,
      vps: 1,
      text: "Builder phase: owner takes 1 card from the supply if he has only 0 or 1 card after building",
      quantity: 3
    },
    crane: {
      phase: :builder,
      cost: 2,
      vps: 1,
      text: "Builder phase: owner may build over one of his building (and pay the difference)",
      quantity: 3
    },
    black_market: {
      phase: :builder,
      cost: 2,
      vps: 1,
      text: "Builder phase: owner may discard any 1 or 2  " +
            "goods and reduce the building cost by 1 or 2 cards",
      quantity: 3
    },
    well: {
      phase: :producer,
      cost: 2,
      vps: 1,
      text: "Producer phase: pwmer tales 1 card from the supply when he produces at least 2 goods",
      quantity: 3
    },
    trading_post: {
      phase: :trader,
      cost: 2,
      vps: 1,
      text: "Trader phase: owner may sell 2 additional goods",
      quantity: 3
    },
    tower: {
      phase: :governor,
      cost: 3,
      vps: 2,
      text: "Governor phase: owner may have up to 12 cards in his hand",
      quantity: 3
    },
    carpenter: {
      phase: :builder,
      cost: 3,
      vps: 2,
      text: "Builder phase: owner takes 1 card from the supply after he builds a violet building",
      quantity: 3
    },
    statue: {
      phase: :monument,
      cost: 3,
      vps: 3,
      text: "Monument: no special function",
      quantity: 3
    },
    prefecture: {
      phase: :councillor,
      cost: 3,
      vps: 2,
      text: "Councillor phase: owner keeps 1 card more from those drawn",
      quantity: 3
    },
    chapel: {
      phase: :governor,
      cost: 3,
      vps: 2,
      text: "Governor phase: owner may place 1 hand card under his chapel (each worth 1 VP at game end)",
      quantity: 3
    },
    aqueduct: {
      phase: :producer,
      cost: 3,
      vps: 2,
      text: "Producer phase: owner produces 1 more good",
      quantity: 3
    },
    quarry: {
      phase: :builder,
      cost: 4,
      vps: 2,
      text: "Builder phase: owner pays 1 card less when building a violet building",
      quantity: 3
    },
    victory_column: {
      phase: :monument,
      cost: 4,
      vps: 4,
      text: "Monument: no special function",
      quantity: 3
    },
    market_hall: {
      phase: :trader,
      cost: 4,
      vps: 2,
      text: "Trader phase: owner takes 1 card more for selling one good",
      quantity: 3
    },
    hero: {
      phase: :monument,
      cost: 5,
      vps: 5,
      text: "Monument: no special function",
      quantity: 3
    },
    library: {
      phase: :all,
      cost: 5,
      vps: 3,
      text: "All phases: owner uses the privilege of his role twice",
      quantity: 3
    },
    triumphal_arch: {
      phase: :end,
      cost: 6,
      text: "At game end: owner earns an additional 4-6-8 victory points for 1-2-3 monuments",
      quantity: 2
    },
    city_hall: {
      phase: :end,
      cost: 6,
      text: "At game end: owner earns 1 additional victory point for each of his violet buildings",
      quantity: 2
    },
    guild_hall: {
      phase: :end,
      cost: 6,
      text: "At game end: owner earns 2 additional victory points for each of his production buildings",
      quantity: 2
    },
    palace: {
      phase: :end,
      cost: 6,
      text: "At game end: owner earns 1 additional victory point for every 4 victory points",
      quantity: 2
    },
    office_building: {
      expansion: true,
      phase: :governor,
      cost: 1,
      vps: 1,
      text: "Governor phase: owner may discard 1 or 2 cards and draw 1 or 2 new cards",
      quantity: 3
    },
    guard_room: {
      expansion: true,
      phase: :governor,
      cost: 1,
      vps: 1,
      text: "Governor phase: players without Guard room reduce their hand to 6 cards",
      quantity: 3
    },
    caritas: {
      expansion: true,
      phase: :builder,
      cost: 2,
      vps: 1,
      text: "Builder phase: owner takes 1 card from the supply if he has the " +
            "fewest buildings (does not take affect until the following phase)",
      quantity: 3
    },
    customs_office: {
      expansion: true,
      phase: :councillor,
      cost: 3,
      vps: 2,
      text: "Councillor phase: 1 good from supply on the customs " +
            "office; Trader phase: good brings in 2 cards with the sale",
      quantity: 3
    },
    park: {
      expansion: true,
      phase: :builder,
      cost: 3,
      vps: 2,
      text: "Builder phase: when the park is built over, the cost of the new " +
            "building is lowered by as much as 6 (requires a crane to be built over)",
      quantity: 3
    },
    harbor: {
      expansion: true,
      phase: :trader,
      cost: 4,
      vps: 2,
      text: "Trader phase: owner must put a sold good under " + 
            "his harbor (each scores 1 VP at game end)",
      quantity: 3
    },
    bank: {
      expansion: true,
      phase: :governor,
      cost: 4,
      vps: 2,
      text: "Governor phase: owner may put as many cards from his " +
            "hand cards under his bank (each scores 1 VP at game end)",
      quantity: 3
    },
    goldsmith: {
      expansion: true,
      phase: :prospector,
      cost: 5,
      vps: 3,
      text: "Prospector phase: owner draws 1 card from supply, keeping it if no one has built one",
      quantity: 3
    },
    residence: {
      expansion: true,
      phase: :end,
      cost: 6,
      text: "At game end: owner scores 4-3-2-1 VPs for each set of " +
            "three different buildings with the same building cost",
      quantity: 2
    },
    cathedral: {
      expansion: true,
      phase: :end,
      cost: 7,
      text: "At game end: owner scores 4-3-2-1-0 VPs for each opponents' 6 buildings",
      quantity: 1
    }
  }
  Events = {
    free_build: {
      text: 'each player may build a building with building costs of up to 4 free of charge'
    },
    governor_visit: {
      text: 'an already used role may be used again'
    },
    taxes: {
      text: 'each other player must discard 1 card from his hand'
    },
    debt_relief: {
      text: 'each player draws 3 cards from the supply'
    },
    earthquake: {
      text: 'each player must destroy any 1 of his buildings'
    },
    general_amnesty: {
      text: 'each player may exchange any number of cards from his hand with the supply'
    }
  }


  class Building

    attr_accessor :card, :goods, :stash
  
    def initialize(card)
      @card = card
      @goods = nil # a card from stock will go here to represent produce
      @stash = [] # cards stashed under cathedral or bank for end-game vps
    end
    
    def id
      card.id
    end

    def phase
      card.phase
    end

    def production?
      return true if phase == :producer
      return false
    end

    def to_s
      color = Colors[card.id] || Colors[:violet]
      s = ''
      if stash.length > 0
        s << '('
        stash.length.times { s << '|' }
        s << ')'
      end
      g = if goods then '(*)' else '' end
      i = card.id.to_s.gsub('_',' ').capitalize
      v = ' ' + card.vps.to_s
      Bold + color + s + g + i + v + NormalText
    end
  
  end
  
  
  class Card

    attr_reader :id, :cost, :phase, :vps

    def initialize(id)
      @id = id
      if Cards[id].nil?
        raise "Invalid card name '#{id}'."
        return
      end
      @cost = Cards[id][:cost] || 0
      @phase = Cards[id][:phase]
      @vps = Cards[id][:vps] || 0
    end

    def to_s
      color = Colors[id] || Colors[:violet]
      i = id.to_s.gsub('_',' ').capitalize
      c = if cost.zero? then ''
          else ' ' +  Colors[:cost] + cost.to_s
          end
      v = if vps.zero? then '?'
          elsif c == '' then ' ' + vps.to_s
          else vps.to_s
          end
      Bold + color + i + c + color + '/' + v + NormalText
    end

  end


  class Player

    attr_accessor :user, :buildings, :cards,
                  :max_cards, :moved, :role, :tmp_cards

    def initialize(user)
      @user = user
      @buildings = []
      @cards = []
      @max_cards = 7   # dynamic hand card size limit
      @moved = true    # false until played or passed
      @tmp_cards = []  # used for councillor, goldmine, etc.
      @role = nil      # resets during governor phase
    end

    def delete_cards(request)
      request = [request] unless request.is_a?(Array)
      request.each do |r|
        # Grab an updated copy of the cards
        # array before starting each iteration.
        c = cards.dup
        n = 0
        n += 1 until c[n].id == r.id
        @cards.delete_at(n)
      end
    end

    def has?(id=nil)
      return false unless id
      buildings.each { |b| return true if b.id == id }
      return false
    end

    def occupied_productions
      return buildings.count { |b| b.goods }
    end

    def open_productions
      return buildings.count { |b| b.production? and not b.goods }
    end

    def sort_cards
      # .to_s => sorts by color then name
      @cards = cards.sort {|x,y| x.to_s <=> y.to_s }
    end

    def to_s
      Bold + @user.to_s + Bold
    end

  end

  attr_reader :channel, :deck, :governor, :manager, :market,
              :players, :phase, :roles, :started, :string

  def initialize(plugin, channel, first_player)
    @channel = channel
    @plugin = plugin
    @bot = plugin.bot
    @deck = []         # card stock
    @discard = []      # used cards
    @manager = nil     # player that started the game
    @market = []       # market prices
    @players = []      # players currently in game
    @phase = nil       # the current role being played out
    @registry = @plugin.registry
    @roles = []        # roles to choose from
    @started = nil     # time the game started
    @string = nil      # last message to channel
    create_deck
    add_player(first_player)
  end

  def add_player(user)
    return if started
    if player = get_player(user)
      if player.user == @bot.nick
        say "I'm already in the game, moron."
      else
        say "You're already in the game, #{player}."
      end
      return
    end
    player = Player.new(user)
    @players << player
    if manager.nil?
      @manager = player
      say "#{player} starts a game of #{Title}. Type 'j' to join."
    else
      say "#{player} joins #{Title}."
    end
    deal(player, player.max_cards-2)
    deal_first_building(player)
    if players.length == 1
      countdown = @bot.config['sanjuan.countdown']
      @bot.timer.add_once(countdown) { start_game }
      say "Game will start in #{Bold}#{countdown}#{Bold} seconds."
    end
  end
 
  def change_governor
    players.each { |p| p.role = nil }
    @roles = [ :builder, :councillor, :producer, :prospector, :trader ]
    @governor = players.first
    say "#{governor} is now governor."
    @phase = :chapel
    p_string = 'Place a card under your chapel or pass'
    players.each do |p|
      if p.has?(:chapel)
        p_string << ", #{p}"
        p.moved = false
      end
    end
    if done?
      governor_phase
    else
      p_string << '.'
      @string = p_string
      say string
    end
  end

  def governor_phase
    @phase = :governor
    p_string = 'The governor demands you discard down to a full hand'
    players.each do |p|
      if p.cards.length > p.max_cards
        n = p.cards.length - p.max_cards
        say "Please discard #{n} card#{s(n)}, #{p}."
        p_string << ", #{p}"
        p.moved = false
        show_cards(p)
      end
    end
    if done?
      do_turn
    else
      p_string << '.'
      @string = p_string
      #say string
    end
  end

  def create_deck
    # Extract help information from card hashes.
    Cards.each_pair do |key, value|
      next if value[:expansion] and not @bot.config['sanjuan.expansion']
      # Add an extra production card of each kind if using the expansion deck.
      x = (@bot.config['sanjuan.expansion'] and value[:phase] == :producer)     
      x = if x then 1 else 0 end
      (value[:quantity] + x).times { @deck << Card.new(key) }
    end
    @deck.shuffle!
  end

  def deal(player, n=1)
    return if n < 1
    cards = draw(n)
    notify player, "You drew: #{cards.join(', ')}" if started
    player.cards |= cards
    player.sort_cards
  end

  def deal_councillor(player)
    n = if player.role == :councillor then 5 else 2 end
    n += 3 if player.has?(:library)
    i = inventory(player)
    cards = draw(n)
    if i >= n
      player.cards |= cards
      say "#{player} keeps #{n} card#{s(n)}."
      player.moved = true
    else
      n, b = 0, Bold
      player.tmp_cards |= cards
      c_string = player.tmp_cards.map { |c| n += 1; "#{b}#{n}.\)#{b} #{c}"}
      notify player, "Pick #{i} card#{s(i)} to " +
                     "keep: #{c_string.join(' ')}"
    end
  end

  def deal_first_building(player)
    id = :indigo_plant
    card, n = nil, 0
    @deck.each do |c|
      if c.id == id
        card = c.dup
        @deck.delete_at(n)
        break
      end
      n += 1
    end
    card = Card.new(id) if card.nil?
    building = Building.new(card)
    player.buildings << building
  end

  def deal_producer(player)
    n = inventory(player)
    if n.zero?
      say "#{player} can't produce anything."
    else
      if n == player.open_productions
        player.buildings.each do |b| 
          b.goods = draw if b.production? and not b.goods
        end
        say "#{player} produces #{n} good#{s(n)}."
        player.moved = true
      else
        notify player, "Pick #{n} good#{s(n)} to produce."
        return
      end
    end
    do_turn if done?
  end

  def deal_prospector(player)
    if player.role == :prospector
      n = 1
      n += 1 if player.has?(:library)
      say "#{player} draws #{n} card#{s(n)}."
      deal(player, n)
    end
    if player.has?(:gold_mine)
      player.tmp_cards = draw(4)
      string =  "#{player} draws 4 gold mine cards... "
      values = []
      player.tmp_cards.each { |e| values << e.cost }
      if values.length == values.uniq.length
        string << 'and strikes gold!'
        notify player, ""
      end
    end

    player.moved = true
  end

  def deal_trader(player)
    no_goods = true
    player.buildings.each { |b| no_goods = false if b.goods }
    if no_goods
      player.moved = true
      say "#{player} has nothing to trade."
    end
  end

  def draw(n=1)
    return [] if n < 1
    if deck.length < n
      n -= deck.length
      cards = @deck.pop(deck.length)
      @deck = @discard.dup
      @discard = []
      @bot.action channel, 'shuffles the stock.'
      @deck.shuffle!
      cards |= @deck.pop(n)
    else
      cards = @deck.pop(n)
    end
    return cards
  end

  def do_builder(player, a)
    if a.first == 'pass'
      say "#{player} passes."
    else
      a.map! { |e| e.to_i - 1 }
      cost = if player.role == :builder
               player.cards[a.first].cost - 1
             else
               player.cards[a.first].cost
             end
      cost = 0 if cost < 0
      if cost > a.length - 1
        notify player, 'You must discard enough cards to build that.'
        return false
      end
      cards = []
      a.each do |e|
        if e < 0 or player.cards[e].nil?
          notify player, 'Specify cards from your hand.'
          return false
        end
        cards << player.cards[e].dup
      end
      player.buildings << Building.new(cards.first)
      say "#{player} builds #{cards.first}."
      player.delete_cards(cards[0..cost])
      @discard |= cards[0..cost]
      show_buildings(player)
      show_cards(player)
    end
    tmp_string = 'Need to build or pass - '  
    players.each { |p| tmp_string << ", #{p}" unless p.moved }
    @string = tmp_string + '.'
    return true
  end

  def do_councillor(player, a)
    n = inventory(player)
    unless a.length == n
      notify player, "Pick #{n} card#{s(n)}."
      return false
    end
    cards = []
    a.map! {|e| e.to_i - 1 }
    a.each do |e|
      if e < 0 or player.tmp_cards[e].nil?
        notify player, 'Specify cards you were dealt.'
        return false
      end
      cards << player.tmp_cards[e]
    end
    player.cards |= cards
    cards.each do |e|
      c = player.tmp_cards.dup
      i = 0
      i += 1 until c[i].id == e.id
      player.tmp_cards.delete_at(i)
    end
    @discard |= player.tmp_cards.pop(player.tmp_cards.length)
    say "#{player} keeps #{n} card#{s(n)}."
    player.sort_cards
    show_cards(player)
    tmp_string = 'Pick which cards from the councillor to keep'
    players.each { |p| tmp_string << ", #{p}" unless p.moved }
    @string = tmp_string + '.'
    return true
  end

  def do_chapel(player, a)
    return true if a.first == 'pass'
    n = 0
    card = player.cards[a.first.to_i-1]
    if a.length != 1
      notify player, 'Specify one card in your hand to put under the Chapel.'
      return false
    elsif card.nil?
      notify player, 'Specify a card in your hand.'
      return false
    end
    player.buildings.each do |b|
      break if b.id == :chapel
      n += 1
    end
    player.buildings[n] << card
    player.delete_cards(card)
    p_string = 'Put a card under your chapel or pass'
    players.each do |p|
      next if p == player
      unless player.moved
        p_string << ", #{p}"
        @string = p_string + '.'
      end
    end
    return true
  end

  def do_producer(player, a)
    n = inventory(player)
    unless a.length == n
      notify player, "You must produce #{n} good#{s(n)}."
      return false
    end
    a.map! {|e| e.to_i - 1 }
    a.each do |e|
      if e < 0 or player.buildings[e].nil?
        notify player, 'Specify one of your buildings.'
        return false
      end
      unless player.buildings[e].production? and not player.buildings[e].goods
        notify player, 'You must pick an open production building.'
        return false
      end
    end
    a.each { |e| player.buildings[e].goods = draw }
    say "#{player} produces #{a.length} good#{s}."
    return true
  end

  def do_picker(player, a)
    if a.first.length > 1
      notify player, 'Specify a number.'
      return false
    end
    n = a.first.to_i - 1
    return false unless n.between?(0, roles.length-1)
    @phase = roles[n]
    player.role = roles[n]
    @roles.delete_at(n)
    @string = "#{player} is now #{phase.to_s.capitalize}."
    players.each { |p| p.moved = false }
    case phase
    when :builder
      @string << ' Pick a card to build, or pass.'
      show_cards
    when :councillor
      @string << ' Pick which cards to keep.'
      players.each { |p| deal_councillor(p) }
    when :producer
      @string << ' Pick which goods to produce.'
      players.each { |p| deal_producer(p) }
    when :prospector
      players.each { |p| deal_prospector(p) }
    when :trader
      market_shift
      @string << ' Pick which goods to trade.'
      players.each { |p| deal_trader(p) }
      show_market unless done?
    end
    return player.moved
  end

  def do_prospector(player, a)
    return true
  end

  def do_trader(player, a)
    if a.first == 'pass'
      say "#{player} passes."
      return true
    end
    n = inventory(player)
    if a.length > n
      notify player, "You can only sell (up to) #{n} good#{s(n)}."
      return false
    end
    a.map! { |e| e.to_i - 1 }
    a.each do |e|
      if player.buildings[e].nil?
        notify player, 'Specify one of your production buildings.'
        return false
      elsif not player.buildings[e].production?
        notify player, 'Specify one of your production buildings.'
        return false
      elsif not player.buildings[e].goods
        notify player, 'Specify a production building that has goods.'
        return false
      end
    end
    n = 0
    a.each do |e|
      @discard << player.buildings[e].goods
      n += market.first[player.buildings[e].id]
      player.buildings[e].goods = nil
    end
    deal(player, n)
    say "#{player} trades #{a.length} goods."
    p_string = 'Select which goods to trade in'
    players.each do |p|
      next if p == player
      unless p.moved
        p_string << ", #{p}"
        @string = p_string + '.'
      end
    end
    return true
  end

  def do_governor(player, a)
    a.map! { |e| e.to_i - 1 }
    n = player.cards.length - player.max_cards
    unless a.length == n
      notify player, "You must discard #{n} cards."
      return false
    end
    a.each do |e|
      if player.cards[e].nil?
        notify player, 'Discard cards from your hand.'
        return false
      end
    end
    a.each do |e|
      @discard << player.cards[e]
      player.delete_cards(player.cards[e])
    end
    say "#{player} discards #{n} card#{s(n)}."
    p_string = 'The governor demands you discard down to a full hand'
    players.each do |p|
      next if p == player
      unless p.moved
        p_string << ", #{p}"
        @string = p_string + '.'
      end
    end
    return true
  end

  def do_turn
    if governor.nil? or players.first.role
      change_governor
      return
    elsif phase != :governor
      @phase = :picker
      @players << @players.shift
      players.each { |p| p.moved = false }
    else
      @phase = :picker
      players.first.moved = false
    end
    n = 0
    p_string = "Pick a role, #{players.first}:"
    roles.each { |r| n += 1; p_string << " #{n}.) #{r.to_s.capitalize}" }
    @string = p_string
    say string
  end

  def done?
    players.each { |p| return false unless p.moved }
    return true
  end

  def drop_player(player, dropper=false)
    unless dropper == false or dropper == manager or dropper == player
      say "Only the game manager is allowed to drop others, #{dropper}."
      return
    end
    n = 0
    n += 1 until players[n] == player
    n = next_turn(n)
    if player == manager and players.length > 2
      unless players[n].user == @bot.nick
        @manager = players[n]
      else
        @manager = players[next_turn(n)]
      end
      say "#{manager} is now game manager."
    end
    # If the manager drops the only other player, end the game.
    if players.length < 3
      say "#{player} has been removed from the game. #{Title} stopped."
      @plugin.remove_game(channel)
      return
    end
    say "#{player} has been removed from the game."
    @discard |= player.cards
    @dropouts << player
    @players.delete(player)
    end_game if players.length < 2
  end

  def elapsed_time
    if started
      Utils.secs_to_string(Time.now-started).gsub(/\[|\]|"/,'')
    else
      nil
    end
  end

  def get_player(user, source=nil)
    case user
    when NilClass
      return nil
    when User
      players.each do |p|
        return p if p.user == user
      end
    when String
      players.each do |p|
        return p if p.user.irc_downcase == user.irc_downcase(channel.casemap)
      end
      players.each do |p|
        if p.user.irc_downcase =~ /^#{user.irc_downcase(channel.casemap)}/
          return p unless p.user.irc_downcase == source
        end
      end
    else
      get_player(user.to_s)
    end
    return nil
  end

  def inventory(player, role=phase)
    n = 0
    case role
    when :councillor
      # Number of keepable cards.
      n = 1
      n += 1 if player.has?(:prefecture)
    when :producer
      # Number of producible goods.
      p = player.open_productions
      return n if p < 1
      n = if player.role == :producer then 2 else 1 end
      n += 1 if player.has?(:aqueduct)
      n += 1 if player.role == :producer and player.has?(:library)
      n = p if n > p
    when :trader
      # Number of tradable goods.
      p = player.occupied_productions
      return n if p < 1
      n = if player.role == :trader then 2 else 1 end
      n += 1 if player.has?(:trading_post)
      n += 1 if player.role == :trader and player.has?(:library)
      n = p if n > p
    end
    return n
  end

  def market_shift
    if market.empty?
      @market = [ { indigo_plant: 1, sugar_mill: 1, tobacco_storage: 1, coffee_roaster: 2, silver_smelter: 2 },
                  { indigo_plant: 1, sugar_mill: 1, tobacco_storage: 2, coffee_roaster: 2, silver_smelter: 2 },
                  { indigo_plant: 1, sugar_mill: 1, tobacco_storage: 2, coffee_roaster: 2, silver_smelter: 3 },
                  { indigo_plant: 1, sugar_mill: 2, tobacco_storage: 2, coffee_roaster: 2, silver_smelter: 3 },
                  { indigo_plant: 1, sugar_mill: 2, tobacco_storage: 2, coffee_roaster: 3, silver_smelter: 3 }
                ].shuffle
    else
      @market.shift
    end
  end

  def next_turn(num=0)
    return 0 if num >= players.length - 1
    return num + 1
  end

  def notify(player, msg, opts={})
    unless player.user == @bot.nick
      @bot.notice player.user, msg, opts
    end
  end

  def processor(player, a)
    return if player.moved
    return if a.first.to_i < 1 and a.first != 'pass'
    player.moved = true
    player.moved = self.send("do_#{phase}", player, a)
    if done?
      if phase == :chapel
        governor_phase
      else
        do_turn
      end
    elsif phase != :picker
      say string if player.moved
    end
  end

  def replace_player(player, a)
    a.delete_at(0) if a.first.downcase == player.user.downcase
    [ "me", "with" ].each { |e| a.delete_at(0) if a.first.downcase == e }
    new_player = channel.get_user(a.first)
    unless new_player
      say "There is no one here named '#{a.first}'"
      return
    end
    if player.user == new_player.nick
      say "You're already playing, #{player.user}."
    elsif get_player(new_player.nick)
      say "#{new_player.nick} is already playing #{Title}."
    else
      say "#{player} was replaced by #{Bold + new_player.nick + Bold}!"
      player.user = new_player
      say "#{player} is now game manager." if player == manager
    end
  end

  def s(n)
    return '' if n.to_i == 1
    return 's'
  end

  def say(msg, who=channel, opts={})
    @bot.say who, msg, opts
  end

  def show_buildings(player, a=[])
    p = get_player(a.first) || player
    b_string = ''
    i = 0
    b = if get_player(a.first) then '' else Bold end
    p.buildings.each do |e|
      i += 1
      b_string << " #{b}#{i}.)#{b} #{e}"
    end
    if get_player(a.first)
      say "#{p}'s buildings:" + b_string
    else
      notify p, 'Buildings:' + b_string
    end
  end

  def show_cards(p_array=players)
   p_array = [ p_ar
    def p_cards(player)
    if player.cards.length > 0
      n, b = 0, Bold
      cards = player.cards.map { |c| n += 1; "#{b}#{n}.\)#{b} #{c}"}
      return cards.join(' ')
    else
      return "#{Bold}(You have no cards!)#{Bold}"
    end
  end

    if player
      notify player, p_cards(player)
    else
      players.each { |p| notify p, p_cards(p) }
    end
  end

  def show_market
    return unless phase == :trader
    m_string = ''
    market.first.each_key do |key|
      m_string << Bold + Colors[key] + key.to_s.capitalize +
                  ": #{market.first[key]} #{NormalText}"
    end
    say m_string
  end

  def show_roles
    return unless started
    r_string = 'Roles -'
    players.each do |p|
      r_string << "- #{p}"
      r_string << ' (Governor)' if p == governor
      r_string << ': '
      if p.role
        r_string << p.role.to_s.capitalize + ' '
      else
        r_string << 'none '
      end
    end
    say r_string
  end
    
  def show_string
    return unless started
    say string
    show_market if g.phase == :trader
  end

  def start_game
    @players.shuffle!
    @started = Time.now
    show_cards
    change_governor
  end

  def transfer_management(player, a)
    unless player == manager
      say "#{player.user}: you can't transfer ownership. " +
          "#{manager} manages this game."
      return
    end
    [ 'game', 'manager', 'management', 'ownership', 'to' ].each do |w|
      a.delete_at(0) if a.first == w
    end
    new_manager = get_player(a.first, manager.user.downcase)
    if new_manager.nil?
      say "'#{a.first}' is not playing #{Title}"
      return
    elsif manager == new_manager
      say "#{player.user}: You are already game manager."
      return
    end
    @manager = new_manager
    say "#{new_manager} is now game manager."
  end

end


class SanJuanPlugin < Plugin

  Title = SanJuan::Title

  Config.register Config::IntegerValue.new 'sanjuan.countdown',
    :default => 45, :validate => Proc.new{|v| v > 0},
    :desc => 'Number of seconds before starting a game of San Juan.'

  Config.register Config::BooleanValue.new 'sanjuan.expansion',
    :default => false,
    :desc => 'Include the expansion cards in the deck: Office build, Caritas, ' +
             'Customs office, Park, Harbor, Bank, Goldsmith, Residence, Cathedral'

  Config.register Config::BooleanValue.new 'sanjuan.events',
    :default => false,
    :desc => 'Include events from the Treasure Chest: Free build, Governor ' +
             'visit, Taxes, Debt relief, Earthquake, General amnesty'


  attr :games

  def initialize
    super
    @games = {}
  end
  
  def help(plugin, topic='')
    p = @bot.config['core.address_prefix'].first
    case topic.downcase
    when /command/
    when /rule/, /manual/
      "http://www.riograndegames.com/uploads/Game/Game_170_gameRules.pdf"
    when /stat/, /scor/
      "#{p}#{plugin} stats <channel|user> -- displays the stats and scores for a channel or " +
      "user. If no channel or user is specified, this command will show you your own stats."
    when /cancel/, /end/, /halt/, /stop/
      "#{p}#{plugin} stop -- stops the current game"
    else
      "#{Title}, an adaption of the card game by Alea and Rio Grande Games. " +
      "#{Bold}Help topics:#{Bold} commands, manual, stats, stop"
    end
  end

  def create_game(m, plugin)
    if @games.key?(m.channel)
      user = @games[m.channel].manager.user
      if m.source.nick == user
        m.reply "...you already started #{Title}."
        return
      else
        m.reply "#{user} already started #{Title}."
        return
      end
    end
    @games[m.channel] = SanJuan.new(self, m.channel, m.source)
  end

  def message(m)
    return unless @games.key?(m.channel) and m.plugin
    g = @games[m.channel]
    a = m.message.downcase.split(' ').uniq
    a.delete_at(0) # [ "p", "2", "4" ] => [ "2", "4" ]
    p = g.get_player(m.source.nick)
    return if p.nil?
    case m.message.downcase
    when /^(jo?|join)( |\z)/
      g.add_player(m.source)
    #when 'cd'
    when /^(bd?|buildings?)( |\z)/
      g.show_buildings(p, a)
    when /^(ca?|cards?)( |\z)/
      g.show_cards(p)
    #when /^(di?|discard)( |\z)/
    #  g.discard(a) if g.has_turn?(m.source)
    when /^drop( |\z)/
      return unless p and g.started
      victim = case a[0]
               when 'me', nil then p
               when 'bot' then g.get_player(@bot.nick)
               else g.get_player(a[0], m.sourcenick.downcase)
               end
      unless victim
        m.reply "There is no one playing named '#{a[0]}'."
        return
      end
      g.drop_player(victim, p)
    when /^(r|roles?)( |\z)/, 'od'
      g.show_roles
    when /^(pa|pass)( |\z)/
      return unless g.started
      g.processor(p, ['pass'])
    when /^(pi?|pl|play)( |\z)/
      return if a.length.zero? or g.started.nil?
      g.processor(p, a)
    when /^(tu?|turn)( |\z)/
      g.show_string
    when /^replace( |\z)/
      return if a.length.zero?
      g.replace_player(p, a)
    when /^ti(me)?( |\z)/
      if g.started
        m.reply Title + " has been in play for #{g.elapsed_time}."
      else
        m.reply Title + " hasn't started yet."
      end
    when /^transfer( |\z)/
      return if a.length.zero?
      g.transfer_management(p, a)
    end
  end

  # Called from within the game.
  def remove_game(channel)
    @games.delete(channel)
  end

  def stop_game(m, plugin=nil)
    if @games[m.channel].nil?
      m.reply "No one is playing #{Title} here."
      return
    end
    manager = @games[m.channel].manager
    player = @games[m.channel].get_player(m.source.nick)
    if manager == player or @bot.auth.irc_to_botuser(m.source).owner?
      remove_game(m.channel)
      @bot.say m.channel, "#{Title} stopped."
    else
      m.reply "Only game managers may stop the game."
    end
  end

end

plugin = SanJuanPlugin.new

[ 'sanjuan', 'sj' ].each do |scope|
  [ 'cancel', 'end', 'halt', 'stop' ].each do |x|
    plugin.map "#{scope} #{x}",
      :private => false, :action => :stop_game
  end
  plugin.map "#{scope} stat[s] [:x [:y]]",
    :action => :show_stats
  plugin.map "#{scope} top [:z]",
    :private => false, :action => :show_stats,
    :defaults => { :x => false, :z => 5 }
  plugin.map "#{scope}",
    :private => false, :action => :create_game
end

plugin.default_auth('*', true)
