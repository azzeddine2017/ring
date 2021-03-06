# Form/Window View - Generated Source Code File 
# Generated by the Ring 1.13 Form Designer
# Date : 30/06/2020
# Time : 23:52:17

Load "stdlibcore.ring"
Load "guilib.ring"

import System.GUI

if IsMainSourceFile() { 
	new App {
		StyleFusion()
		new fontappView { win.show() } 
		exec()
	}
}

class fontappView from WindowsViewParent
	win = new MainWindow() { 
		move(42,60)
		resize(400,400)
		setWindowTitle("RingQt for WebAssembly - Select Font")
		setstylesheet("background-color:#b7ff43;") 
		Button1 = new pushbutton(win) {
			move(116,174)
			resize(137,49)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial,14,-1,5,50,0,0,0,0,0,Regular")
			setfont(oFont)
			oFont.delete()
			setText("Select Font")
			setClickEvent(Method(:selectfont))
			setBtnImage(Button1,"")
			
		}
		Label1 = new label(win) {
			move(76,52)
			resize(235,54)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("MS Shell Dlg 2,22,-1,5,50,0,0,0,0,0,Regular")
			setfont(oFont)
			oFont.delete()
			setText("Hello, World!")
			setAlignment(Qt_AlignLeft |  Qt_AlignVCenter)
		}
		Layout1 = new QVBoxLayout() {
			AddWidget(Label1)
			AddWidget(Button1)
			
		}

		oMWLayoutWidget = new qWidget() { setLayout(Layout1) }
		setCentralWidget(oMWLayoutWidget) 
	}

# End of the Generated Source Code File...