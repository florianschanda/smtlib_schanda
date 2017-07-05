(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9102442868278133314419164889841340482234954833984375p-969 {+ 4099375830973863 -969 (3.82845e-292)}
; Y = -1.9176005506311748494141511400812305510044097900390625p529 {- 4132505497897521 529 (-3.36997e+159)}
; 1.9102442868278133314419164889841340482234954833984375p-969 - -1.9176005506311748494141511400812305510044097900390625p529 == 1.9176005506311748494141511400812305510044097900390625p529
; [HW: 1.9176005506311748494141511400812305510044097900390625p529] 

; mpf : + 4132505497897521 529
; mpfd: + 4132505497897521 529 (3.36997e+159) class: Pos. norm. non-zero
; hwf : + 4132505497897521 529 (3.36997e+159) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000110110 #b1110100100000101110001010000001101001011110110100111)))
(assert (= y (fp #b1 #b11000010000 #b1110101011100111110111101010001111000000101000110001)))
(assert (= r (fp #b0 #b11000010000 #b1110101011100111110111101010001111000000101000110001)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)
