(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5037743042655762337744818069040775299072265625p-519 {- 2268797768969280 -519 (-8.76224e-157)}
; Y = -1.598473913040663330065171976457349956035614013671875p-101 {- 2695286891760894 -101 (-6.30487e-031)}
; -1.5037743042655762337744818069040775299072265625p-519 / -1.598473913040663330065171976457349956035614013671875p-101 == 1.8815124751145335668667257777997292578220367431640625p-419
; [HW: 1.8815124751145335668667257777997292578220367431640625p-419] 

; mpf : + 3969979254448257 -419
; mpfd: + 3969979254448257 -419 (1.38976e-126) class: Pos. norm. non-zero
; hwf : + 3969979254448257 -419 (1.38976e-126) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111111000 #b1000000011110111010110100101000101100010110001000000)))
(assert (= y (fp #b1 #b01110011010 #b1001100100110101100101100001110000000100110011111110)))
(assert (= r (fp #b0 #b01001011100 #b1110000110101010110011010011001110100010000010000001)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)
