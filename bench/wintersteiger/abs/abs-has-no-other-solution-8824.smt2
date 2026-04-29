(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.796898992959250929146719499840401113033294677734375p819 {+ 3588914007743206 819 (6.28189e+246)}
; 1.796898992959250929146719499840401113033294677734375p819 | == 1.796898992959250929146719499840401113033294677734375p819
; [HW: 1.796898992959250929146719499840401113033294677734375p819] 

; mpf : + 3588914007743206 819
; mpfd: + 3588914007743206 819 (6.28189e+246) class: Pos. norm. non-zero
; hwf : + 3588914007743206 819 (6.28189e+246) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100110010 #b1100110000000001100100101000100011111001101011100110)))
(assert (= r (fp #b0 #b11100110010 #b1100110000000001100100101000100011111001101011100110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
