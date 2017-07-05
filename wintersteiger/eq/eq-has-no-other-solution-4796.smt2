(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4574604247377196397650322978734038770198822021484375p931 {+ 2060218598385543 931 (2.64559e+280)}
; Y = -1.5500021883677581602256623227731324732303619384765625p-333 {- 2476989650585993 -333 (-8.85816e-101)}
; 1.4574604247377196397650322978734038770198822021484375p931 = -1.5500021883677581602256623227731324732303619384765625p-333 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110100010 #b0111010100011100001000000101101101110110011110000111)))
(assert (= y (fp #b1 #b01010110010 #b1000110011001100111100011000001111000100100110001001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
