(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7395385620156218475784726251731626689434051513671875p588 {- 3330585592319667 588 (-1.76227e+177)}
; Y = 0.7888414901143263602278921098331920802593231201171875p-1022 {+ 3552626240933267 -1023 (1.75523e-308)}
; -1.7395385620156218475784726251731626689434051513671875p588 < 0.7888414901143263602278921098331920802593231201171875p-1022 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001001011 #b1011110101010010011001100011000111111100111010110011)))
(assert (= y (fp #b0 #b00000000000 #b1100100111110001100001000001000111000100110110010011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
