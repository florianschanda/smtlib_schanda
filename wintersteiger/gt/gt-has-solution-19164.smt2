(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5547394728082457593387744054780341684818267822265625p-311 {+ 2498324483026921 -311 (3.72674e-094)}
; Y = -1.48663768093927561864120434620417654514312744140625p-629 {- 2191621278542564 -629 (-6.67326e-190)}
; 1.5547394728082457593387744054780341684818267822265625p-311 > -1.48663768093927561864120434620417654514312744140625p-629 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011001000 #b1000111000000011011001111111010110000010111111101001)))
(assert (= y (fp #b1 #b00110001010 #b0111110010010100010010010111110010100010101011100100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
