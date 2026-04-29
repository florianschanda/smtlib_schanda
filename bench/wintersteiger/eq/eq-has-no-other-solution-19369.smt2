(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.18550542959097438000526381074450910091400146484375p-267 {+ 835442183581116 -267 (4.99913e-081)}
; Y = -1.69920546476688816284195127082057297229766845703125p-350 {- 3148941470579572 -350 (-7.40879e-106)}
; 1.18550542959097438000526381074450910091400146484375p-267 = -1.69920546476688816284195127082057297229766845703125p-350 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011110100 #b0010111101111101010010001010100101010010110110111100)))
(assert (= y (fp #b1 #b01010100001 #b1011001011111111001000010001110001011011101101110100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
