(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.522357908492083300444619453628547489643096923828125p273 {+ 2352490882038978 273 (2.3105e+082)}
; Y = -1.58166190573227627425012542516924440860748291015625p-387 {- 2619572341911492 -387 (-5.01771e-117)}
; 1.522357908492083300444619453628547489643096923828125p273 + -1.58166190573227627425012542516924440860748291015625p-387 == 1.5223579084920830784000145285972394049167633056640625p273
; [HW: 1.5223579084920830784000145285972394049167633056640625p273] 

; mpf : + 2352490882038977 273
; mpfd: + 2352490882038977 273 (2.3105e+082) class: Pos. norm. non-zero
; hwf : + 2352490882038977 273 (2.3105e+082) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100010000 #b1000010110111001001111110111010111000111110011000010)))
(assert (= y (fp #b1 #b01001111100 #b1001010011100111110010110110111001110010111111000100)))
(assert (= r (fp #b0 #b10100010000 #b1000010110111001001111110111010111000111110011000001)))
(assert  (not (= (fp.add roundTowardNegative x y) r)))
(check-sat)
(exit)
