(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6172436646509777968816479187807999551296234130859375p-551 {+ 2779818338118943 -551 (2.19406e-166)}
; Y = 1.3491662650795479549969968502409756183624267578125p898 {+ 1572505061302600 898 (2.85103e+270)}
; 1.6172436646509777968816479187807999551296234130859375p-551 > 1.3491662650795479549969968502409756183624267578125p898 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111011000 #b1001111000000011101011100100100101010110110100011111)))
(assert (= y (fp #b0 #b11110000001 #b0101100101100010111101011101100101100010000101001000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
