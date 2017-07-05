(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6608518617105374470810374987195245921611785888671875p160 {- 2976212198146675 160 (-2.42734e+048)}
; Y = 1.3586608494061473972891462835832498967647552490234375p-323 {+ 1615264867737911 -323 (7.95101e-098)}
; -1.6608518617105374470810374987195245921611785888671875p160 = 1.3586608494061473972891462835832498967647552490234375p-323 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010011111 #b1010100100101101100101100110110110001100001001110011)))
(assert (= y (fp #b0 #b01010111100 #b0101101111010001001100101000101010001110000100110111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
