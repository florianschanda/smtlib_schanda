(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.06461796521226848000196696375496685504913330078125p-992 {+ 291013444051412 -992 (2.54354e-299)}
; Y = 1.73496761262449883389535898459143936634063720703125p951 {+ 3309999866345076 951 (3.30231e+286)}
; 1.06461796521226848000196696375496685504913330078125p-992 > 1.73496761262449883389535898459143936634063720703125p951 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000011111 #b0001000010001010110011011000111101010010000111010100)))
(assert (= y (fp #b0 #b11110110110 #b1011110000100110110101100110001111010111011001110100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
