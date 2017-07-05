(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.083699679658996384290503556258045136928558349609375p-530 {- 376949846123286 -530 (-3.08327e-160)}
; -1.083699679658996384290503556258045136928558349609375p-530 | == 1.083699679658996384290503556258045136928558349609375p-530
; [HW: 1.083699679658996384290503556258045136928558349609375p-530] 

; mpf : + 376949846123286 -530
; mpfd: + 376949846123286 -530 (3.08327e-160) class: Pos. norm. non-zero
; hwf : + 376949846123286 -530 (3.08327e-160) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111101101 #b0001010101101101010101111001101011010010001100010110)))
(assert (= r (fp #b0 #b00111101101 #b0001010101101101010101111001101011010010001100010110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
