(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8930442995915195414369236459606327116489410400390625p852 {- 4021913974865713 852 (-5.68482e+256)}
; Y = 1.6037474609629980282221595189184881746768951416015625p-389 {+ 2719036840218841 -389 (1.27194e-117)}
; -1.8930442995915195414369236459606327116489410400390625p852 = 1.6037474609629980282221595189184881746768951416015625p-389 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101010011 #b1110010010011110100011010001110010011111111100110001)))
(assert (= y (fp #b0 #b01001111010 #b1001101010001111001100011000111111100001000011011001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
