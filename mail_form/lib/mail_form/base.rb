module MailForm
  class Base
    include ActiveModel::AttributeMethods # 1) attribute methods behavior
    attribute_method_prefix 'clear_' # 2) clear_ is attribute prefix

    # 1) Add the attribute suffix
    attribute_method_suffix '?'

    def self.attributes(*names)
      attr_accessor(*names)

      # 3) Ask to define the prefix methods for the given attributes names
      define_attribute_methods(names)
    end

    protected
    # 4) Since we declared a "clear_" prefix, it expects to have a "clear_attribute"
    # method defined, which receives an attribute
    # name and implements the clearing logic.
    def clear_attribute(attribute)
      send("#{attribute}=", nil)
    end

    # 2) Implement the logic required by the '?' suffix
    def attribute?(attribute)
      send(attribute).present?
    end

  end
end
