(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9701922961417992485877448416431434452533721923828125p529 {- 4369357663381933 529 (-3.46239e+159)}
; Y = -1.354270218321849572618020829395391047000885009765625p728 {- 1595491223222746 728 (-1.91224e+219)}
; -1.9701922961417992485877448416431434452533721923828125p529 / -1.354270218321849572618020829395391047000885009765625p728 == 1.4547999870979755332456306859967298805713653564453125p-199
; [HW: 1.4547999870979755332456306859967298805713653564453125p-199] 

; mpf : + 2048237052422549 -199
; mpfd: + 2048237052422549 -199 (1.81065e-060) class: Pos. norm. non-zero
; hwf : + 2048237052422549 -199 (1.81065e-060) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000010000 #b1111100001011110100001011011011011000010100110101101)))
(assert (= y (fp #b1 #b11011010111 #b0101101010110001011100111111100110100011100111011010)))
(assert (= r (fp #b0 #b01100111000 #b0111010001101101110001011001111011001110100110010101)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
