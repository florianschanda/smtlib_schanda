(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9297555360490890041802458654274232685565948486328125p-33 {- 4187246685696333 -33 (-2.24653e-010)}
; Y = -1.238070933869911183222711770213209092617034912109375p-876 {- 1072176169064278 -876 (-2.45736e-264)}
; -1.9297555360490890041802458654274232685565948486328125p-33 > -1.238070933869911183222711770213209092617034912109375p-876 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111011110 #b1110111000000100011101010111010010011011000101001101)))
(assert (= y (fp #b1 #b00010010011 #b0011110011110010001101110111101100011001011101010110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
