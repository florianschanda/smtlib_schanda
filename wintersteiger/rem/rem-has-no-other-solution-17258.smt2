(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6219984198796080221427473588846623897552490234375p-375 {- 2801231851994840 -375 (-2.10767e-113)}
; Y = 1.151578047109716340656859756563790142536163330078125p-1004 {+ 682646836480866 -1004 (6.71704e-303)}
; -1.6219984198796080221427473588846623897552490234375p-375 % 1.151578047109716340656859756563790142536163330078125p-1004 == -1.739153673919958009719266556203365325927734375p-1005
; [HW: -1.739153673919958009719266556203365325927734375p-1005] 

; mpf : - 3328852210435456 -1005
; mpfd: - 3328852210435456 -1005 (-5.07215e-303) class: Neg. norm. non-zero
; hwf : - 3328852210435456 -1005 (-5.07215e-303) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010001000 #b1001111100111011010010011101011110001011111011011000)))
(assert (= y (fp #b0 #b00000010011 #b0010011011001101110100011010001100100000101101100010)))
(assert (= r (fp #b0 #b00000010001 #x20c4ecdc1a288)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
