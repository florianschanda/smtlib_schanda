(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1746924203439641498647461048676632344722747802734375p-265 {+ 786744719165527 -265 (1.98141e-080)}
; Y = 1.065954691952981203684203137527219951152801513671875p-113 {+ 297033526102782 -113 (1.02648e-034)}
; 1.1746924203439641498647461048676632344722747802734375p-265 = 1.065954691952981203684203137527219951152801513671875p-113 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011110110 #b0010110010111000101001000111100000111100100001010111)))
(assert (= y (fp #b0 #b01110001110 #b0001000011100010011010000001110011110100101011111110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
