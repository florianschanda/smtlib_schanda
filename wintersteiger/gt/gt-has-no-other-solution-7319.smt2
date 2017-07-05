(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4399213783684097212045571723137982189655303955078125p-162 {+ 1981229755692285 -162 (2.46309e-049)}
; Y = -1.225281224877360131131354137323796749114990234375p-443 {- 1014576440411248 -443 (-5.39446e-134)}
; 1.4399213783684097212045571723137982189655303955078125p-162 > -1.225281224877360131131354137323796749114990234375p-443 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101011101 #b0111000010011110101011111111110011100111010011111101)))
(assert (= y (fp #b1 #b01001000100 #b0011100110101100000001111100010101000000010001110000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
