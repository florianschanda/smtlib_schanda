(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5833594406111328733999243922880850732326507568359375p-605 {+ 2627217359359359 -605 (1.19243e-182)}
; 1.5833594406111328733999243922880850732326507568359375p-605 | == 1.5833594406111328733999243922880850732326507568359375p-605
; [HW: 1.5833594406111328733999243922880850732326507568359375p-605] 

; mpf : + 2627217359359359 -605
; mpfd: + 2627217359359359 -605 (1.19243e-182) class: Pos. norm. non-zero
; hwf : + 2627217359359359 -605 (1.19243e-182) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110100010 #b1001010101010111000010110101011100111100110101111111)))
(assert (= r (fp #b0 #b00110100010 #b1001010101010111000010110101011100111100110101111111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
