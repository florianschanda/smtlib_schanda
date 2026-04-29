(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6090284738805447073417553838226012885570526123046875 582 {+ 2742820408026443 582 (2.54695e+175)}
; 1.6090284738805447073417553838226012885570526123046875 582 I == 1.6090284738805447073417553838226012885570526123046875 582
; [HW: 1.6090284738805447073417553838226012885570526123046875 582] 

; mpf : + 2742820408026443 582
; mpfd: + 2742820408026443 582 (2.54695e+175) class: Pos. norm. non-zero
; hwf : + 2742820408026443 582 (2.54695e+175) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001000101 #b1001101111101001010010100100000110100110010101001011)))
(assert (= r (fp #b0 #b11001000101 #b1001101111101001010010100100000110100110010101001011)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
