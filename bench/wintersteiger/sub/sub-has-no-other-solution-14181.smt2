(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.807829096437767901761617395095527172088623046875p280 {+ 3638138817696176 280 (3.51201e+084)}
; Y = +zero {+ 0 -1023 (0)}
; 1.807829096437767901761617395095527172088623046875p280 - +zero == 1.807829096437767901761617395095527172088623046875p280
; [HW: 1.807829096437767901761617395095527172088623046875p280] 

; mpf : + 3638138817696176 280
; mpfd: + 3638138817696176 280 (3.51201e+084) class: Pos. norm. non-zero
; hwf : + 3638138817696176 280 (3.51201e+084) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100010111 #b1100111011001101111000110011110111110101000110110000)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b0 #b10100010111 #b1100111011001101111000110011110111110101000110110000)))
(assert  (not (= (fp.sub roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
