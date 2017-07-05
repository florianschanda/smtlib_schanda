(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1799594557967620911398398675373755395412445068359375p710 {+ 810465338068095 710 (6.35571e+213)}
; Y = 1.862940911412790168100173104903660714626312255859375p-812 {+ 3886340367081398 -812 (6.82091e-245)}
; 1.1799594557967620911398398675373755395412445068359375p710 = 1.862940911412790168100173104903660714626312255859375p-812 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011000101 #b0010111000010001110100101010100101000000110001111111)))
(assert (= y (fp #b0 #b00011010011 #b1101110011101001101100100001000011100101111110110110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
