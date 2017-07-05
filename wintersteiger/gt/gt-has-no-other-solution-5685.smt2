(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.565693527557742381617345017730258405208587646484375p-877 {- 2547657159914950 -877 (-1.55382e-264)}
; Y = -1.90843987894802058491450225119479000568389892578125p-318 {- 4091249500318804 -318 (-3.57388e-096)}
; -1.565693527557742381617345017730258405208587646484375p-877 > -1.90843987894802058491450225119479000568389892578125p-318 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010010010 #b1001000011010001010010101000000001101011010111000110)))
(assert (= y (fp #b1 #b01011000001 #b1110100010001111100001000001001001110110110001010100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
