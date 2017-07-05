(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.84739505378353374709377021645195782184600830078125p-757 {+ 3816328048455124 -757 (2.43699e-228)}
; Y = -1.8852092428031774762331451711361296474933624267578125p-732 {- 3986628016033309 -732 (-8.34455e-221)}
; 1.84739505378353374709377021645195782184600830078125p-757 = -1.8852092428031774762331451711361296474933624267578125p-732 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100001010 #b1101100011101110111000011101101011001010110111010100)))
(assert (= y (fp #b1 #b00100100011 #b1110001010011101000100101010101111110100111000011101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
