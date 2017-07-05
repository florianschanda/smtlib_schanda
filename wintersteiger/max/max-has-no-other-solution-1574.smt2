(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1647062838909343351900815832777880132198333740234375p-860 {- 741771158756791 -860 (-1.51503e-259)}
; Y = -1.32578947402277957934302321518771350383758544921875p255 {- 1467225353810220 255 (-7.6758e+076)}
; -1.1647062838909343351900815832777880132198333740234375p-860 M -1.32578947402277957934302321518771350383758544921875p255 == -1.1647062838909343351900815832777880132198333740234375p-860
; [HW: -1.1647062838909343351900815832777880132198333740234375p-860] 

; mpf : - 741771158756791 -860
; mpfd: - 741771158756791 -860 (-1.51503e-259) class: Neg. norm. non-zero
; hwf : - 741771158756791 -860 (-1.51503e-259) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010100011 #b0010101000101010001100001110011011000001110110110111)))
(assert (= y (fp #b1 #b10011111110 #b0101001101100110111100000110000001001111000100101100)))
(assert (= r (fp #b1 #b00010100011 #b0010101000101010001100001110011011000001110110110111)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
