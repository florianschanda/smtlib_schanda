(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3798554142222292373531900011585094034671783447265625p274 {+ 1710716701945897 274 (4.18844e+082)}
; 1.3798554142222292373531900011585094034671783447265625p274 | == 1.3798554142222292373531900011585094034671783447265625p274
; [HW: 1.3798554142222292373531900011585094034671783447265625p274] 

; mpf : + 1710716701945897 274
; mpfd: + 1710716701945897 274 (4.18844e+082) class: Pos. norm. non-zero
; hwf : + 1710716701945897 274 (4.18844e+082) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100010001 #b0110000100111110001101000101010101001011000000101001)))
(assert (= r (fp #b0 #b10100010001 #b0110000100111110001101000101010101001011000000101001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
