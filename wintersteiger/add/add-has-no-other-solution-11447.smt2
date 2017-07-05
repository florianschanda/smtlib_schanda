(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3917467378819610157592023824690841138362884521484375p-606 {- 1764270462748807 -606 (-5.24062e-183)}
; Y = -1.927481425189187635993448566296137869358062744140625p118 {- 4177005000875082 118 (-6.40516e+035)}
; -1.3917467378819610157592023824690841138362884521484375p-606 + -1.927481425189187635993448566296137869358062744140625p118 == -1.927481425189187635993448566296137869358062744140625p118
; [HW: -1.927481425189187635993448566296137869358062744140625p118] 

; mpf : - 4177005000875082 118
; mpfd: - 4177005000875082 118 (-6.40516e+035) class: Neg. norm. non-zero
; hwf : - 4177005000875082 118 (-6.40516e+035) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110100001 #b0110010001001001100000111010001110000100100010000111)))
(assert (= y (fp #b1 #b10001110101 #b1110110101101111011011000011010011010101110001001010)))
(assert (= r (fp #b1 #b10001110101 #b1110110101101111011011000011010011010101110001001010)))
(assert  (not (= (fp.add roundTowardZero x y) r)))
(check-sat)
(exit)
