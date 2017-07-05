(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.04243969397919844510624898248352110385894775390625p806 {+ 191131389990436 806 (4.44864e+242)}
; Y = 1.30035273281804553135998503421433269977569580078125p-145 {+ 1352668455599060 -145 (2.91549e-044)}
; Z = 1.4266120346681667729882292405818589031696319580078125p-944 {+ 1921289800363325 -944 (9.59378e-285)}
; 1.04243969397919844510624898248352110385894775390625p806 x 1.30035273281804553135998503421433269977569580078125p-145 1.4266120346681667729882292405818589031696319580078125p-944 == 1.35553930486385798559467730228789150714874267578125p661
; [HW: 1.35553930486385798559467730228789150714874267578125p661] 

; mpf : + 1601206680900436 661
; mpfd: + 1601206680900436 661 (1.297e+199) class: Pos. norm. non-zero
; hwf : + 1601206680900436 661 (1.297e+199) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100100101 #b0000101011011101010100111110100110110001011000100100)))
(assert (= y (fp #b0 #b01101101110 #b0100110011100011111010101010110010110111101111010100)))
(assert (= z (fp #b0 #b00001001111 #b0110110100110110011100100100000011111010110100111101)))
(assert (= r (fp #b0 #b11010010100 #b0101101100000100100111111011011011010101001101010100)))
(assert (= (fp.fma roundTowardPositive x y z) r))
(check-sat)
(exit)
