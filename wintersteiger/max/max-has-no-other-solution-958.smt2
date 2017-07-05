(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.67715507148405951198810726054944097995758056640625p450 {- 3049635327607652 450 (-4.87609e+135)}
; Y = -1.7810289661606031330620680819265544414520263671875p744 {- 3517441760966456 744 (-1.64812e+224)}
; -1.67715507148405951198810726054944097995758056640625p450 M -1.7810289661606031330620680819265544414520263671875p744 == -1.67715507148405951198810726054944097995758056640625p450
; [HW: -1.67715507148405951198810726054944097995758056640625p450] 

; mpf : - 3049635327607652 450
; mpfd: - 3049635327607652 450 (-4.87609e+135) class: Neg. norm. non-zero
; hwf : - 3049635327607652 450 (-4.87609e+135) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111000001 #b1010110101011010000010001110011001011000001101100100)))
(assert (= y (fp #b1 #b11011100111 #b1100011111110001100000111010101011100011011100111000)))
(assert (= r (fp #b1 #b10111000001 #b1010110101011010000010001110011001011000001101100100)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
