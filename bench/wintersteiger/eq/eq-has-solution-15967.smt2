(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.119022090413403613951004444970749318599700927734375p194 {+ 536027842034662 194 (2.80969e+058)}
; Y = 1.5809041774997165674676580238156020641326904296875p790 {+ 2616159837325688 790 (1.02944e+238)}
; 1.119022090413403613951004444970749318599700927734375p194 = 1.5809041774997165674676580238156020641326904296875p790 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011000001 #b0001111001111000001110110101000111010011101111100110)))
(assert (= y (fp #b0 #b11100010101 #b1001010010110110001000101101110001111000100101111000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
