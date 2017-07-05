(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4825818645244128735072308700182475149631500244140625p-416 {+ 2173355505247905 -416 (8.76073e-126)}
; Y = -1.7802490302125513199626993809943087399005889892578125p-621 {- 3513929241721437 -621 (-2.04575e-187)}
; 1.4825818645244128735072308700182475149631500244140625p-416 = -1.7802490302125513199626993809943087399005889892578125p-621 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001011111 #b0111101110001010011111000010110111000110011010100001)))
(assert (= y (fp #b1 #b00110010010 #b1100011110111110011001101000001101111111101001011101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
