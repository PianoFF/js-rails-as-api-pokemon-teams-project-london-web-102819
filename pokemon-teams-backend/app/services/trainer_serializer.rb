class TrainerSerializer
    def initialize(trainer_object)
        @trainer = trainer_object
    end

    def to_serialized_json
        options={
            include:{
                pokemon:{
                    only: [:id,:species, :nickname]
                },
            },
            except:[:created_at, :updated_at]
        }
        @trainer.to_json(options)
    end
end