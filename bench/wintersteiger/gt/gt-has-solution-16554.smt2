(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3454007405119410289984216433367691934108734130859375p-819 {+ 1555546646263071 -819 (3.84844e-247)}
; Y = -1.69052821038568001910107341245748102664947509765625p-439 {- 3109862590981764 -439 (-1.19084e-132)}
; 1.3454007405119410289984216433367691934108734130859375p-819 > -1.69052821038568001910107341245748102664947509765625p-439 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011001100 #b0101100001101100001011101101010010000011010100011111)))
(assert (= y (fp #b1 #b01001001000 #b1011000011000110011101001111000010010010011010000100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
