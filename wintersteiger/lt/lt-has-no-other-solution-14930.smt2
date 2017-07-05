(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.040798733843675716315146928536705672740936279296875p906 {+ 183741162535566 906 (5.63045e+272)}
; Y = 1.66552965226886140470696773263625800609588623046875p-423 {+ 2997279093962060 -423 (7.6889e-128)}
; 1.040798733843675716315146928536705672740936279296875p906 < 1.66552965226886140470696773263625800609588623046875p-423 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110001001 #b0000101001110001110010010010101110010011101010001110)))
(assert (= y (fp #b0 #b01001011000 #b1010101001100000001001101011101100000011010101001100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
