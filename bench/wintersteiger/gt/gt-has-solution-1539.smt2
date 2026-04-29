(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.132078282863777207722932871547527611255645751953125p386 {+ 594827705489042 386 (1.78425e+116)}
; Y = 1.6350084373011715133117149889585562050342559814453125p584 {+ 2859823761606677 584 (1.03523e+176)}
; 1.132078282863777207722932871547527611255645751953125p386 > 1.6350084373011715133117149889585562050342559814453125p584 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110000001 #b0010000111001111111000011110000101101001011010010010)))
(assert (= y (fp #b0 #b11001000111 #b1010001010001111111010011011011011100100100000010101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
