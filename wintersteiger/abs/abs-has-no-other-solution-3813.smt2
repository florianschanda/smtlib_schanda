(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7226338901857827234920250702998600900173187255859375p-757 {- 3254453718565983 -757 (-2.27241e-228)}
; -1.7226338901857827234920250702998600900173187255859375p-757 | == 1.7226338901857827234920250702998600900173187255859375p-757
; [HW: 1.7226338901857827234920250702998600900173187255859375p-757] 

; mpf : + 3254453718565983 -757
; mpfd: + 3254453718565983 -757 (2.27241e-228) class: Pos. norm. non-zero
; hwf : + 3254453718565983 -757 (2.27241e-228) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100001010 #b1011100011111110100010001101110101010100010001011111)))
(assert (= r (fp #b0 #b00100001010 #b1011100011111110100010001101110101010100010001011111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
