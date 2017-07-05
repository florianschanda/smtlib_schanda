(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6929727472545110789070577084203250706195831298828125p-207 {+ 3120871806313325 -207 (8.23078e-063)}
; Y = -1.2401886763816170056173859848058782517910003662109375p-412 {- 1081713633450863 -412 (-1.17255e-124)}
; 1.6929727472545110789070577084203250706195831298828125p-207 > -1.2401886763816170056173859848058782517910003662109375p-412 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100110000 #b1011000101100110101010010111011001111010001101101101)))
(assert (= y (fp #b1 #b01001100011 #b0011110101111101000000010100110111101101101101101111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
