function DialogueManager()
{
    return {
        queue: [],
        current: noone,

        add: function(_text, _speed)
        {
            array_push(self.queue, TextTyper(_text, _speed));
        },

        next: function()
        {
            if (array_length(self.queue) > 0)
            {
                self.current = array_shift(self.queue);
            }
            else
            {
                self.current = noone;
            }
        },

        update: function()
        {
            if (self.current == noone)
            {
                self.next();
                return;
            }

            self.current.update();

            if (self.current.finished && Input_IsPressed(INPUT.CONFIRM))
            {
                self.next();
            }
        },

        draw: function()
        {
            if (self.current == noone) exit;

            draw_text(50, 50, self.current.get_text());
        }
    };
}