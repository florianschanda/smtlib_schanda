(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.690639649710760306078327630530111491680145263671875p-648 {+ 3110364469084670 -648 (1.44748e-195)}
; Y = 1.13672026302850337486916032503359019756317138671875p227 {+ 615733325629164 227 (2.45167e+068)}
; 1.690639649710760306078327630530111491680145263671875p-648 = 1.13672026302850337486916032503359019756317138671875p227 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101110111 #b1011000011001101110000101001010011010100000111111110)))
(assert (= y (fp #b0 #b10011100010 #b0010001100000000000110010110001001101000011011101100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
