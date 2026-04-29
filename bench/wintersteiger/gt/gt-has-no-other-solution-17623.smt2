(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7340758620066314410479435537126846611499786376953125p364 {- 3305983778594741 364 (-6.51608e+109)}
; Y = -1.24724451747815212598879952565766870975494384765625p412 {- 1113490316784004 412 (-1.3192e+124)}
; -1.7340758620066314410479435537126846611499786376953125p364 > -1.24724451747815212598879952565766870975494384765625p412 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101101011 #b1011101111101100011001010100110000011001111110110101)))
(assert (= y (fp #b1 #b10110011011 #b0011111101001011011010101010110010101111000110000100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
