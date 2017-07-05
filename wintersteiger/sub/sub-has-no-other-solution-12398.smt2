(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4398099353166451397356695451890118420124053955078125p-492 {+ 1980727860805885 -492 (1.12602e-148)}
; Y = -1.765360410348571829075581263168714940547943115234375p-472 {- 3446876858849958 -472 (-1.44769e-142)}
; 1.4398099353166451397356695451890118420124053955078125p-492 - -1.765360410348571829075581263168714940547943115234375p-472 == 1.7653617834583277268478695987141691148281097412109375p-472
; [HW: 1.7653617834583277268478695987141691148281097412109375p-472] 

; mpf : + 3446883042786543 -472
; mpfd: + 3446883042786543 -472 (1.44769e-142) class: Pos. norm. non-zero
; hwf : + 3446883042786543 -472 (1.44769e-142) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000010011 #b0111000010010111011000100100100010100100000011111101)))
(assert (= y (fp #b1 #b01000100111 #b1100001111101110101010001110110000011001101010100110)))
(assert (= r (fp #b0 #b01000100111 #b1100001111101110101111111111010110001111110011101111)))
(assert  (not (= (fp.sub roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
