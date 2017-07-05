(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7756180852055372110243069982971064746379852294921875p-802 {- 3493073319513475 -802 (-6.65722e-242)}
; Y = -1.7820140423012365005206447676755487918853759765625p-499 {- 3521878149506344 -499 (-1.08879e-150)}
; -1.7756180852055372110243069982971064746379852294921875p-802 < -1.7820140423012365005206447676755487918853759765625p-499 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011011101 #b1100011010001110111010000010011000100100110110000011)))
(assert (= y (fp #b1 #b01000001100 #b1100100000110010000100101000000010110010010100101000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
