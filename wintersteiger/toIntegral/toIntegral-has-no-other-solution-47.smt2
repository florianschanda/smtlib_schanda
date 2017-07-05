(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.50258127323593004831536745768971741199493408203125 52 {+ 2263424834868724 52 (6.76702e+015)}
; 1.50258127323593004831536745768971741199493408203125 52 I == 1.50258127323593004831536745768971741199493408203125 52
; [HW: 1.50258127323593004831536745768971741199493408203125 52] 

; mpf : + 2263424834868724 52
; mpfd: + 2263424834868724 52 (6.76702e+015) class: Pos. norm. non-zero
; hwf : + 2263424834868724 52 (6.76702e+015) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000110011 #b1000000010101001001010101001010000100001010111110100)))
(assert (= r (fp #b0 #b10000110011 #b1000000010101001001010101001010000100001010111110100)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
