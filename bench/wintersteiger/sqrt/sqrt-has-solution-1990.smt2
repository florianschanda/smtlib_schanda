(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.17086715205093572222949660499580204486846923828125p-229 {+ 769517242306452 -229 (1.35718e-069)}
; 1.17086715205093572222949660499580204486846923828125p-229 S == 1.5302726241104462889808246472966857254505157470703125p-115
; [HW: 1.5302726241104462889808246472966857254505157470703125p-115] 

; mpf : + 2388135592348581 -115
; mpfd: + 2388135592348581 -115 (3.684e-035) class: Pos. norm. non-zero
; hwf : + 2388135592348581 -115 (3.684e-035) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100011010 #b0010101110111101111100110001111000000100111110010100)))
(assert (= r (fp #b0 #b01110001100 #b1000011110111111111100100101101010000100101110100101)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
