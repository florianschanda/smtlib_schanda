(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.25725320857174782673837398760952055454254150390625p296 {- 1158565454263588 296 (-1.60067e+089)}
; -1.25725320857174782673837398760952055454254150390625p296 | == 1.25725320857174782673837398760952055454254150390625p296
; [HW: 1.25725320857174782673837398760952055454254150390625p296] 

; mpf : + 1158565454263588 296
; mpfd: + 1158565454263588 296 (1.60067e+089) class: Pos. norm. non-zero
; hwf : + 1158565454263588 296 (1.60067e+089) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100100111 #b0100000111011011010110001010010110011011010100100100)))
(assert (= r (fp #b0 #b10100100111 #b0100000111011011010110001010010110011011010100100100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
