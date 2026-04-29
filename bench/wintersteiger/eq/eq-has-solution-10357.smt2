(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.693264641679165460885769789456389844417572021484375p-375 {- 3122186381935430 -375 (-2.20027e-113)}
; Y = -1.7258102836233397692211610774393193423748016357421875p-420 {- 3268758922867747 -420 (-6.37375e-127)}
; -1.693264641679165460885769789456389844417572021484375p-375 = -1.7258102836233397692211610774393193423748016357421875p-420 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010001000 #b1011000101111001110010101010001101111100001101000110)))
(assert (= y (fp #b1 #b01001011011 #b1011100111001110101100111110011101000011010000100011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
