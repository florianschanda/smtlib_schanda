(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.34373861702703578657747129909694194793701171875p-833 {+ 1548061107555808 -833 (2.346e-251)}
; 1.34373861702703578657747129909694194793701171875p-833 S == 1.6393526875123825004010313932667486369609832763671875p-417
; [HW: 1.6393526875123825004010313932667486369609832763671875p-417] 

; mpf : + 2879388525239091 -417
; mpfd: + 2879388525239091 -417 (4.84355e-126) class: Pos. norm. non-zero
; hwf : + 2879388525239091 -417 (4.84355e-126) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010111110 #b0101011111111111010000010000011010000000110111100000)))
(assert (= r (fp #b0 #b01001011110 #b1010001110101100100111100010001101111001101100110011)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
