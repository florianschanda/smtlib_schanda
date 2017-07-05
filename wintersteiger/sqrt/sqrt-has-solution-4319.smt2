(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8295172224026774454586075080442242324352264404296875p-91 {+ 3735813453710107 -91 (7.38936e-028)}
; 1.8295172224026774454586075080442242324352264404296875p-91 S == 1.9128602784326289576455337737570516765117645263671875p-46
; [HW: 1.9128602784326289576455337737570516765117645263671875p-46] 

; mpf : + 4111157209790515 -46
; mpfd: + 4111157209790515 -46 (2.71834e-014) class: Pos. norm. non-zero
; hwf : + 4111157209790515 -46 (2.71834e-014) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110100100 #b1101010001011011001111011001110110110000001100011011)))
(assert (= r (fp #b0 #b01111010001 #b1110100110110001001101100001000110101111100000110011)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
