(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.546454161463679977117635644390247762203216552734375p-790 {+ 2461010757942886 -790 (2.37487e-238)}
; Y = -1.1668104146504936213801784106181003153324127197265625p346 {- 751247321261481 346 (-1.67255e+104)}
; 1.546454161463679977117635644390247762203216552734375p-790 + -1.1668104146504936213801784106181003153324127197265625p346 == -1.1668104146504933993355734855867922306060791015625p346
; [HW: -1.1668104146504933993355734855867922306060791015625p346] 

; mpf : - 751247321261480 346
; mpfd: - 751247321261480 346 (-1.67255e+104) class: Neg. norm. non-zero
; hwf : - 751247321261480 346 (-1.67255e+104) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011101001 #b1000101111100100011010111000000000111111111001100110)))
(assert (= y (fp #b1 #b10101011001 #b0010101010110100000101100101101110001110010110101001)))
(assert (= r (fp #b1 #b10101011001 #b0010101010110100000101100101101110001110010110101000)))
(assert  (not (= (fp.add roundTowardPositive x y) r)))
(check-sat)
(exit)
