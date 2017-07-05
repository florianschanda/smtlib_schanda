(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.829184101314945021243829614832065999507904052734375p-480 {+ 3734313209703526 -480 (5.85949e-145)}
; 1.829184101314945021243829614832065999507904052734375p-480 S == 1.3524733273950155787446192334755323827266693115234375p-240
; [HW: 1.3524733273950155787446192334755323827266693115234375p-240] 

; mpf : + 1587398745914231 -240
; mpfd: + 1587398745914231 -240 (7.65473e-073) class: Pos. norm. non-zero
; hwf : + 1587398745914231 -240 (7.65473e-073) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000011111 #b1101010001000101011010001100010110000010110001100110)))
(assert (= r (fp #b0 #b01100001111 #b0101101000111011101100010010010111011111101101110111)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
