(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.68577724385204419377259910106658935546875p-216 {- 3088466139871232 -216 (-1.60074e-065)}
; Y = -1.4401305823777377224104156994144432246685028076171875p-591 {- 1982171926790739 -591 (-1.77695e-178)}
; -1.68577724385204419377259910106658935546875p-216 > -1.4401305823777377224104156994144432246685028076171875p-591 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100100111 #b1010111110001111000110001111001010101111100000000000)))
(assert (= y (fp #b1 #b00110110000 #b0111000010101100011001011101100101001000001001010011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
