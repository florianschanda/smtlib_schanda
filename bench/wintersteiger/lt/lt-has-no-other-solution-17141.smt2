(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8927446924639814707092000389820896089076995849609375p-391 {+ 4020564664317775 -391 (3.75287e-118)}
; Y = 1.815996357141157258041630484513007104396820068359375p-278 {+ 3674920889956598 -278 (3.73918e-084)}
; 1.8927446924639814707092000389820896089076995849609375p-391 < 1.815996357141157258041630484513007104396820068359375p-278 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001111000 #b1110010010001010111010101000100111001111011101001111)))
(assert (= y (fp #b0 #b01011101001 #b1101000011100101001000110010001110010011100011110110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
