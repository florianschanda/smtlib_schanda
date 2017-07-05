(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.87962238574360807064067557803355157375335693359375p151 {- 3961467048661660 151 (-5.36537e+045)}
; Y = 1.118349237836027132431127029121853411197662353515625p218 {+ 532997583417914 218 (4.71104e+065)}
; -1.87962238574360807064067557803355157375335693359375p151 + 1.118349237836027132431127029121853411197662353515625p218 == 1.1183492378360269103865221040905453264713287353515625p218
; [HW: 1.1183492378360269103865221040905453264713287353515625p218] 

; mpf : + 532997583417913 218
; mpfd: + 532997583417913 218 (4.71104e+065) class: Pos. norm. non-zero
; hwf : + 532997583417913 218 (4.71104e+065) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010010110 #b1110000100101110111011101100001110011001001010011100)))
(assert (= y (fp #b0 #b10011011001 #b0001111001001100001000101011101000000011001000111010)))
(assert (= r (fp #b0 #b10011011001 #b0001111001001100001000101011101000000011001000111001)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)
