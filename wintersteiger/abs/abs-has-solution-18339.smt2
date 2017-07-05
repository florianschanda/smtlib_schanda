(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7718581775898678554170828647329472005367279052734375p-945 {- 3476140200976599 -945 (-5.95776e-285)}
; -1.7718581775898678554170828647329472005367279052734375p-945 | == 1.7718581775898678554170828647329472005367279052734375p-945
; [HW: 1.7718581775898678554170828647329472005367279052734375p-945] 

; mpf : + 3476140200976599 -945
; mpfd: + 3476140200976599 -945 (5.95776e-285) class: Pos. norm. non-zero
; hwf : + 3476140200976599 -945 (5.95776e-285) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001001110 #b1100010110011000011111110101110111100110000011010111)))
(assert (= r (fp #b0 #b00001001110 #b1100010110011000011111110101110111100110000011010111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
