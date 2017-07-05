(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1593619361962612668293104434269480407238006591796875p-931 {- 717702356470523 -931 (-6.38694e-281)}
; Y = 1.6946485074580872609573134468519128859043121337890625p-556 {+ 3128418759341713 -556 (7.18459e-168)}
; -1.1593619361962612668293104434269480407238006591796875p-931 > 1.6946485074580872609573134468519128859043121337890625p-556 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001011100 #b0010100011001011111100011010000000110000101011111011)))
(assert (= y (fp #b0 #b00111010011 #b1011000111010100011111000000110110111111011010010001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
