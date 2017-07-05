(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0234014603646759411503808223642408847808837890625p876 {- 105390808178280 876 (-5.15611e+263)}
; Y = -1.8458858174949390740238186481292359530925750732421875p344 {- 3809531052468195 344 (-6.6149e+103)}
; -1.0234014603646759411503808223642408847808837890625p876 > -1.8458858174949390740238186481292359530925750732421875p344 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101101011 #b0000010111111101101000110101101011110001111001101000)))
(assert (= y (fp #b1 #b10101010111 #b1101100010001011111110010001001001001010011111100011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
