class Cook

    def initialize(args)
        args.each do |key,value|
            if self.respond_to? "#{key}=".to_sym
                self.send("#{key}=", value)
            end
        end
    end
end