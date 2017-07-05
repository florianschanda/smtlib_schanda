(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7856145633033786435106549106421880424022674560546875p-492 {+ 3538093454549931 -492 (1.39646e-148)}
; Y = 1.7609511697654325335093972171307541429996490478515625p-882 {+ 3427019404602745 -882 (5.46124e-266)}
; 1.7856145633033786435106549106421880424022674560546875p-492 M 1.7609511697654325335093972171307541429996490478515625p-882 == 1.7856145633033786435106549106421880424022674560546875p-492
; [HW: 1.7856145633033786435106549106421880424022674560546875p-492] 

; mpf : + 3538093454549931 -492
; mpfd: + 3538093454549931 -492 (1.39646e-148) class: Pos. norm. non-zero
; hwf : + 3538093454549931 -492 (1.39646e-148) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000010011 #b1100100100011110000010010011100010100110001110101011)))
(assert (= y (fp #b0 #b00010001101 #b1100001011001101101100100010001111111110110101111001)))
(assert (= r (fp #b0 #b01000010011 #b1100100100011110000010010011100010100110001110101011)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
