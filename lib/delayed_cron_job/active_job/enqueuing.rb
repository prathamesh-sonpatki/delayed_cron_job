module DelayedCronJob
  module ActiveJob
    module Enqueuing

      def self.included(klass)
        klass.send(:attr_accessor, :cron)
        klass.send(:attr_accessor, :cron_class)
      end

      def enqueue(options = {})
        self.cron = options[:cron] if options[:cron]
        self.cron_class = options[:cron_class] if options[:cron_class]
        super
      end

    end
  end
end
