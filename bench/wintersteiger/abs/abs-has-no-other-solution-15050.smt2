(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9600298337831905115535846562124788761138916015625p318 {+ 4323590001690536 318 (1.04665e+096)}
; 1.9600298337831905115535846562124788761138916015625p318 | == 1.9600298337831905115535846562124788761138916015625p318
; [HW: 1.9600298337831905115535846562124788761138916015625p318] 

; mpf : + 4323590001690536 318
; mpfd: + 4323590001690536 318 (1.04665e+096) class: Pos. norm. non-zero
; hwf : + 4323590001690536 318 (1.04665e+096) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100111101 #b1111010111000100100000111110001101001000011110101000)))
(assert (= r (fp #b0 #b10100111101 #b1111010111000100100000111110001101001000011110101000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
