(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.338379683040113121705871890299022197723388671875p672 {+ 1523926614449200 672 (2.62263e+202)}
; Y = 1.7972171442217110826078396712546236813068389892578125p-868 {+ 3590346833650269 -868 (9.13197e-262)}
; 1.338379683040113121705871890299022197723388671875p672 = 1.7972171442217110826078396712546236813068389892578125p-868 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010011111 #b0101011010100000000011010000100001001001110000110000)))
(assert (= y (fp #b0 #b00010011011 #b1100110000010110011011000011101000111110001001011101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
