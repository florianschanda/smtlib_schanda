(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.54763017213559095353048178367316722869873046875p328 {+ 2466307039166688 328 (8.46264e+098)}
; Y = -1.6182121082058109617918262301827780902385711669921875p38 {- 2784179820151619 38 (-4.44811e+011)}
; 1.54763017213559095353048178367316722869873046875p328 / -1.6182121082058109617918262301827780902385711669921875p38 == -1.91276553214216438192352143232710659503936767578125p289
; [HW: -1.91276553214216438192352143232710659503936767578125p289] 

; mpf : - 4110730510432084 289
; mpfd: - 4110730510432084 289 (-1.90253e+087) class: Neg. norm. non-zero
; hwf : - 4110730510432084 289 (-1.90253e+087) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101000111 #b1000110000110001011111011010111110100000000011100000)))
(assert (= y (fp #b1 #b10000100101 #b1001111001000011001001100001001010111100001101000011)))
(assert (= r (fp #b1 #b10100100000 #b1110100110101011000000000111110101110111011101010100)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
