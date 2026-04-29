(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8712821680180702355045241347397677600383758544921875p-819 {+ 3923906047220739 -819 (5.3527e-247)}
; Y = -1.5771530862113534166013550930074416100978851318359375p-215 {- 2599266423997183 -215 (-2.99519e-065)}
; 1.8712821680180702355045241347397677600383758544921875p-819 < -1.5771530862113534166013550930074416100978851318359375p-215 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011001100 #b1101111100001100010110010010000100111001110000000011)))
(assert (= y (fp #b1 #b01100101000 #b1001001111000000010011011111111000010000001011111111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
