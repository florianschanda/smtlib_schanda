(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.56535889584116905126620622468180954456329345703125p-412 {- 2546150112640884 -412 (-1.47998e-124)}
; -1.56535889584116905126620622468180954456329345703125p-412 | == 1.56535889584116905126620622468180954456329345703125p-412
; [HW: 1.56535889584116905126620622468180954456329345703125p-412] 

; mpf : + 2546150112640884 -412
; mpfd: + 2546150112640884 -412 (1.47998e-124) class: Pos. norm. non-zero
; hwf : + 2546150112640884 -412 (1.47998e-124) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001100011 #b1001000010111011010111000101000000100011111101110100)))
(assert (= r (fp #b0 #b01001100011 #b1001000010111011010111000101000000100011111101110100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
