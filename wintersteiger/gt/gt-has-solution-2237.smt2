(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.667791098683558903559287500684149563312530517578125p-431 {+ 3007463743192610 -431 (3.00755e-130)}
; Y = 1.5716054294441412775285016323323361575603485107421875p-113 {+ 2574281999047587 -113 (1.5134e-034)}
; 1.667791098683558903559287500684149563312530517578125p-431 > 1.5716054294441412775285016323323361575603485107421875p-113 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001010000 #b1010101011110100010110111000000101100111111000100010)))
(assert (= y (fp #b0 #b01110001110 #b1001001001010100101110111100000110101101101110100011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
