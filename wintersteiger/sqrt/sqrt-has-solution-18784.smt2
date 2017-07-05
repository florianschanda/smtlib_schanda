(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2217326030592678964836750310496427118778228759765625p616 {+ 998594868513609 616 (3.32241e+185)}
; 1.2217326030592678964836750310496427118778228759765625p616 S == 1.10532013600552314613878479576669633388519287109375p308
; [HW: 1.10532013600552314613878479576669633388519287109375p308] 

; mpf : + 474319725269084 308
; mpfd: + 474319725269084 308 (5.76404e+092) class: Pos. norm. non-zero
; hwf : + 474319725269084 308 (5.76404e+092) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001100111 #b0011100011000011011101111100011010011000101101001001)))
(assert (= r (fp #b0 #b10100110011 #b0001101011110110010000101010101111000001000001011100)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
