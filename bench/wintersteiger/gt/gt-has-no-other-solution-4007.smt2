(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4719371595991719292584321010508574545383453369140625p-960 {+ 2125416016113121 -960 (1.51041e-289)}
; Y = -1.690971456284247498302875101217068731784820556640625p370 {- 3111858793045386 370 (-4.06663e+111)}
; 1.4719371595991719292584321010508574545383453369140625p-960 > -1.690971456284247498302875101217068731784820556640625p370 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000111111 #b0111100011010000110111111010101000111110110111100001)))
(assert (= y (fp #b1 #b10101110001 #b1011000011100011100000010101111100110101110110001010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
