(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4796046713099373359767696456401608884334564208984375p-230 {- 2159947418996583 -230 (-8.57525e-070)}
; Y = 1.5682178192596953891779776313342154026031494140625p-590 {+ 2559025559083240 -590 (3.86998e-178)}
; -1.4796046713099373359767696456401608884334564208984375p-230 * 1.5682178192596953891779776313342154026031494140625p-590 == -1.160171205504064051439172544633038341999053955078125p-819
; [HW: -1.160171205504064051439172544633038341999053955078125p-819] 

; mpf : - 721346981423586 -819
; mpfd: - 721346981423586 -819 (-3.31861e-247) class: Neg. norm. non-zero
; hwf : - 721346981423586 -819 (-3.31861e-247) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100011001 #b0111101011000111010111110010101001001000111101100111)))
(assert (= y (fp #b0 #b00110110001 #b1001000101110110101110010001011010111001100011101000)))
(assert (= r (fp #b1 #b00011001100 #b0010100100000000111110101110100101100110100111100010)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
