(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1055665659428479674630807494395412504673004150390625 86 {+ 475429547042993 86 (8.55391e+025)}
; 1.1055665659428479674630807494395412504673004150390625 86 I == 1.1055665659428479674630807494395412504673004150390625 86
; [HW: 1.1055665659428479674630807494395412504673004150390625 86] 

; mpf : + 475429547042993 86
; mpfd: + 475429547042993 86 (8.55391e+025) class: Pos. norm. non-zero
; hwf : + 475429547042993 86 (8.55391e+025) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001010101 #b0001101100000110011010010001010001000110100010110001)))
(assert (= r (fp #b0 #b10001010101 #b0001101100000110011010010001010001000110100010110001)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
