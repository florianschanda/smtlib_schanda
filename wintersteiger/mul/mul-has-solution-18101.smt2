(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5845383409443127842308740582666359841823577880859375p-726 {+ 2632526654460575 -726 (4.48875e-219)}
; Y = -1.6630868611866753692396514452411793172359466552734375p309 {- 2986277740954583 309 (-1.73454e+093)}
; 1.5845383409443127842308740582666359841823577880859375p-726 * -1.6630868611866753692396514452411793172359466552734375p309 == -1.31761244793550957865591044537723064422607421875p-416
; [HW: -1.31761244793550957865591044537723064422607421875p-416] 

; mpf : - 1430399302170592 -416
; mpfd: - 1430399302170592 -416 (-7.78591e-126) class: Neg. norm. non-zero
; hwf : - 1430399302170592 -416 (-7.78591e-126) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100101001 #b1001010110100100010011100000000110011101001010011111)))
(assert (= y (fp #b1 #b10100110100 #b1010100111000000000011110111111100110100001111010111)))
(assert (= r (fp #b1 #b01001011111 #b0101000101001111000011001010010010101111011111100000)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
