(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.732172665297850411292301942012272775173187255859375p33 {+ 3297412542606262 33 (1.48792e+010)}
; 1.732172665297850411292301942012272775173187255859375p33 S == 1.8612751893784273971022003024700097739696502685546875p16
; [HW: 1.8612751893784273971022003024700097739696502685546875p16] 

; mpf : + 3878838621948139 16
; mpfd: + 3878838621948139 16 (121981) class: Pos. norm. non-zero
; hwf : + 3878838621948139 16 (121981) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000100000 #b1011101101101111101010101111010001111010101110110110)))
(assert (= r (fp #b0 #b10000001111 #b1101110001111100100001111110001100111100100011101011)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
