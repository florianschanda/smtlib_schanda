(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4446260878910368585792411977308802306652069091796875p-497 {+ 2002417883745275 -497 (3.53059e-150)}
; Y = 1.6721001176599659121535523809143342077732086181640625p803 {+ 3026869839449089 803 (8.91967e+241)}
; 1.4446260878910368585792411977308802306652069091796875p-497 / 1.6721001176599659121535523809143342077732086181640625p803 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000001110 #b0111000111010011000000111110101001110000101111111011)))
(assert (= y (fp #b0 #b11100100010 #b1010110000001110110000001101100011111100110000000001)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
