(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.972823867092007077417292748577892780303955078125p-400 {- 4381209205332688 -400 (-7.63994e-121)}
; Y = -1.439281893484338770150543496129103004932403564453125p806 {- 1978349771806674 806 (-6.14218e+242)}
; -1.972823867092007077417292748577892780303955078125p-400 = -1.439281893484338770150543496129103004932403564453125p806 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001101111 #b1111100100001010111111000010010111101101101011010000)))
(assert (= y (fp #b1 #b11100100101 #b0111000001110100110001110011011000111101011111010010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
