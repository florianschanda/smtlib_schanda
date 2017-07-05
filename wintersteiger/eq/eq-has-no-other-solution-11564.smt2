(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1628860278981985043600388962659053504467010498046875p140 {- 733573454546187 140 (-1.62083e+042)}
; Y = 1.6474839001749241873540086089633405208587646484375p1009 {+ 2916008251556184 1009 (9.0383e+303)}
; -1.1628860278981985043600388962659053504467010498046875p140 = 1.6474839001749241873540086089633405208587646484375p1009 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010001011 #b0010100110110010111001100001001011001100010100001011)))
(assert (= y (fp #b0 #b11111110000 #b1010010111000001100000010011111111110000000101011000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
