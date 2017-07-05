(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3454656183837843119732724517234601080417633056640625p314 {+ 1555838830222529 314 (4.49046e+094)}
; Y = -zero {- 0 -1023 (-0)}
; 1.3454656183837843119732724517234601080417633056640625p314 M -zero == 1.3454656183837843119732724517234601080417633056640625p314
; [HW: 1.3454656183837843119732724517234601080417633056640625p314] 

; mpf : + 1555838830222529 314
; mpfd: + 1555838830222529 314 (4.49046e+094) class: Pos. norm. non-zero
; hwf : + 1555838830222529 314 (4.49046e+094) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100111001 #b0101100001110000011011110100110011011001110011000001)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b0 #b10100111001 #b0101100001110000011011110100110011011001110011000001)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
