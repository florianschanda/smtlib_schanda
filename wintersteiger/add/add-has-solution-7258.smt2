(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2271461921261614946843110374175012111663818359375p629 {+ 1022975506218008 629 (2.73378e+189)}
; Y = -1.2458424598875394995189935798407532274723052978515625p-318 {- 1107176010741369 -318 (-2.33305e-096)}
; 1.2271461921261614946843110374175012111663818359375p629 + -1.2458424598875394995189935798407532274723052978515625p-318 == 1.2271461921261612726397061123861931264400482177734375p629
; [HW: 1.2271461921261612726397061123861931264400482177734375p629] 

; mpf : + 1022975506218007 629
; mpfd: + 1022975506218007 629 (2.73378e+189) class: Pos. norm. non-zero
; hwf : + 1022975506218007 629 (2.73378e+189) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001110100 #b0011101000100110010000001011101010010111110000011000)))
(assert (= y (fp #b1 #b01011000001 #b0011111011101111100010000000110100101111011001111001)))
(assert (= r (fp #b0 #b11001110100 #b0011101000100110010000001011101010010111110000010111)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)
