(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5503598398102820254962352919392287731170654296875p307 {+ 2478600369489272 307 (4.04242e+092)}
; 1.5503598398102820254962352919392287731170654296875p307 S == 1.7608860495842890703244165706564672291278839111328125p153
; [HW: 1.7608860495842890703244165706564672291278839111328125p153] 

; mpf : + 3426726129379213 153
; mpfd: + 3426726129379213 153 (2.01058e+046) class: Pos. norm. non-zero
; hwf : + 3426726129379213 153 (2.01058e+046) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100110010 #b1000110011100100011000011110100100000100010101111000)))
(assert (= r (fp #b0 #b10010011000 #b1100001011001001011011011001101011110010011110001101)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
