(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.50419694529172520702786641777493059635162353515625p332 {+ 2270701174937156 332 (1.31602e+100)}
; 1.50419694529172520702786641777493059635162353515625p332 | == 1.50419694529172520702786641777493059635162353515625p332
; [HW: 1.50419694529172520702786641777493059635162353515625p332] 

; mpf : + 2270701174937156 332
; mpfd: + 2270701174937156 332 (1.31602e+100) class: Pos. norm. non-zero
; hwf : + 2270701174937156 332 (1.31602e+100) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101001011 #b1000000100010011000011010000111011000101011001000100)))
(assert (= r (fp #b0 #b10101001011 #b1000000100010011000011010000111011000101011001000100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
