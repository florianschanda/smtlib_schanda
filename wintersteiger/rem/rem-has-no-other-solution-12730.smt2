(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.115514773647986235260987086803652346134185791015625p-3 {- 520232291556858 -3 (-0.139439)}
; Y = -1.245708679854891531846305952058173716068267822265625p-803 {- 1106573519036186 -803 (-2.33523e-242)}
; -1.115514773647986235260987086803652346134185791015625p-3 % -1.245708679854891531846305952058173716068267822265625p-803 == -1.6617394406991063959821985918097198009490966796875p-805
; [HW: -1.6617394406991063959821985918097198009490966796875p-805] 

; mpf : - 2980209498548856 -805
; mpfd: - 2980209498548856 -805 (-7.78783e-243) class: Neg. norm. non-zero
; hwf : - 2980209498548856 -805 (-7.78783e-243) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111111100 #b0001110110010010011000000100111100000101110111111010)))
(assert (= y (fp #b1 #b00011011100 #b0011111011100110110000111001100001010001111100011010)))
(assert (= r (fp #b1 #b00011011010 #xa967c18846a78)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
