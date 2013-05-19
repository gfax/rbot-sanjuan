# Title:: San Juan
# Author:: Jay Thomas <degradinglight@gmail.com>
# Copyright:: (C) 2013 gfax
# License:: GPL
# Version:: 2013-05-19
#

class SanJuan

  Max_Buildings = 12
  Starting_Cards = 4

  B = Bold
  Cards = {
    # Call these production to distinguish them
    # from the other producer-phase cards.
    indigo_plant: {
      cost: 1,
      phase: :production,
      vps: 1,
      keywords: [ /indigo/, /plant/ ],
      text: 'owner produces 1 indigo',
      quantity: 10
    },
    sugar_mill: {
      cost: 2,
      phase: :production,
      vps: 1,
      keywords: [ /sugar/, /mill/ ],
      text: 'owner produces 1 sugar',
      quantity: 8
    },
    tobacco_storage: {
      phase: :production,
      cost: 3,
      vps: 2,
      keywords: [ /tobacc?o/, /storage/ ],
      text: 'owner produces 1 tobacco',
      quantity: 8
    },
    coffee_roaster: {
      phase: :production,
      cost: 4,
      vps: 2,
      keywords: [ /coff?e/, /roa?ster/ ],
      text: 'owner produces 1 coffee',
      quantity: 8
    },
    silver_smelter: {
      phase: :production,
      cost: 5,
      vps: 3,
      keywords: [ /silver/, /smelter/ ],
      text: 'owner produces 1 silver',
      quantity: 8
    },
    smithy: {
      phase: :builder,
      cost: 1,
      vps: 1,
      keywords: [ /smithy/ ],
      text: 'owner pays 1 card less when building a production building',
      quantity: 3
    },
    gold_mine: {
      phase: :prospector,
      cost: 1,
      vps: 1,
      keywords: [ /gold/, /mine/ ],
      text: 'owner turns up 4 cards from the supply; if all have ' +
            'different building costs, he made add one to his hand',
      quantity: 3
    },
    archive: {
      phase: :councillor,
      cost: 1,
      vps: 1,
      keywords: [ /archive/ ],
      text: 'owner may discard hand cards in addition to drawn cards',
      quantity: 3
    },
    market_stand: {
      phase: :trader,
      cost: 2,
      vps: 1,
      keywords: [ /stand/ ],
      text: 'owner takes 1 card from the supply ' +
            'when he sells at least 2 goods',
      quantity: 3
    },
    poor_house: {
      phase: :builder,
      cost: 2,
      vps: 1,
      keywords: [ /poor/ ],
      text: 'owner takes 1 card from the supply if ' +
            'he has only 0 or 1 card after building',
      quantity: 3
    },
    crane: {
      phase: :builder,
      cost: 2,
      vps: 1,
      keywords: [ /crane/ ],
      text: 'owner may build over one of his building (and pay ' +
            'the difference); specify the target building when ' +
            'when building: p b# 2 3... (# being the building number)',
      quantity: 3
    },
    black_market: {
      phase: :builder,
      cost: 2,
      vps: 1,
      keywords: [ /black/ ],
      text: 'owner may discard any 1 or 2 goods and ' +
            'reduce the building cost by 1 or 2 cards',
      quantity: 3
    },
    well: {
      phase: :producer,
      cost: 2,
      vps: 1,
      keywords: [ /wish/, /well/ ],
      text: 'owner takes 1 card from the supply ' +
            'when he produces at least 2 goods',
      quantity: 3
    },
    trading_post: {
      phase: :trader,
      cost: 2,
      vps: 1,
      keywords: [ /trading/, /post/ ],
      text: 'owner may sell 2 additional goods',
      quantity: 3
    },
    tower: {
      phase: :governor,
      cost: 3,
      vps: 2,
      keywords: [ /tower/ ],
      text: 'owner may have up to 12 cards in his hand',
      quantity: 3
    },
    carpenter: {
      phase: :builder,
      cost: 3,
      vps: 2,
      keywords: [ /carpenter/ ],
      text: 'owner takes 1 card from the supply ' +
            'after he builds a violet building',
      quantity: 3
    },
    statue: {
      phase: :monument,
      cost: 3,
      vps: 3,
      keywords: [ /statue/ ],
      text: 'no special function',
      quantity: 3
    },
    prefecture: {
      phase: :councillor,
      cost: 3,
      vps: 2,
      keywords: [ /prefecture/ ],
      text: 'owner keeps 1 card more from those drawn',
      quantity: 3
    },
    chapel: {
      phase: :governor,
      cost: 3,
      vps: 2,
      keywords: [ /chapel/ ],
      text: 'owner may place 1 hand card under his ' +
            'chapel (each worth 1 VP at game end)',
      quantity: 3
    },
    aqueduct: {
      phase: :producer,
      cost: 3,
      vps: 2,
      keywords: [ /aqu(e|a)duct/ ],
      text: 'owner produces 1 more good',
      quantity: 3
    },
    quarry: {
      phase: :builder,
      cost: 4,
      vps: 2,
      keywords: [ /quar/ ],
      text: 'owner pays 1 card less when building a violet building',
      quantity: 3
    },
    victory_column: {
      phase: :monument,
      cost: 4,
      vps: 4,
      keywords: [ /victory/, /column/ ],
      text: 'no special function',
      quantity: 3
    },
    market_hall: {
      phase: :trader,
      cost: 4,
      vps: 2,
      keywords: [ /hall/ ],
      text: 'owner takes 1 card more for selling one good',
      quantity: 3
    },
    hero: {
      phase: :monument,
      cost: 5,
      vps: 5,
      keywords: [ /hero/ ],
      text: 'no special function',
      quantity: 3
    },
    library: {
      phase: :all,
      cost: 5,
      vps: 3,
      keywords: [ /library/ ],
      text: 'owner uses the privilege of his role twice',
      quantity: 3
    },
    # End-game cards:
    city_hall: {
      phase: :end,
      cost: 6,
      keywords: [ /city/ ],
      text: 'owner earns 1 additional victory point ' +
            'for each of his violet buildings',
      quantity: 2
    },
    guild_hall: {
      phase: :end,
      cost: 6,
      keywords: [ /guild/ ],
      text: 'owner earns 2 additional victory points ' +
            'for each of his production buildings',
      quantity: 2
    },
    triumphal_arch: {
      phase: :end,
      cost: 6,
      keywords: [ /triump/ ],
      text: 'owner earns an additional 4-6-8 ' +
            'victory points for 1-2-3 monuments',
      quantity: 2
    },
    palace: {
      phase: :end,
      cost: 6,
      keywords: [ /palace/ ],
      text: 'owner earns 1 additional victory point for every 4 victory points',
      quantity: 2
    },
    # Expansion Cards:
    office_building: {
      expansion: true,
      phase: :governor,
      cost: 1,
      vps: 1,
      keywords: [ /off?ice/ ],
      text: 'owner may discard 1 or 2 cards and draw 1 or 2 new cards',
      quantity: 3
    },
    guard_room: {
      expansion: true,
      phase: :governor,
      cost: 1,
      vps: 1,
      keywords: [ /guard/ ],
      text: 'players without Guard room reduce their hand to 6 cards',
      quantity: 3
    },
    caritas: {
      expansion: true,
      phase: :builder,
      cost: 2,
      vps: 1,
      keywords: [ /caritas/ ],
      text: 'owner takes 1 card from the supply if he has the fewest ' +
            'buildings (does not take affect until the following phase). ' +
            'note: owner does no need to build for it to take affect',
      quantity: 3
    },
    customs_office: {
      expansion: true,
      phase: :councillor,
      cost: 3,
      vps: 2,
      keywords: [ /customs/ ],
      text: '1 good from supply on the customs office; ' +
            ' Trader phase: good brings in 2 cards with the sale',
      quantity: 3
    },
    park: {
      expansion: true,
      phase: :builder,
      cost: 3,
      vps: 2,
      keywords: [ /park/ ],
      text: 'when the park is built over, the cost of the new building ' +
            'is lowered by as much as 6 (requires a crane to be built over)',
      quantity: 3
    },
    harbor: {
      expansion: true,
      phase: :trader,
      cost: 4,
      vps: 2,
      keywords: [ /harbor/ ],
      text: 'owner must put a sold good under his ' +
            'harbor (each scores 1 VP at game end)',
      quantity: 3
    },
    bank: {
      expansion: true,
      phase: :governor,
      cost: 4,
      vps: 2,
      keywords: [ /bank/ ],
      text: 'owner may put as many cards from his hand cards ' +
            'under his bank (each scores 1 VP at game end). ' +
            'note: this card can only be used once per game',
      quantity: 3
    },
    goldsmith: {
      expansion: true,
      phase: :prospector,
      cost: 5,
      vps: 3,
      keywords: [ /gold ?smith/ ],
      text: 'owner draws 1 card from supply, keeping it if no one has built one',
      quantity: 3
    },
    residence: {
      expansion: true,
      phase: :end,
      cost: 6,
      keywords: [ /residence/ ],
      text: 'owner scores 4-3-2-1 VPs for each set of three ' +
            'different buildings with the same building cost',
      quantity: 2
    },
    # test this
    cathedral: {
      expansion: true,
      phase: :end,
      cost: 7,
      keywords: [ /cathedral/ ],
      text: 'owner scores 4-3-2-1-0 VPs for each opponents\' 6 buildings',
      quantity: 1
    },
    # Events:
    free_build: {
      expansion: true,
      phase: :event,
      keywords: [ /free?buil/ ],
      text: 'each player may build a building with ' +
            'building costs of up to 4 free of charge',
      quantity: 1
    },
    governor_visit: {
      expansion: true,
      phase: :event,
      keywords: [ /visit/ ],
      text: 'an already used role may be used again',
      quantity: 1
    },
    taxes: {
      expansion: true,
      phase: :event,
      keywords: [ /tax(es|ing)/ ],
      text: 'each other player must discard 1 card from his hand',
      quantity: 1
    },
    debt_relief: {
      expansion: true,
      phase: :event,
      keywords: [ /debt/, /relief/ ],
      text: 'each player draws 3 cards from the supply',
      quantity: 1
    },
    earthquake: {
      expansion: true,
      phase: :event,
      keywords: [ /earth/, /quake/ ],
      text: 'each player must destroy any 1 of his buildings',
      quantity: 1
    },
    general_amnesty: {
      expansion: true,
      phase: :event,
      keywords: [ /general/, /amnest/ ],
      text: 'each player may exchange any number of ' +
            'cards from his hand with the supply',
      quantity: 1
    }
  }
  Colors = {
    silver_smelter: Irc.color(:black, :lightgray),
    indigo_plant: Irc.color(:white, :blue),
    sugar_mill: Irc.color(:black, :white),
    tobacco_storage: Irc.color(:black, :olive),
    coffee_roaster: Irc.color(:white, :black),
    violet: Irc.color(:purple, :black),
    cost: Irc.color(:red)
  }
  Roles = [
    :indigo_plant, :sugar_mill, :coffee_roaster,
    :tobacco_storage, :silver_smelter
  ]
  Title = 'San Juan'


  class Building

    attr_accessor :card, :goods, :stash

    def initialize(card)
      @card = card
      @goods = nil # a card from stock will go here to represent produce
      @stash = []  # cards stashed under bank/cathedral/harbor
    end

    def cost
      card.cost
    end

    def id
      card.id
    end

    def phase
      card.phase
    end

    def production?
      card.production?
    end

    def violet?
      card.violet?
    end

    def vps
      vps = card.vps
      vps += stash.size
    end

    def to_s
      color = Colors[id] || Colors[:violet]
      g = goods ? '(*)' : ''
      i = id.to_s.gsub('_',' ').capitalize
      v = vps < 1 ? ' ?' : ' ' + vps.to_s
      B + color + g + i + v + NormalText
    end

    def to_ss
      color = Colors[id] || Colors[:violet]
      g = goods ? '(*)' : ''
      i = id.to_s.gsub('_',' ').capitalize
      v = card.vps < 1 ? ' ?' : ' ' + card.vps.to_s
      B + color + g + i + v + NormalText
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

    def production?
      return true if phase == :production
      return false
    end

    def violet?
      return true unless phase == :production
      return false
    end

    def to_s
      color = Colors[id] || Colors[phase] || Colors[:violet]
      i = id.to_s.gsub('_',' ').capitalize
      c = if cost.zero? then ''
          else ' ' +  Colors[:cost] + cost.to_s
          end
      v = if vps.zero? then ''
          elsif c == '' then ' ' + vps.to_s
          else '/' + vps.to_s
          end
      B + color + i + c + color + v + NormalText
    end

  end


  class Player

    attr_accessor :user, :banked, :buildings, :built, :cards, :discard,
                  :max_cards, :moved, :role, :time, :tmp_cards

    def initialize(user)
      @user = user
      @banked = false # true once player has used bank
      @buildings = [] # array of Buildings
      @cards = []     # hand cards
      @discard = 0    # number of cards to discard
      @built = false  # building id when built
      @max_cards = 7  # dynamic hand card size limit
      @moved = true   # false until played or passed
      @role = nil     # resets during governor phase
      @time = nil     # time player joined game
      @tmp_cards = [] # used for councillor, goldmine, etc.
    end

    def delete_cards(request)
      request = [request] unless request.class == Array
      request.each do |r|
        # Grab an updated copy of the cards
        # array before starting each iteration.
        c = cards.dup
        n = 0
        n += 1 until c[n].id == r.id
        @cards.delete_at(n)
      end
    end

    def goods
      # Returns array of occupied productions in
      # order from least to greatest value goods.
      g_array, n = [], 0
      buildings.each { |b| g_array << n if b.goods; n += 0 }
      return g_array
    end

    def has?(id=nil)
      return false unless id
      buildings.each { |b| return true if b.id == id }
      return false
    end

    def open_productions
      buildings.count { |b| b.production? and not b.goods }
    end

    def sort_cards
      # .to_s => sorts by color then name
      @cards = cards.sort {|x,y| x.to_s <=> y.to_s }
    end

    def to_s
      B + @user.to_s + B
    end

  end

  attr_reader :cathedral, :channel, :deck, :governor, :join_timer, :manager,
              :market, :players, :phase, :roles, :started, :string

  def initialize(plugin, channel, user)
    @bot = plugin.bot
    @channel = channel
    @plugin = plugin
    @registry = plugin.registry
    @cathedral = @bot.config['sanjuan.expansion']
    @deck = []        # card stock
    @discard = []     # used cards
    @join_timer = nil # timer for countdown
    @manager = nil    # player that started the game
    @market = []      # market prices
    @players = []     # players currently in game
    @phase = nil      # the current role being played out
    @roles = []       # roles to choose from
    @started = nil    # time the game started
    @string = nil     # last message to channel
    create_deck
    add_player(user)
  end

  def add_player(user)
    return if started
    if player = get_player(user)
      say "You're already in the game, #{player}."
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
    # Deal first building, then hand cards:
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
    player.buildings << Building.new(card)
    #9.times { player.buildings << Building.new(@deck.pop) }
    deal(player, Starting_Cards)
    # Start game if there are enough players:
    if @join_timer
      @bot.timer.reschedule(@join_timer, 10)
    elsif players.length > 1
      countdown = @bot.config['sanjuan.countdown']
      @join_timer = @bot.timer.add_once(countdown) { start_game }
      say "Game will start in #{B}#{countdown}#{B} seconds."
    end
  end

  def create_deck
    # Extract information from card hashes.
    Cards.each_pair do |key, value|
      next if value[:phase] == :event and not @bot.config['sanjuan.events']
      next if value[:expansion] and not @bot.config['sanjuan.expansion']
      next if key == :cathedral
      # Add an extra production card of each kind if using the expansion deck.
      x = (@bot.config['sanjuan.expansion'] and value[:phase] == :production)
      x = if x then 1 else 0 end
      (value[:quantity] + x).times { @deck << Card.new(key) }
    end
    @deck.shuffle!
  end

  def deal(player, n=1)
    return 0 if n < 1
    cards = draw(n)
    notify player, "You drew: #{cards.join(', ')}" if started
    player.cards |= cards
    player.sort_cards
    show_cards(player)
    return n
  end

  def deal_bank
    @phase = :bank
    p_string = 'Place cards under your bank or pass'
    players.each do |p|
      if p.has?(:bank) and p.cards.size > 0 and not p.banked
        p_string << ", #{p}"
        show_cards(p)
        p.moved = false
      end
    end
    if done?
      do_turn
    else
      @string = p_string + '.'
      show_string
    end
  end

  def deal_chapel
    @players << @players.shift
    @roles = [ :builder, :councillor, :producer, :prospector, :trader ]
    @phase = :chapel
    players.each { |p| p.role = nil }
    @governor = players.first
    say "#{governor} is now governor."
    p_string = 'Place a card under your chapel or pass'
    players.each do |p|
      if p.has?(:chapel) and p.cards.size > 0
        p_string << ", #{p}"
        show_cards(p)
        p.moved = false
      end
    end
    if done?
      do_turn
    else
      @string = p_string + '.'
      show_string
    end
  end

  def deal_councillor(player)
    n = if player.role == :councillor then 5 else 2 end
    n += 3 if player.role == :councillor and player.has?(:library)
    i = inventory(player)
    cards = draw(n)
    if i >= n
      player.cards |= cards
      say "#{player} keeps #{n} card#{s(n)}."
      player.moved = true
    else
      if player.has?(:archive)
        player.cards |= cards
        player.discard = n - i
      else
        player.tmp_cards |= cards
      end
      show_councillor_cards(player)
      @string << ", #{player}"
    end
    if player.has?(:customs_office)
      n = 0
      n += 1 until player.buildings[n].id == :customs_office
      unless player.buildings[n].goods
        player.buildings[n].goods = draw
        say "#{player} puts a card on the customs office."
      end
    end
  end

  def deal_governor
    @phase = :governor
    p_string = 'The governor demands you discard down to a full hand'
    players.each do |p|
      if p.cards.length > p.max_cards or p.discard > 0
        # p.discard if sanjuan.start_handicap is enabled
        if p.cards.length - p.max_cards > 0
          n = p.cards.length - p.max_cards
        else
          n = 0
        end
        n += p.discard
        show_cards(p)
        say "Please discard #{n} card#{s(n)}, #{p}."
        p_string << ", #{p}"
        p.moved = false
      end
    end
    if done?
      do_turn
    else
      @string = p_string + '.'
    end
  end

  def deal_office
    @phase = :office
    p_string = 'Discard and draw 1 or 2 new cards ' +
               'with the office building, or pass'
    players.each do |p|
      if p.has?(:office_building) and p.cards.size > 0
        p_string << ", #{p}"
        show_cards(p)
        p.moved = false
      end
    end
    if done?
      do_turn
    else
      @string = p_string + '.'
      show_string
    end
  end

  def deal_producer(player)
    n = inventory(player)
    if n.zero?
      say "#{player} can't produce anything."
      player.moved = true
    elsif n == player.open_productions
      player.buildings.each do |b|
        b.goods = draw if b.production? and not b.goods
      end
      say "#{player} produces #{n} good#{s(n)}."
      if n > 1 and player.has?(:well)
        deal(player)
        say "#{player} draws a card using the well."
      end
      player.moved = true
    else
      notify player, "Pick #{n} good#{s(n)} to produce."
      show_buildings(player)
      @string << ", #{player}"
    end
  end

  def deal_prospector(player)
    if player.role == :prospector
      n = inventory(player)
      say "#{player} draws #{n} card#{s(n)}."
      deal(player, n)
    end
    if player.has?(:goldsmith)
      gold = draw
      p_string = "#{player} draws a goldsmith card..."
      p_array = []
      players.each { |p| p_array << p if p.has?(gold.id) }
      if p_array.empty?
        say p_string + 'and keeps the card since no one has built it.'
        player.cards << gold
        show_cards(player)
      else
        p_string << 'no good! -- ' + gold.to_s
        p_string << " has already been built by #{p_array.join(' and ')}."
        say p_string
        @discard << gold
      end
    end
    if player.has?(:gold_mine)
      player.tmp_cards = draw(4)
      p_string =  "#{player} draws 4 gold mine cards... "
      values = []
      player.tmp_cards.each { |e| values << e.cost }
      cards = stringify(player.tmp_cards)
      if values.length == values.uniq.length
        p_string << 'and strikes gold!'
        notify player, 'Pick a card to keep: ' + cards
        @string << ", #{p}"
      else
        p_string << 'no good! -- ' + cards
        @discard |= player.tmp_cards.pop(player.tmp_cards.length)
        player.moved = true
      end
      say p_string
    else
      player.moved = true
    end
  end

  def deal_trader(player)
    if player.goods.empty?
      player.moved = true
      say "#{player} has nothing to trade."
    else
      show_buildings(player)
      @string << ", #{player}"
    end
  end

  def draw(n=:no_array)
    # Don't return an array if no arguments
    # were given; same way pop and shift work.
    no_array = if n == :no_array then true else false end
    n = 1 if n.class == Symbol
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
    cards = cards.first if no_array
    return cards
  end

  def do_bank(player, a)
    if a.first == 'pass'
      say "#{player} passes."
    else
      cards = []
      a.each do |e|
        if player.cards[e].nil?
          notify player, 'Specify cards from your hand.'
          return false
        end
        cards << player.cards[e]
      end
      n = 0
      player.buildings.each do |b|
        break if b.id == :bank
        n += 1
      end
      player.buildings[n].stash |= cards
      player.delete_cards(cards)
      say "#{player} puts #{cards.size} card#{s(cards.size)} under the bank."
      player.banked = true
    end
    p_string = 'Place cards under your bank or pass'
    players.each do |p|
      next if p == player
      p_string << ", #{p}" unless p.moved
      @string = p_string + '.'
    end
    return true
  end

  def do_builder(player, a)
    if a.first == 'pass'
      player.built = false
      say "#{player} passes."
    else
      cost = inventory(player)
      crane = nil
      if a.first =~ /^b/
        if player.has?(:crane)
          crane = a.first[1..-1].to_i - 1
          if player.buildings[crane].nil? or crane < 0
            notify player, 'You can only use the crane to ' +
                            'build over other buildings.'
            return false
          elsif player.buildings[crane].id == :crane
            notify player, 'You can\'t build over the crane with itself.'
            return false
          end
          cost -= player.buildings[crane].cost
          cost -= 3 if player.buildings[crane].id == :park
        end
        a.delete_at(0)
      end
      cards = []
      if a.first == 'cathedral'
        if cathedral
          cards << Card.new(:cathedral)
        else
          notify player, 'The Cathedral is not available to be built.'
          return false
        end
        a.delete_at(0)
      end
      a.each do |e|
        if e < 0 or player.cards[e].nil?
          notify player, 'Specify cards from your hand.'
          return false
        end
        cards << player.cards[e].dup
      end
      if player.has?(cards.first.id) and cards.first.violet?
        notify player, 'You may only have one of each type of violet building.'
        return false
      end
      cost += cards.first.cost
      cost -= 1 if player.has?(:smithy) and player.cards[a.first].production?
      cost -= 1 if player.has?(:quarry) and player.cards[a.first].violet?
      cost = 0 if cost < 0
      deficit = cost - (cards.size - 1)
      open_market = deficit <= player.goods.size
      if player.has?(:black_market) and open_market and deficit.between?(1,2)
        player.goods[0..deficit-1].each do |e|
          @discard << player.buildings[e].goods
          player.buildings[e].goods = nil
          cost -= 1
        end
        say "#{player} uses the black market to " +
            "trade #{deficit} good#{s(deficit)}."
      elsif deficit > 0
        notify player, "Pick #{cost} card#{s(cost)} to discard to build that."
        return false
      end
      if crane
        say "#{player} builds over #{player.buildings[crane].card} " +
            "using the crane."
        # Cathedral never goes in the deck.
        if player.buildings[crane].card.id == :cathedral
          @cathedral = true
        else
          @discard << player.buildings[crane].card
        end
        player.buildings[crane].card = cards.first
        # Move any goods to discard, but not stashes.
        if player.buildings[crane].goods
          @discard << player.buildings[crane].goods
          player.buildings[crane].goods = nil
        end
      else
        player.buildings << Building.new(cards.first)
      end
      player.built = cards.first.id
      say "#{player} builds #{cards.first}."
      player.delete_cards(cards[0..cost])
      @discard |= cards[1..cost]
      @cathedral = false if cards.first.id == :cathedral
      bonus_string = ''
      if player.has?(:carpenter) and cards.first.violet?
        unless player.built == :carpenter
          deal(player)
          bonus_string << "#{player} draws a card using the carpenter. "
        end
      end
      # Poor house conditions are checked after
      # performing effects from other buildings.
      if player.cards.length < 2 and player.has?(:poor_house)
        unless player.built == :poor_house
          deal(player)
          bonus_string << "#{player} draws a card using the poor house. "
        end
      end
      say bonus_string
      show_buildings(player)
      show_cards(player)
    end
    p_string = 'Build or pass'
    players.each do |p|
      next if p == player
      p_string << ", #{p}" unless p.moved
    end
    @string = p_string + '.'
    return true
  end

  def do_councillor(player, a)
    n = if player.discard > 0 then player.discard else inventory(player) end
    if a.first == 'pass' or a.length != n
      show_councillor_cards(player)
      return false
    end
    cards = []
    if player.has?(:archive)
      a.each do |e|
        if player.cards[e].nil?
          show_councillor_cards(player)
          return false
        end
        cards << player.cards[e]
      end
      player.delete_cards(cards)
      @discard |= cards
      say "#{player} discards #{n} hand card#{s(n)}."
      player.discard = 0
    else
      a.each do |e|
        if player.tmp_cards[e].nil?
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
    end
    player.sort_cards
    show_cards(player)
    p_string = 'Please look over your councillor cards'
    players.each do |p|
      next if p == player
      p_string << ", #{p}" unless p.moved
    end
    @string = p_string + '.'
    return true
  end

  def do_chapel(player, a)
    if a.first == 'pass'
      say "#{player} passes."
    else
      card = player.cards[a.first]
      if a.length != 1
        notify player, 'Specify one card in your hand to put under the Chapel.'
        return false
      elsif card.nil?
        notify player, 'Specify a card in your hand.'
        return false
      end
      n = 0
      player.buildings.each do |b|
        break if b.id == :chapel
        n += 1
      end
      player.buildings[n].stash << card
      player.delete_cards(card)
      say "#{player} puts a card under the chapel."
    end
    p_string = 'Place a card under your chapel or pass'
    players.each do |p|
      next if p == player
      p_string << ", #{p}" unless p.moved
      @string = p_string + '.'
    end
    return true
  end

  def do_office(player, a)
    if a.first == 'pass'
      say "#{player} passes."
    else
      unless a.size.between?(1, 2)
        notify player, 'Specify only 1 or 2 cards.'
        return false
      end
      cards = []
      a.each do |e|
        if player.cards[e].nil?
          notify player, 'Specify cards from your hand.'
          return false
        end
        cards << player.cards[e]
      end
      @discard |= cards
      player.delete_cards(cards)
      say "#{player} discards and draws #{cards.size} new card#{s(cards.size)}."
      deal(player, cards.size)
    end
    return true
  end

  def do_producer(player, a)
    n = inventory(player)
    unless a.length == n or a.first == 'pass'
      return false
    end
    a.each do |e|
      if player.buildings[e].nil?
        notify player, 'Specify one of your buildings.'
        return false
      elsif player.buildings[e].violet? or player.buildings[e].goods
        notify player, 'You must pick an open production building.'
        return false
      end
    end
    a.each { |e| player.buildings[e].goods = draw }
    say "#{player} produces #{n} good#{s(n)}."
    if n > 1 and player.has?(:well)
      deal(player)
      say "#{player} draws a card using the well."
    end
    p_string = 'Pick which production building(s) to produce goods for'
    players.each do |p|
      next if p == player
      p_string << ", #{p}" unless p.moved
      @string = p_string + '.'
    end
    return true
  end

  def do_picker(player, a)
    return true unless player == players.first
    if a.first == 'pass' or not a.first.between?(0, roles.length-1)
      notify player, 'Specify a role\'s number.'
      return false
    end
    @phase = roles[a.first]
    player.role = roles[a.first]
    @roles.delete_at(a.first)
    @string = "#{player} is now #{phase.to_s.capitalize}. "
    players.each { |p| p.moved = false }
    case phase
    when :builder
      @string << 'Pick a card to build, or pass.'
      @string << ' Cathedral is available' if cathedral
      show_cards
    when :councillor
      @string << 'Pick which cards to keep'
      players.each { |p| deal_councillor(p) }
    when :producer
      @string << 'Pick which production buildings to produce goods for'
      players.each { |p| deal_producer(p) }
    when :prospector
      @string << 'Pick a gold mine card to keep'
      players.each { |p| deal_prospector(p) }
    when :trader
      @string << 'Pick which goods to trade'
      market_shift
      players.each { |p| deal_trader(p) }
    end
    @string << '.'
    return player.moved
  end

  def do_prospector(player, a)
    if a.first == 'pass' or player.tmp_cards[a.first].nil?
      notify player, 'Specify a gold mine card you wish to keep.'
      return false
    end
    player.cards << player.tmp_cards[a.first]
    show_cards(player)
    say "#{player} keeps a card from the gold mine."
    @discard |= player.tmp_cards.pop(player.tmp_cards.length)
    players.each do |p|
      next if p == player
      p_string << ", #{p}" unless p.moved
    end
    @string = p_string + '.'
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
    a.each do |e|
      if player.buildings[e].nil?
        notify player, 'Specify one of your buildings.'
        return false
      elsif not player.buildings[e].goods
        notify player, 'Specify a building that has goods.'
        return false
      end
    end
    n = 0
    a.each do |e|
      @discard << player.buildings[e].goods
      if player.buildings[e].id == :customs_office
        n += 2
      else
        n += market.first[player.buildings[e].id]
      end
      player.buildings[e].goods = nil
    end
    deal(player, n)
    say "#{player} trades #{a.length} good#{s(a.length)}."
    if player.has?(:harbor)
      n = 0
      n += 1 until player.buildings[n].id == :harbor
      player.buildings[n].stash << @discard.pop
      say "#{player} puts a traded good under the harbor."
    end
    if a.length > 1 and player.has?(:market_stand)
      deal(player)
      say "#{player} draws a card using the market stand."
    end
    if player.has?(:market_hall)
      deal(player)
      say "#{player} draws a card using the market hall."
    end
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
    n = if player.discard > 0
          player.discard
        else
          player.cards.length - player.max_cards
        end
    if a.first == 'pass' or a.length != n
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
    player.discard = 0 # reset mandatory discard
    p_string = 'The governor demands you discard down to a full hand'
    players.each do |p|
      next if p == player
      p_string << ", #{p}" unless p.moved
    end
    @string = p_string + '.'
    return true
  end

  def do_turn
    if players.length == 2
      if roles.length == 2
        # In a 2-player game, the governor draws a second role:
        # Round 1: P1, P2, P1
        # Round 2: P2, P1, P2
        # Round 3: P1, P2, P1...
        deal_chapel
        return
      end
    elsif players[1].role
      @players << @players.shift
      deal_office
      return
    end
    case phase
    when :bank
      deal_governor
      return
    when :chapel
      deal_bank
      return
    when :governor
      players.first.moved = false
    when :office
      deal_chapel
      return
    else
      @players << @players.shift
      players.first.role = nil if players.length == 2
      players.each { |p| p.moved = false }
    end
    @phase = :picker
    p_string = "Pick a role, #{players.first}: "
    @string = p_string + stringify(roles)
    show_string
  end

  def done?
    players.each { |p| return false unless p.moved }
    return true
  end

  def drop_player(dropper, a)
    case player = a.first
    when nil, 'me' then dropper
    else get_player(a.first, dropper)
    end
    if player.nil?
      say "#{dropper}, there is no one playing named '#{a.first}'."
      return
    elsif player != dropper and dropper != manager
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
    say "#{player} has been removed from the game."
    @discard |= player.cards
    player.buildings.each do |b|
      @discard << b.card
      @discard << b.goods if b.goods
      @discard |= b.stash
    end
    @players.delete(player)
    # If the manager drops the only other player, end the game.
    if players.length < 2
      say "#{player} has been removed from the game. #{Title} stopped."
      @plugin.remove_game(channel)
    else
      do_turn if done?
    end
  end

  def elapsed_time
    return Utils.secs_to_string(Time.now-started)
  end

  def end_game
    # Time spent playing the game.
    @started = Time.now.to_i - started.to_i
    # Index stats:
    stats = {}
    players.each do |p|
      p.time = Time.now.to_i - p.time.to_i
      stats[p] = {
        base: 0, end: 0, goods: 0, monuments: 0, palace: 0, productions: 0,
        stash: 0, total: 0, ties: 0, violets: 0, wins: 0
      }
      p.buildings.each do |b|
        stats[p][:base] += b.card.vps
        stats[p][:stash] += b.stash.size
        stats[p][:goods] += 1 if b.goods
        stats[p][:productions] += 1 if b.production?
        stats[p][:monuments] += 1 if b.phase == :monument
        stats[p][:monuments] = 3 if stats[p][:monuments] > 3
        stats[p][:violets] += 1 if b.violet?
        stats[p][:total] += b.vps
      end
      stats[p][:end] += stats[p][:violets] if p.has?(:city_hall)
      stats[p][:end] += stats[p][:productions] * 2 if p.has?(:guild_hall)
      if p.has?(:triumphal_arch)
        stats[p][:end] += 2 if stats[p][:monuments] > 0
        stats[p][:end] += stats[p][:monuments] * 2
      end
      if p.has?(:residence)
        values = { 1 => 0, 2 => 0, 3 => 0, 4 => 0 }
        p.buildings.each do |b|
          values[b.card.vps] += 1 if b.card.vps.between?(1,4)
        end
        values.each_key do |k|
          values[k] /= 3
          stats[p][:end] += values[k] * k
        end
      end
      stats[p][:total] += stats[p][:end] # "6-card" values
      stats[p][:palace] += stats[p][:total] / 4 if p.has?(:palace)
      stats[p][:total] += stats[p][:palace]
    end
    # Announce scores:
    players.each { |p| show_buildings(p, [ p.user ]) }
    stats.each_pair do |k, v|
      p_string = "#{k}#{B}:#{B} base vps: #{B}#{v[:base]}#{B}, "
      p_string << "stash cards: #{B}+#{v[:stash]}#{B}, " if v[:stash] > 0
      p_string << "end-game buildings: #{B}+#{v[:end]}#{B}, " if v[:end] > 0
      p_string << "palace: #{B}+#{v[:palace]}#{B}, " if v[:palace] > 0
      p_string << "#{B}total vps: #{v[:total]}#{B}"
      say p_string
    end
    # Find winner:
    scores = {}
    stats.each_pair { |k, v| scores[k] = v[:total] }
    top_score = scores.values.max
    scores.select! { |k, v| v == top_score }
    scores.each_key { |k| stats[k][:wins] = 1 }
    if scores.size > 1
      p_array = []
      p_string = 'A tie between '
      scores.each_pair do |k, v|
        stats[k][:ties] = 1
        p_array << k.to_s
      end
      p_string << Utils.comma_list(p_array) + '!'
    else
      scores.each_key { |k| p_string = "#{k} wins!" }
    end
    say p_string
    # Update registry:
    update_channel_stats(stats)
    players.each { |p| update_user_stats(p, stats[p]) }
    @plugin.remove_game(channel)
  end

  def get_player(user, source='')
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
          return p unless p.user.irc_downcase == source.downcase
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
    when :builder
      # Base build cost.
      n -= 1 if player.role == :builder
      n -= 1 if player.role == :builder and player.has?(:library)
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
    when :prospector
      # Number of cards to draw.
      n = 1 if player.role == :prospector
      n += 1 if player.has?(:library)
    when :trader
      # Number of tradable goods.
      p = player.goods.size
      return n if p < 1
      n = if player.role == :trader then 2 else 1 end
      n += 2 if player.has?(:trading_post)
      n += 1 if player.role == :trader and player.has?(:library)
      n = p if n > p
    end
    return n
  end

  def market_shift
    if market.size == 1
      @market = [
        { indigo_plant: 1, sugar_mill: 1, tobacco_storage: 1,
          coffee_roaster: 2, silver_smelter: 2 },
        { indigo_plant: 1, sugar_mill: 1, tobacco_storage: 2,
          coffee_roaster: 2, silver_smelter: 2 },
        { indigo_plant: 1, sugar_mill: 1, tobacco_storage: 2,
          coffee_roaster: 2, silver_smelter: 3 },
        { indigo_plant: 1, sugar_mill: 2, tobacco_storage: 2,
          coffee_roaster: 2, silver_smelter: 3 },
        { indigo_plant: 1, sugar_mill: 2, tobacco_storage: 2,
          coffee_roaster: 3, silver_smelter: 3 }
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
    return if player.moved or a.empty?
    return unless a.first =~ /^(b?[0-9]+|cathedral|pass)$/
    return if a.first =~ /^(b|c)/ and phase != :builder
    player.moved = true
    old_phase = phase
    a.map! { |e| e =~ /^(b|cathedral|pass)/ ? e : e.to_i - 1 }
    player.moved = self.send("do_#{phase}", player, a)
    if done?
      # End-phase automations:
      case phase
      when :builder
        # Check caritas:
        poorest = []
        players.each { |p| poorest << p.buildings.length }
        poorest.sort!
        players.each do |p|
          next if p.built == :caritas
          if p.buildings.length == poorest.first and p.has?(:caritas)
            deal(p)
            say "#{p} draws a card using the caritas."
          end
        end
        # Check max hand size:
        players.each do |p|
          p.max_cards = 7
          unless p.has?(:guard_room)
            players.each { |pl| p.max_cards = 6 if pl.has?(:guard_room) }
          end
          p.max_cards = 12 if p.has?(:tower)
        end
      end
      # Check for game end:
      over = false
      players.each { |p| over = true if p.buildings.length >= Max_Buildings }
      if over
        end_game
      else
        do_turn
      end
    elsif phase != :picker
      show_string if old_phase != phase or player.moved
    end
  end

  def replace_player(replacer, a)
    old_player = new_player = nil
    a.each do |e|
      next if e == @bot.nick.downcase
      if old_player.nil?
        e = replacer.user.nick if e == 'me'
        old_player = channel.get_user(e)
      elsif new_player.nil?
        new_player = channel.get_user(e)
      end
    end
    unless old_player
      notify replacer, "Specify a replacement user, #{replacer.user}."
      return
    end
    # Player only specified one name. Assume that is the new player.
    unless new_player
      new_player = old_player
      old_player = channel.get_user(replacer.user.nick)
    end
    if replacer.user == new_player
      notify replacer, "You're already playing, #{replacer.user}."
    elsif old_player == new_player
      notify replacer, 'Replace someone with someone else.'
    elsif get_player(new_player.nick)
      notify replacer, "#{new_player.nick} is already playing #{Title}."
    elsif not player = get_player(old_player) # assign player or return nil
      notify replacer, "#{old_player} is not playing #{Title}."
    elsif player != replacer and replacer != manager
      notify replacer, 'Only game managers can replace other players.'
    else
      say "#{player} was replaced by #{B + new_player.nick + B}!"
      player.user = new_player
      # Reset player's accumulated time playing this game.
      player.time = Time.now
      say "#{player} is now game manager." if player == manager
    end
  end

  def s(n)
    return '' if n.to_i == 1
    return 's'
  end

  def say(msg, who=channel, opts={})
    return if msg.empty?
    @bot.say who, msg, opts
  end

  def show_buildings(player=players, a=[])
    p_array = get_player(a.first) || player
    p_array = [ p_array ] unless p_array.class == Array
    if player = get_player(a.first)
      if @bot.config['sanjuan.hide_stashes']
        b_string = stringify(player.buildings.map { |x| x.to_ss })
      else
        b_string = stringify(player.buildings)
      end
      say "#{p_array.first}'s buildings: " + b_string
    else
      p_array.each do |p|
        notify p, 'Buildings: ' + stringify(p.buildings, true)
      end
    end
  end

  def show_cards(p_array=players)
    p_array = [ p_array ] unless p_array.class == Array
    p_array.each do |p|
      cards = if p.cards.length > 0
                'Cards: ' + stringify(p.cards, true)
              else
                "#{B}(You have no cards!)#{B}"
              end
      notify p, cards
    end
  end

  def show_councillor_cards(p_array=players)
    p_array = [ p_array ] unless p_array.class == Array
    p_array.each do |p|
      next if p.moved
      n = if p.discard > 0 then p.discard else inventory(p) end
      if p.has?(:archive)
        notify p, "#{B}Discard#{B} #{n} card#{s(n)} from your " +
                  "hand: " + stringify(p.cards, true)
      else
        notify p, "Pick #{n} card#{s(n)} to keep: " +
                  stringify(p.tmp_cards, true)
      end
    end
  end

  def show_help(player, a)
    return unless a.first.to_i.between?(1, player.cards.size)
    card = player.cards[a.first.to_i-1]
    notify player, "#{card} - #{Cards[card.id][:phase]} " +
                   "card: #{Cards[card.id][:text]}"
  end

  def show_market
    return unless phase == :trader
    m_string = 'Market prices: '
    market.first.each_key do |key|
      m_string << B + Colors[key] + key.to_s.gsub('_',' ').capitalize +
                  ':' + market.first[key].to_s + NormalText
    end
    say m_string
  end

  def show_roles
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
    say string
    show_market if phase == :trader
  end

  def start_game
    @players.shuffle!
    @started = Time.now
    if @bot.config['sanjuan.start_handicap']
      n = 0
      players.each { |p| p.discard = deal(p, n); n+= 1 }
      # player must discard p.discard during the governor phase
      @players = [ @players.pop ] + players
    end
    players.each { |p| p.time = started }
    deal_office
  end

  def stringify(array, b=false)
    a = array.dup
    n = 0
    b = if b then B else '' end
    a.map! do |c|
      n += 1
      c = c.to_s.capitalize if c.class == Symbol
      "#{b}#{n}.)#{b} #{c}"
    end
    return a.join(' ')
  end

  def transfer_management(player, a)
    return if a.length.zero?
    unless player == manager
      notify player, "You can't transfer ownership. " +
                     "#{manager} manages this game."
      return
    end
    a.each { |e| break if new_manager = get_player(e, manager.user) }
    if new_manager.nil?
      say "#{player}: Specify another player."
      return
    elsif manager == new_manager
      say "#{player.user}: You are already game manager."
      return
    end
    @manager = new_manager
    say "#{new_manager} is now game manager."
  end

  def update_channel_stats(stats)
    r = @registry[:chan] || {}
    c = channel.name.downcase
    r[c] = {} if r[c].nil?
    ties = vps = 0
    stats.each_value do |v|
      ties = 1 if v[:ties] > 0
      vps += v[:total]
    end
    r[c][:games] = r[c][:games].to_i + 1
    r[c][:longest] = started if r[c][:longest].nil?
    r[c][:longest] = started if started > r[c][:longest]
    # display-name for proper caps
    r[c][:name] = channel.name
    r[c][:shortest] = started if r[c][:shortest].nil?
    r[c][:shortest] = started if started < r[c][:shortest]
    r[c][:ties] = r[c][:ties].to_i + ties
    r[c][:time] = r[c][:time].to_i + started
    r[c][:vps] = r[c][:vps].to_i + vps
    @registry[:chan] = r
  end

  def update_user_stats(player, pstats)
    @registry[:user] = {} if @registry[:user].nil?
    c, n = channel.name.downcase, player.user.nick.downcase
    h1 = @registry[:chan][c][n] || {}
    h2 = @registry[:user][n] || {}
    [ h1, h2 ].each do |e|
      e[:games] = e[:games].to_i + 1
      # Get player's nick in proper caps.
      e[:nick] = player.user.to_s
      e[:ties] = e[:ties].to_i + pstats[:ties]
      e[:time] = e[:time].to_i + player.time
      e[:vps] = e[:vps].to_i + pstats[:total]
      e[:wins] = e[:wins].to_i + pstats[:wins]
    end
    r1 = @registry[:chan]
    r2 = @registry[:user]
    r1[c][n], r2[n] = h1, h2
    @registry[:chan], @registry[:user] = r1, r2
  end

end


class SanJuanPlugin < Plugin

  Title = SanJuan::Title

  Config.register Config::IntegerValue.new 'sanjuan.countdown',
    :default => 45, :validate => Proc.new{|v| v > 0},
    :desc => 'Number of seconds before starting a game of San Juan.'

  Config.register Config::BooleanValue.new 'sanjuan.hide_stashes',
    :default => false,
    :desc => 'Don\'t allow players to see how many cards are ' +
             'under other players\' Banks, Chapels or Harbors.'

  Config.register Config::BooleanValue.new 'sanjuan.events',
    :default => false,
    :desc => 'Include events from the Treasure Chest: ' +
             'Free build, Governor visit, Taxes, ' +
             'Debt relief, Earthquake, General amnesty ' +
             '(Must enable sanjuan.expansion as well.)'

  Config.register Config::BooleanValue.new 'sanjuan.expansion',
    :default => false,
    :desc => 'Include the expansion cards in the deck: ' +
             'Office building, Caritas, Customs office, ' +
             'Park, Harbor, Bank, Goldsmith, Residence, Cathedral'

  Config.register Config::BooleanValue.new 'sanjuan.start_handicap',
    :default => false,
    :desc => 'Deal +1 card for every player after the first player. ' +
             '(See Variant section of the manual for more information.)'

  Config.register Config::BooleanValue.new 'sanjuan.tie_breaker',
    :default => false,
    :desc => 'Counts cards, then goods if there is a tie. ' +
             '(Ties will still show up on channel and user stats.)'


  attr :games

  def initialize
    super
    @games = {}
  end

  def help(plugin, topic='')
    # Extract help information from Cards hash.
    id, card = nil, nil
    SanJuan::Cards.each_pair do |key, value|
      a = value[:keywords]
      a.each do |r|
        case topic.downcase
        when r
          id, card = key, value
          break
        end
      end
    end
    # Format and return card information.
    if card
      color = SanJuan::Colors[id] || SanJuan::Colors[:violet]
      cost = if card[:cost] then " (cost: #{card[:cost]}" else '' end
      vps = "victory points: #{card[:vps] ? card[:vps] : '?'})"
      phase = case card[:phase]
              when :all then 'All phases: '
              when :monument then 'Monument: '
              when :end then 'At game end: '
              else card[:phase].to_s.capitalize + ' phase: '
              end
      return Bold + color + id.to_s.gsub('_',' ').capitalize + NormalText +
             cost + ' / ' + vps + ' - ' + phase + card[:text]
    end
    # Check other help topics for information.
    p = @bot.config['core.address_prefix'].first
    case topic.downcase
    when /card/
      "Cards names are followed by their #{SanJuan::Colors[:cost]}cost " +
      "#{NormalText}and victory points. The special functions of each " +
      "card can be found by typing #{p}help #{plugin} <card>; See the " +
      "manual for any other card-related questions."
    when /building/
      'Building names are followed by their worth in victory points. ' +
      'Production buildings are marked * when they have produced goods. ' +
      'Special buildings like chapel or bank are marked with a | for ' +
      'every card they are storing.'
    when /command/
      'play/pick cards: p <card #> -- build: p <card #> <discard #> -- ' +
      'produce/trade: p <building #> -- pass -- pa (when applicable) ' +
      'show for information on a specific card: h/help <card #> -- ' +
      'show roles: r -- show turn: t -- replace: replace [with] <user> ' +
      "(gives your spot in game to another user) -- #{p}help #{plugin} " +
      'manager for manager-specific commands'
    when /manage/, /transfer/, /xfer/
      'The player that starts the game is the game manager. ' +
      'Game managers may stop the game at any time, or transfer ownership ' +
      "by typing 'transfer [game to] <player>'. Managers may replace " +
      'themselves as well as other players in the game by typing ' +
      "'replace [me with] <user> / replace <player> [with] <nick>'"
    when /rule/, /manual/
      "http://www.riograndegames.com/uploads/Game/Game_170_gameRules.pdf"
    when /stat/, /scor/
      "#{p}#{plugin} stats <channel|user> -- displays the stats and scores " +
      "for a channel or user. If no channel or user is specified, this " +
      "command will show you your own stats.\n#{p}#{plugin} stats <channel> " +
      "<user> -- displays user stats for a specific channel\n#{p}#{plugin} " +
      "top <num> <channel> -- shows the top <num> scores for a given channel"
    when /cancel/, /end/, /halt/, /stop/
      "#{p}#{plugin} stop -- Stops the current game; Only game " +
      'managers and bot owners can stop a game in progress.'
    else
      "#{Title}, an adaption of the card game by Alea and Rio Grande Games. " +
      "#{Bold}Help topics:#{Bold} cards, commands, manager, manual, stats, stop"
    end
  end

  def create_game(m, plugin)
    if g = @games[m.channel]
      if m.source == g.manager.user
        m.reply "...you already started #{Title}."
      else
        m.reply "#{g.manager.user} already started #{Title}."
      end
    else
      @games[m.channel] = SanJuan.new(self, m.channel, m.source)
    end
  end

  def message(m)
    return unless m.plugin and g = @games[m.channel]
    case m.message.downcase
    when 'j', 'jo', 'join'
      g.add_player(m.source)
    when 'ti', 'time'
      if g.started
        @bot.say m.replyto, Title + " has been in play for #{g.elapsed_time}."
      else
        m.reply Title + " hasn't started yet."
      end
    end
    # Messages only concerning players:
    player = g.get_player(m.source.nick)
    return unless player and g.started
    a = m.message.downcase.split(' ').uniq[1..-1]
    case m.message.downcase
    when /^(bd?|buildings?)( |\z)/
      g.show_buildings(player, a)
    when /^(ca?|cards?)( |\z)/
      g.show_cards(player)
    when /^drop( |\z)/
      g.drop_player(player, a)
    when /^h(elp)?( |\z)/
      g.show_help(player, a)
    when /^(pa|pass)( |\z)/
      g.processor(player, ['pass'])
    when /^(pi?|pl|di?|play)( |\z)/
      g.processor(player, a)
    when /^(tu?|turn)( |\z)/
      g.show_string
    when /^replace( |\z)/
      g.replace_player(player, a)
    when /^(r|roles?)( |\z)/, 'od'
      g.show_roles
    when /^transfer( |\z)/
      g.transfer_management(player, a)
    end
  end

  # Called from within the game.
  def remove_game(channel)
    if t = @games[channel].join_timer
      @bot.timer.remove(t)
    end
    @games.delete(channel)
  end

  def show_stats(m, params)
    if @registry[:chan].nil?
      m.reply "No #{Title} stats recorded yet."
      return
    end
    if params[:a] == false
      if @registry[:chan][m.channel.name.downcase]
        show_stats_chan(m, m.channel.name.downcase, params[:n].to_i)
      else
        m.reply "No one has played #{Title} in #{m.channel.name}."
      end
      return
    end
    chan, user, n = nil, nil, 0
    params[:a].each do |e|
      chan = e.downcase if @registry[:chan][e.downcase]
      user = e.downcase if @registry[:user][e.downcase]
      n = e.to_i if e.to_i > n
    end
    if chan.nil? and user.nil?
      # Check for missing # symbol.
      params[:a].each { |e| chan = "##{chan}" if @registry[:chan]["##{chan}"] }
      if chan
        show_stats_chan(m, chan, n)
      else
        m.reply "No stats for #{params[:a].join(' or ')}."
      end
    elsif user
      show_stats_user(m, user, chan)
    elsif chan
      show_stats_chan(m, chan, n)
    end
  end

  def show_stats_chan(m, chan, n)
    c = @registry[:chan][chan]
    if n.zero?
      str = "#{Bold}#{c[:name]}:#{Bold} #{c[:games]} games played, "
      str << "#{c[:ties]} ties, "
      str << "VPs accumulated: #{c[:vps]} "
      str << "(#{c[:vps]/c[:games]} VPs average per game), "
      str << "longest game: #{Utils.secs_to_string(c[:longest])}, "
      str << "shortest game: #{ Utils.secs_to_string(c[:shortest])}, "
      str << "time accumulated: #{Utils.secs_to_string(c[:time])} "
      str << "(#{Utils.secs_to_string(c[:time]/c[:games])} average per game)."
      @bot.say m.replyto, str
      return
    end
    n = 5 unless n.between?(1,20)
    tops = {}
    c.each_pair do |k, v|
      next unless k.is_a? String
      tops[v[:vps]] = k
    end
    n = tops.size if n > tops.size
    @bot.say m.replyto, "#{c[:name]}'s top #{n} players:"
    i = 1
    if n.between?(1,8)
      tops.sort.reverse.each do |e|
        str = "#{Bold}#{i}.) #{c[e[1]][:nick]}#{Bold} - "
        str << "#{e.first} vps, "
        str << "#{c[e[1]][:wins]}/#{c[e[1]][:games]} wins, "
        str << "#{c[e[1]][:ties]} ties."
        @bot.say m.replyto, str
        i += 1
      end
    else
      str = ''
      tops.sort.reverse.each do |e|
        str << "#{Bold}#{i}.) #{c[e[1]][:nick]}#{Bold} - "
        str << "#{e.first} vps"
        i += 1
        if i > n
          break
        else
          str << ', '
        end
      end
      @bot.say m.replyto, str
    end
  end

  def show_stats_user(m, user, chan=nil)
    if chan
      u = @registry[:chan][chan][user]
      chan = @registry[:chan][chan][:name]
      str = "#{Bold}#{u[:nick]}#{Bold} (in #{chan}) "
    else
      u = @registry[:user][user]
      str = "#{Bold}#{u[:nick]}#{Bold} "
    end
    str << "total VPs: #{u[:vps]}, "
    str << "wins: #{u[:wins]}, "
    str << "games played: #{u[:games]}, "
    str << "ties: #{u[:ties]}, "
    str << "in-game time: #{Utils.secs_to_string(u[:time])} "
    str << "(#{Utils.secs_to_string(u[:time]/u[:games])} average per game)."
    @bot.say m.replyto, str
  end

  def reset_everything(m, params)
    @registry.clear
    m.reply 'Registry cleared.'
  end

  def stop_game(m, plugin=nil)
    unless g = @games[m.channel]
      m.reply "No one is playing #{Title} here."
      return
    end
    player = @games[m.channel].get_player(m.source.nick)
    if g.manager == player or @bot.auth.irc_to_botuser(m.source).owner?
      remove_game(m.channel)
      @bot.say m.replyto, "#{Title} stopped."
    else
      m.reply 'Only game managers may stop the game.'
    end
  end

end

plugin = SanJuanPlugin.new

[ 'sanjuan', 'sj' ].each do |scope|
  [ 'cancel', 'end', 'halt', 'stop' ].each do |x|
    plugin.map "#{scope} #{x}",
      :private => false, :action => :stop_game
  end
  plugin.map "#{scope} reset",
    :action => :reset_everything
  plugin.map "#{scope} stat[s] *a",
    :action => :show_stats
  plugin.map "#{scope} top [:n]",
    :private => false, :action => :show_stats,
    :defaults => { :a => false, :n => 5 }
  plugin.map "#{scope}",
    :private => false, :action => :create_game
end

plugin.default_auth('*', true)
