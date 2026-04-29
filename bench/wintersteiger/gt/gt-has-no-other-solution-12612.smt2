(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5465022302403281795335487913689576089382171630859375p524 {+ 2461227240467487 524 (8.49314e+157)}
; Y = -1.564519223836951855588495163829065859317779541015625p819 {- 2542368566115578 819 (-5.4695e+246)}
; 1.5465022302403281795335487913689576089382171630859375p524 > -1.564519223836951855588495163829065859317779541015625p819 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000001011 #b1000101111100111100100011111011000010010110000011111)))
(assert (= y (fp #b1 #b11100110010 #b1001000010000100010101001111010001010111110011111010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
