(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6303777899865747880170374628505669534206390380859375p-21 {- 2838969180086175 -21 (-7.77425e-007)}
; Y = -1.604821006247448611503614301909692585468292236328125p-857 {- 2723871658361858 -857 (-1.67001e-258)}
; Z = 1.6672560308175616849979405742487870156764984130859375p710 {+ 3005054011750687 710 (8.98047e+213)}
; -1.6303777899865747880170374628505669534206390380859375p-21 x -1.604821006247448611503614301909692585468292236328125p-857 1.6672560308175616849979405742487870156764984130859375p710 == 1.6672560308175616849979405742487870156764984130859375p710
; [HW: 1.6672560308175616849979405742487870156764984130859375p710] 

; mpf : + 3005054011750687 710
; mpfd: + 3005054011750687 710 (8.98047e+213) class: Pos. norm. non-zero
; hwf : + 3005054011750687 710 (8.98047e+213) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111101010 #b1010000101100000011100000101100000011101111110011111)))
(assert (= y (fp #b1 #b00010100110 #b1001101011010101100011001010100111000100010000000010)))
(assert (= z (fp #b0 #b11011000101 #b1010101011010001010010101000111001101011100100011111)))
(assert (= r (fp #b0 #b11011000101 #b1010101011010001010010101000111001101011100100011111)))
(assert  (not (= (fp.fma roundTowardZero x y z) r)))
(check-sat)
(exit)
