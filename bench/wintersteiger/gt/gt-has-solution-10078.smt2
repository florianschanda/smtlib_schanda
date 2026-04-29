(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5556048463314076091279503089026547968387603759765625p314 {+ 2502221778903369 314 (5.1918e+094)}
; Y = -1.8854301019832451213886770347016863524913787841796875p23 {- 3987622677354363 23 (-1.58161e+007)}
; 1.5556048463314076091279503089026547968387603759765625p314 > -1.8854301019832451213886770347016863524913787841796875p23 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100111001 #b1000111000111100000111101000010001111110000101001001)))
(assert (= y (fp #b1 #b10000010110 #b1110001010101011100011000001001011101001011101111011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
