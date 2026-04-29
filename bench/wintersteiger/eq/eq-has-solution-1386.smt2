(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0589438168151688035578672497649677097797393798828125p-919 {- 265459351444589 -919 (-2.3895e-277)}
; Y = -1.72950342270352575013703244621865451335906982421875p92 {- 3285391342653100 92 (-8.56409e+027)}
; -1.0589438168151688035578672497649677097797393798828125p-919 = -1.72950342270352575013703244621865451335906982421875p92 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001101000 #b0000111100010110111100010010010110000101110001101101)))
(assert (= y (fp #b1 #b10001011011 #b1011101011000000101111000111111011010100111010101100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
