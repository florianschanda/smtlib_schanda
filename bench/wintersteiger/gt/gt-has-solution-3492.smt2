(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.15960358557135112533842402626760303974151611328125p563 {+ 718790648506132 563 (3.50104e+169)}
; Y = 1.995312521005770722837269204319454729557037353515625p-826 {+ 4482489098718778 -826 (4.45897e-249)}
; 1.15960358557135112533842402626760303974151611328125p563 > 1.995312521005770722837269204319454729557037353515625p-826 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000110010 #b0010100011011011110001111101010001011010011100010100)))
(assert (= y (fp #b0 #b00011000101 #b1111111011001100110011010010011100000100111000111010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
