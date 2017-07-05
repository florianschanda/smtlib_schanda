(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5850751610427240567702256157645024359226226806640625 -882 {+ 2634944277255745 -882 (4.91579e-266)}
; 1.5850751610427240567702256157645024359226226806640625 -882 I == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010001101 #b1001010111000111011111000101101001100001011001000001)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
