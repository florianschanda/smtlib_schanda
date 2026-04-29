(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1463382304716300819080743167432956397533416748046875p-619 {- 659048800222091 -619 (-5.26921e-187)}
; -1.1463382304716300819080743167432956397533416748046875p-619 | == 1.1463382304716300819080743167432956397533416748046875p-619
; [HW: 1.1463382304716300819080743167432956397533416748046875p-619] 

; mpf : + 659048800222091 -619
; mpfd: + 659048800222091 -619 (5.26921e-187) class: Pos. norm. non-zero
; hwf : + 659048800222091 -619 (5.26921e-187) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110010100 #b0010010101110110011011000001101000000111101110001011)))
(assert (= r (fp #b0 #b00110010100 #b0010010101110110011011000001101000000111101110001011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
