(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9610860243045629136560137339984066784381866455078125 591 {+ 4328346660929021 591 (1.58937e+178)}
; 1.9610860243045629136560137339984066784381866455078125 591 I == 1.9610860243045629136560137339984066784381866455078125 591
; [HW: 1.9610860243045629136560137339984066784381866455078125 591] 

; mpf : + 4328346660929021 591
; mpfd: + 4328346660929021 591 (1.58937e+178) class: Pos. norm. non-zero
; hwf : + 4328346660929021 591 (1.58937e+178) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001001110 #b1111011000001001101110111101001100000111110111111101)))
(assert (= r (fp #b0 #b11001001110 #b1111011000001001101110111101001100000111110111111101)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
