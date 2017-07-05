(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8051869615971283256072865697205998003482818603515625p290 {- 3626239700212409 290 (-3.59105e+087)}
; Y = -1.082568394208774265052852570079267024993896484375p139 {- 371854989391216 139 (-7.5444e+041)}
; -1.8051869615971283256072865697205998003482818603515625p290 % -1.082568394208774265052852570079267024993896484375p139 == -1.1143233257812283909515826962888240814208984375p138
; [HW: -1.1143233257812283909515826962888240814208984375p138] 

; mpf : - 514866487388096 138
; mpfd: - 514866487388096 138 (-3.88285e+041) class: Neg. norm. non-zero
; hwf : - 514866487388096 138 (-3.88285e+041) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100100001 #b1100111000100000101110111001001100111001101010111001)))
(assert (= y (fp #b1 #b10010001010 #b0001010100100011001100111100100011001111010101110000)))
(assert (= r (fp #b0 #b10010001001 #x0d021c7038320)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
