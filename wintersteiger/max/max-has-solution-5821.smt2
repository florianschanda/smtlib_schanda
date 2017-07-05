(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9472915836407540535191174058127216994762420654296875p46 {+ 4266222023095707 46 (1.37028e+014)}
; Y = -1.2966510342462473914793008589185774326324462890625p481 {- 1335997487290472 481 (-8.09564e+144)}
; 1.9472915836407540535191174058127216994762420654296875p46 M -1.2966510342462473914793008589185774326324462890625p481 == 1.9472915836407540535191174058127216994762420654296875p46
; [HW: 1.9472915836407540535191174058127216994762420654296875p46] 

; mpf : + 4266222023095707 46
; mpfd: + 4266222023095707 46 (1.37028e+014) class: Pos. norm. non-zero
; hwf : + 4266222023095707 46 (1.37028e+014) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000101101 #b1111001010000001101100111000001110000011010110011011)))
(assert (= y (fp #b1 #b10111100000 #b0100101111110001010100100111101001101001100001101000)))
(assert (= r (fp #b0 #b10000101101 #b1111001010000001101100111000001110000011010110011011)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
