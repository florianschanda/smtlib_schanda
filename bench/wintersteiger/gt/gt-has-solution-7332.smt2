(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7256171723113673532878920013899914920330047607421875p-960 {- 3267889226835107 -960 (-1.77071e-289)}
; Y = -1.244445421990074240881085643195547163486480712890625p660 {- 1100884311386922 660 (-5.95351e+198)}
; -1.7256171723113673532878920013899914920330047607421875p-960 > -1.244445421990074240881085643195547163486480712890625p660 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000111111 #b1011100111000010000011000000100001111110010010100011)))
(assert (= y (fp #b1 #b11010010011 #b0011111010010011111110011010010100011010101100101010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
