# frozen_string_literal: true

module OpPrimer
  # @logical_path OpenProject/Primer
  class StatusButtonComponentPreview < ViewComponent::Preview
    # See the [component documentation](/lookbook/pages/components/status_button) for more details.
    # @display min_height 200px
    # @param readonly [Boolean]
    # @param disabled [Boolean]
    # @param size [Symbol] select [small, medium, large]
    def playground(readonly: false, disabled: false, size: :medium)
      status = OpPrimer::StatusButtonOption.new(name: "Open",
                                                tag: :a,
                                                content_arguments: {
                                                  classes: "__hl_inline_meeting_status_open"
                                                },
                                                href: "/some/test")
      items = [
        status,
        OpPrimer::StatusButtonOption.new(name: "Closed",
                                         tag: :a,
                                         content_arguments: {
                                           classes: "__hl_inline_meeting_status_closed"
                                         },
                                         href: "/some/other/action")
      ]
      component = OpPrimer::StatusButtonComponent.new(current_status: status,
                                                      items:,
                                                      readonly:,
                                                      disabled:,
                                                      button_arguments: {
                                                        title: "Edit",
                                                        size:,
                                                        classes: "__hl_background_meeting_status_open"
                                                      })

      render(component)
    end

    # See the [component documentation](/lookbook/pages/components/status_button) for more details.
    # @display min_height 200px
    def with_icon(size: :medium)
      status = OpPrimer::StatusButtonOption.new(name: "Open", icon: :unlock)

      items = [
        status,
        OpPrimer::StatusButtonOption.new(name: "Closed", icon: :lock)
      ]

      component = OpPrimer::StatusButtonComponent.new(current_status: status,
                                                      items: items,
                                                      readonly: false,
                                                      button_arguments: { size:, title: "foo" })

      render(component)
    end

    # See the [component documentation](/lookbook/pages/components/status_button) for more details.
    # @display min_height 200px
    def with_description(size: :medium)
      status = OpPrimer::StatusButtonOption.new(name: "Open",
                                                icon: :unlock,
                                                description: "The status is open")

      items = [
        status,
        OpPrimer::StatusButtonOption.new(name: "Closed",
                                         icon: :lock,
                                         description: "The status is closed")
      ]

      component = OpPrimer::StatusButtonComponent.new(current_status: status,
                                                      items: items,
                                                      readonly: false,
                                                      button_arguments: { size:, title: "foo" })

      render(component)
    end
  end
end
