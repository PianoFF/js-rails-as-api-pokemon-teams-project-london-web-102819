class PokemonSerializer
    def initialize(pokemon_object)
        @pokemon = pokemon_object
    end

    def to_serialized_json
        options={
            include:{
                trainer:{
                    only: [:name]
                },
            },
            except: [:created_at, :updated_at]
        }
        @pokemon.to_json(options)
    end
end