(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.283117499203789702022504570777527987957000732421875p-534 {+ 1275047863916254 -534 (2.28165e-161)}
; Y = 1.4874624103673255159918653589556924998760223388671875p-76 {+ 2195335529687411 -76 (1.96864e-023)}
; 1.283117499203789702022504570777527987957000732421875p-534 > 1.4874624103673255159918653589556924998760223388671875p-76 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111101001 #b0100100001111010011000110111000000000001011011011110)))
(assert (= y (fp #b0 #b01110110011 #b0111110011001010010101100010011010001110100101110011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
