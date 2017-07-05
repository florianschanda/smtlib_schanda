(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7730626306047359008744024322368204593658447265625p336 {- 3481564575125544 336 (-2.482e+101)}
; -1.7730626306047359008744024322368204593658447265625p336 | == 1.7730626306047359008744024322368204593658447265625p336
; [HW: 1.7730626306047359008744024322368204593658447265625p336] 

; mpf : + 3481564575125544 336
; mpfd: + 3481564575125544 336 (2.482e+101) class: Pos. norm. non-zero
; hwf : + 3481564575125544 336 (2.482e+101) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101001111 #b1100010111100111011011101011110000110101000000101000)))
(assert (= r (fp #b0 #b10101001111 #b1100010111100111011011101011110000110101000000101000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
