(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5142983187986553961223989972495473921298980712890625p579 {+ 2316193716898897 579 (2.99626e+174)}
; 1.5142983187986553961223989972495473921298980712890625p579 | == 1.5142983187986553961223989972495473921298980712890625p579
; [HW: 1.5142983187986553961223989972495473921298980712890625p579] 

; mpf : + 2316193716898897 579
; mpfd: + 2316193716898897 579 (2.99626e+174) class: Pos. norm. non-zero
; hwf : + 2316193716898897 579 (2.99626e+174) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001000010 #b1000001110101001000011011111101110100000110001010001)))
(assert (= r (fp #b0 #b11001000010 #b1000001110101001000011011111101110100000110001010001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
