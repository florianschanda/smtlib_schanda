(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.653048368734874262742096107103861868381500244140625p-506 {+ 2941068390089290 -506 (7.89056e-153)}
; 1.653048368734874262742096107103861868381500244140625p-506 | == 1.653048368734874262742096107103861868381500244140625p-506
; [HW: 1.653048368734874262742096107103861868381500244140625p-506] 

; mpf : + 2941068390089290 -506
; mpfd: + 2941068390089290 -506 (7.89056e-153) class: Pos. norm. non-zero
; hwf : + 2941068390089290 -506 (7.89056e-153) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000000101 #b1010011100101110001011011000101001101100001001001010)))
(assert (= r (fp #b0 #b01000000101 #b1010011100101110001011011000101001101100001001001010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
