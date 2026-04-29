(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.086167737650882703093202508171088993549346923828125p514 {- 388064991175874 514 (-5.82525e+154)}
; Y = -1.6717812462795202943510730619891546666622161865234375p450 {- 3025433770418935 450 (-4.86046e+135)}
; -1.086167737650882703093202508171088993549346923828125p514 = -1.6717812462795202943510730619891546666622161865234375p450 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000000001 #b0001011000001111000101101011111100101110010011000010)))
(assert (= y (fp #b1 #b10111000001 #b1010101111111001110110110001001011010110001011110111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
