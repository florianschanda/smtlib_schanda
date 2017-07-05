(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.68778179346093626378433327772654592990875244140625p801 {- 3097493828742884 801 (-2.25083e+241)}
; Y = 1.9196998600247521249428928058478049933910369873046875p-761 {+ 4141959946900171 -761 (1.58273e-229)}
; -1.68778179346093626378433327772654592990875244140625p801 = 1.9196998600247521249428928058478049933910369873046875p-761 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100100000 #b1011000000010010011101111011010110110010111011100100)))
(assert (= y (fp #b0 #b00100000110 #b1110101101110001011100110011010011110001001011001011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
