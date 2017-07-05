(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9859776203493939572553017569589428603649139404296875p-945 {- 4440448443601179 -945 (-6.67772e-285)}
; Y = -1.8949931908675765601657303704996593296527862548828125p-447 {- 4030691000890349 -447 (-5.21434e-135)}
; -1.9859776203493939572553017569589428603649139404296875p-945 < -1.8949931908675765601657303704996593296527862548828125p-447 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001001110 #b1111110001101001000001111000000111111101000100011011)))
(assert (= y (fp #b1 #b01001000000 #b1110010100011110010001100001010011101011001111101101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
