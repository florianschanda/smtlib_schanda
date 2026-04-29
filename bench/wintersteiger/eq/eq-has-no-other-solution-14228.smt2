(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4842384638045424960495211053057573735713958740234375p741 {- 2180816165148599 741 (-1.71684e+223)}
; Y = -1.72327786400550575507395478780381381511688232421875p973 {- 3257353918820524 973 (-1.37575e+293)}
; -1.4842384638045424960495211053057573735713958740234375p741 = -1.72327786400550575507395478780381381511688232421875p973 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011100100 #b0111101111110111000011010100110110000001011110110111)))
(assert (= y (fp #b1 #b11111001100 #b1011100100101000101111001111001111010011000010101100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
