(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.148178786326543132645383593626320362091064453125p738 {+ 667337926884432 738 (1.66015e+222)}
; 1.148178786326543132645383593626320362091064453125p738 | == 1.148178786326543132645383593626320362091064453125p738
; [HW: 1.148178786326543132645383593626320362091064453125p738] 

; mpf : + 667337926884432 738
; mpfd: + 667337926884432 738 (1.66015e+222) class: Pos. norm. non-zero
; hwf : + 667337926884432 738 (1.66015e+222) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011100001 #b0010010111101111000010111000000100111011110001010000)))
(assert (= r (fp #b0 #b11011100001 #b0010010111101111000010111000000100111011110001010000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
