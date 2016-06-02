#!/Library/Frameworks/Python.framework/Versions/3.5/bin/python3

import tkinter

class mf_tk(tkinter.Tk):
    def __init__(self,parent):
        tkinter.Tk.__init__(self,parent)
        self.parent = parent
        self.initialize()

    def initialize(self):
        self.grid()

        self.entryVariable = tkinter.StringVar()
        self.entry = tkinter.Entry(self, textvariable=self.entryVariable)
        self.entry.grid(column=0,row=0,sticky='EW')
        self.entry.bind("<Return>", self.OnPressEnter)
        self.entryVariable.set(u"Enter text here")

        button = tkinter.Button(self,text=u"Click me!", command=self.onButtonClick)
        button.grid(column=1, row=0)

        self.labelVariable = tkinter.StringVar()
        label = tkinter.Label(self, anchor='w', fg='white', bg='blue',textvariable=self.labelVariable)
        label.grid(column=0,row=1,columnspan=2,sticky='EW')
        self.labelVariable.set(u"Hello")

        self.grid_columnconfigure(0,weight=1)
        self.resizable(True, False)
        self.update()
        self.geometry(self.geometry())
        self.entry.focus_set()
        self.entry.selection_range(0, tkinter.END)

    def onButtonClick(self):
        self.labelVariable.set(self.entryVariable.get() +" (You clicked the button)" )
        self.entry.focus_set()
        self.entry.selection_range(0, tkinter.END)
        # print("You clicked the button")

    def OnPressEnter(self,event):
        self.labelVariable.set(self.entryVariable.get() + " (You pressed enter)"  )
        self.entry.focus_set()
        self.entry.selection_range(0, tkinter.END)
        # print("You pressed enter!")

if __name__ == "__main__":
    app = mf_tk(None)
    app.title("Move Files")
    app.mainloop()

#top = tkinter.Tk()
# add widgets
#top.mainloop()
