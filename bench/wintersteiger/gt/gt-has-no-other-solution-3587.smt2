(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8871656940396916990465570052037946879863739013671875p-666 {+ 3995439089093043 -666 (6.16358e-201)}
; Y = -1.1975482860941808471721969908685423433780670166015625p-263 {- 889678387641433 -263 (-8.07987e-080)}
; 1.8871656940396916990465570052037946879863739013671875p-666 > -1.1975482860941808471721969908685423433780670166015625p-263 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101100101 #b1110001100011101010010100111101000001000100110110011)))
(assert (= y (fp #b1 #b01011111000 #b0011001010010010100001100100010000100111110001011001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
