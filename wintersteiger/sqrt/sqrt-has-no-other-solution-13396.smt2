(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0007511524575161132588618784211575984954833984375p-958 {+ 3382889927768 -958 (4.10762e-289)}
; 1.0007511524575161132588618784211575984954833984375p-958 S == 1.0003755057264827055263367583393119275569915771484375p-479
; [HW: 1.0003755057264827055263367583393119275569915771484375p-479] 

; mpf : + 1691127449863 -479
; mpfd: + 1691127449863 -479 (6.40907e-145) class: Pos. norm. non-zero
; hwf : + 1691127449863 -479 (6.40907e-145) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001000001 #b0000000000110001001110100011111100111101010001011000)))
(assert (= r (fp #b0 #b01000100000 #b0000000000011000100110111111000011010000100100000111)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
