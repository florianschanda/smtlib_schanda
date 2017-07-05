(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0024730427642738472826522411196492612361907958984375p-810 {+ 11137594471655 -810 (1.46817e-244)}
; Y = -zero {- 0 -1023 (-0)}
; 1.0024730427642738472826522411196492612361907958984375p-810 % -zero == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011010101 #b0000000010100010000100101100010111001011010011100111)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (_ NaN 11 53)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
