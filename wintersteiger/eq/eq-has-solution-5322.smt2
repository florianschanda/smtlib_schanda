(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9086993540114163270260405624867416918277740478515625p456 {- 4092418072117625 456 (-3.55153e+137)}
; Y = 1.008530380895308553590439260005950927734375p12 {+ 38417420221440 12 (4130.94)}
; -1.9086993540114163270260405624867416918277740478515625p456 = 1.008530380895308553590439260005950927734375p12 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111000111 #b1110100010100000100001010101011101100000000101111001)))
(assert (= y (fp #b0 #b10000001011 #b0000001000101111000011000000101011110111110000000000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
