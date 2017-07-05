(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.81843591408863236580373268225230276584625244140625p-843 {+ 3685907677716196 -843 (3.10036e-254)}
; 1.81843591408863236580373268225230276584625244140625p-843 | == 1.81843591408863236580373268225230276584625244140625p-843
; [HW: 1.81843591408863236580373268225230276584625244140625p-843] 

; mpf : + 3685907677716196 -843
; mpfd: + 3685907677716196 -843 (3.10036e-254) class: Pos. norm. non-zero
; hwf : + 3685907677716196 -843 (3.10036e-254) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010110100 #b1101000110000101000001000001110011100001111011100100)))
(assert (= r (fp #b0 #b00010110100 #b1101000110000101000001000001110011100001111011100100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
