(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.231755964259935165472370499628596007823944091796875p-148 {+ 1043736074281934 -148 (3.45212e-045)}
; 1.231755964259935165472370499628596007823944091796875p-148 S == 1.1098450181263757041705275696585886180400848388671875p-74
; [HW: 1.1098450181263757041705275696585886180400848388671875p-74] 

; mpf : + 494697982702451 -74
; mpfd: + 494697982702451 -74 (5.87547e-023) class: Pos. norm. non-zero
; hwf : + 494697982702451 -74 (5.87547e-023) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101101011 #b0011101101010100010110111101111100100110001111001110)))
(assert (= r (fp #b0 #b01110110101 #b0001110000011110110011011001100001111011001101110011)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
