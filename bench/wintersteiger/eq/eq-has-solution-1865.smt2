(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4644939105600827122799501012195833027362823486328125p-472 {+ 2091894602514253 -472 (1.20096e-142)}
; Y = -1.5705145096416301964126205348293296992778778076171875p-257 {- 2569368933031507 -257 (-6.78161e-078)}
; 1.4644939105600827122799501012195833027362823486328125p-472 = -1.5705145096416301964126205348293296992778778076171875p-257 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000100111 #b0111011011101001000100101010101100001011111101001101)))
(assert (= y (fp #b1 #b01011111110 #b1001001000001101001111010010100011001101111001010011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
