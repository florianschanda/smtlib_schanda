(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2868985040194036439942237848299555480480194091796875p-901 {+ 1292075995794939 -901 (7.61234e-272)}
; 1.2868985040194036439942237848299555480480194091796875p-901 | == 1.2868985040194036439942237848299555480480194091796875p-901
; [HW: 1.2868985040194036439942237848299555480480194091796875p-901] 

; mpf : + 1292075995794939 -901
; mpfd: + 1292075995794939 -901 (7.61234e-272) class: Pos. norm. non-zero
; hwf : + 1292075995794939 -901 (7.61234e-272) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001111010 #b0100100101110010001011100010110000001000110111111011)))
(assert (= r (fp #b0 #b00001111010 #b0100100101110010001011100010110000001000110111111011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
