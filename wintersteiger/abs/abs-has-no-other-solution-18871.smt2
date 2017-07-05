(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.430148769536150776815475182957015931606292724609375p910 {+ 1937217838196886 910 (1.23788e+274)}
; 1.430148769536150776815475182957015931606292724609375p910 | == 1.430148769536150776815475182957015931606292724609375p910
; [HW: 1.430148769536150776815475182957015931606292724609375p910] 

; mpf : + 1937217838196886 910
; mpfd: + 1937217838196886 910 (1.23788e+274) class: Pos. norm. non-zero
; hwf : + 1937217838196886 910 (1.23788e+274) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110001101 #b0110111000011110001110101101000110010010100010010110)))
(assert (= r (fp #b0 #b11110001101 #b0110111000011110001110101101000110010010100010010110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
