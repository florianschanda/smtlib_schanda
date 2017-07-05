(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.434437871614793191810122152674011886119842529296875p289 {- 1956534236720014 289 (-1.42676e+087)}
; Y = -1.5768044961767480049985579171334393322467803955078125p-955 {- 2597696514047229 -955 (-5.17764e-288)}
; -1.434437871614793191810122152674011886119842529296875p289 * -1.5768044961767480049985579171334393322467803955078125p-955 == 1.1309140427242054816048266729922033846378326416015625p-665
; [HW: 1.1309140427242054816048266729922033846378326416015625p-665] 

; mpf : + 589584434030297 -665
; mpfd: + 589584434030297 -665 (7.38724e-201) class: Pos. norm. non-zero
; hwf : + 589584434030297 -665 (7.38724e-201) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100100000 #b0110111100110111010100100000001010111010101110001110)))
(assert (= y (fp #b1 #b00001000100 #b1001001110101001011101011001111101000011110011111101)))
(assert (= r (fp #b0 #b00101100110 #b0010000110000011100101010010110000010110011011011001)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)
