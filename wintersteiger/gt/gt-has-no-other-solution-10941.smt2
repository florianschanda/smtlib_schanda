(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1783590650090631779534078305005095899105072021484375p-585 {+ 803257818712967 -585 (9.3053e-177)}
; Y = -1.094337184723463085589401089237071573734283447265625p-358 {- 424856909967770 -358 (-1.86386e-108)}
; 1.1783590650090631779534078305005095899105072021484375p-585 > -1.094337184723463085589401089237071573734283447265625p-358 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110110110 #b0010110110101000111100001000111100101000101110000111)))
(assert (= y (fp #b1 #b01010011001 #b0001100000100110011110110101001100101111000110011010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
