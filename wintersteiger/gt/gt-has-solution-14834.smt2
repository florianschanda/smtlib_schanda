(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3412313103954336401812952317413873970508575439453125p-804 {+ 1536769202344021 -804 (1.25715e-242)}
; Y = 1.8231543013840780798062723988550715148448944091796875p141 {+ 3707157404981755 141 (5.08221e+042)}
; 1.3412313103954336401812952317413873970508575439453125p-804 > 1.8231543013840780798062723988550715148448944091796875p141 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011011011 #b0101011101011010111011110110011010000101000001010101)))
(assert (= y (fp #b0 #b10010001100 #b1101001010111010001111011000010000000001100111111011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
